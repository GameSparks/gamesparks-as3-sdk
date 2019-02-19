package com.gamesparks
{
	import com.adobe.serialization.json.JSON;
	import com.adobe.utils.StringUtil;
	import com.gamesparks.api.messages.GSMessageHandler;
	import com.gamesparks.sockets.GSSocket;
	import com.gamesparks.sockets.GSSocketExternal;
	import com.gamesparks.sockets.GSSocketGimite;
	
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.net.SharedObject;
	import flash.system.Capabilities;
	import flash.system.System;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.Dictionary;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import mx.utils.UIDUtil;
	
	public class GS
	{
		import flash.utils.Timer;
		import flash.events.TimerEvent;	
		import com.gamesparks.api.requests.*;
		
		static private var _nextID:int = 0;
		
		public static var ignoreSecureSocket:Boolean = false;
		
		private var _id:int;
		
		//Internals
		protected var _itemsToSend:Array = new Array();
		protected var _persistentItemsToSend:Array = new Array();
		private var _pendingRequests:Dictionary = new Dictionary();
		
		private var _queueTimeout:uint;
		private var _persistentQueueTimeout:uint;
		
		protected var _authToken:String = "0";
		private var _userId:String;
		private var _persistantQueue_playerId:String = "";
		private var _sessionId:String;
		private var _initialised:Boolean = false;
		private var _initialising:Boolean = false;
		private var _disabledSharedObject:Boolean = false;
		
		protected var _available:Boolean = false;
		protected var _authenticated:Boolean = false;
		protected var _durableQueueDirty:Boolean = false;
		protected var _durableQueuePaused:Boolean = false;
		
		private var _requestBuilder:GSRequestBuilder;
		private var _messageHandler:GSMessageHandler = new GSMessageHandler();
		
		private var _messageCallback:Function;
		private var _availabilityCallback:Function;
		private var _authenticatedCallback:Function;
		private var _messageHandlerCallback:Function;
		private var _liveServers:Boolean = false;
		private var _apiSecret:String = "";
		private var _apiKey:String = "";
		private var _apiCredential:String = "";
		private var _url:String;
		private var _lbUrl:String;
		
		protected var _socket:GSSocket;
		private var _logger:Function;
		
		private var _stopped:Boolean = false;
		
		private var _stage:Stage;
		private var _overlay:Sprite = new Sprite();
		private var _text:TextField = new TextField();
		private var _format:TextFormat = new TextFormat(); 
		
		private var _webSocketErrorCount:Number = 0;
		
		private var _deviceOS:String = "";
		private var _deviceID:String = "";
		private var _platform:String = Capabilities.manufacturer;
		private static const _SDK:String = "AS3";
		private static const _VERSION:String = "1.5.3";
		
		public function GS(stage:Stage = null) 
		{
			_id = _nextID ++;
			
			_stage = stage;
			
			if (_stage != null)
			{
				_stage.addChild(_overlay);	
				
				_stage.addEventListener(Event.RESIZE, resizeListener); 
			}
			
			_requestBuilder = new GSRequestBuilder(this);
			
			var data:Object = new Object();
			var os:String = Capabilities.os;
			var osArray:Array = os.split(" "); 
			
			if (osArray[0] == "Windows") 
			{
				_deviceOS = "WINDOWS";
			}
			else if (osArray[0] == "Mac") 
			{
				_deviceOS = "MACOS";
			}
			else if (osArray[0] == "iPhone") 
			{
				_deviceOS = "IOS";
			}
			else
			{
				_deviceOS = osArray[0];
				_deviceOS.toUpperCase();
			}
			
			loadSettings();
		}
		
		private function resizeListener(e:Event):void
		{
			_text.y = _stage.stageHeight - _text.textHeight - 5;
			_text.width = _stage.stageWidth;
		}
		
		public function setAvailabilityCallback(value:Function):GS
		{
			_availabilityCallback = value;
			
			return this;
		}
		
		public function setAuthenticatedCallback(value:Function):GS
		{
			_authenticatedCallback = value;
			
			return this;
		}
		
		public function setMessageHandlerCallback(value:Function):GS
		{
			_messageHandlerCallback = value;
			
			return this;
		}
		
		public function setUseLiveServices(value:Boolean):GS
		{
			_liveServers = value;
			
			buildServiceUrl();
			
			return this;
		}

		public function setApiSecret(value:String):GS
		{
			_apiSecret = value;
			
			buildServiceUrl();
			
			return this;
		}
		
		public function setApiKey(value:String):GS
		{
			_apiKey = value;
			
			buildServiceUrl();
			
			return this;
		}
	
		public function setApiCredential(value:String):GS
		{
			_apiCredential = value;
			
			buildServiceUrl();
			
			return this;
		}

		public function setLogger(value:Function):GS
		{
			_logger = value;
			
			return this;
		}
		
		public function connect():void
		{
			_initialising = true;
			_stopped = false;
			
			if (_webSocketErrorCount > 5) 
			{
				_webSocketErrorCount = 0;
				
				//com.gamesparks.sockets.GSSocketSelector.reset();
				
				// reset the url
				_url = _lbUrl;
			}
			
			_socket = new com.gamesparks.sockets.GSSocketSelector(log, ignoreSecureSocket);
			_socket.Connect(_url, handleWebSocketOpen, handleWebSocketClosed, handleWebSocketMessage, handleWebSocketError);
			
			log("*** GameSparks SDK v" + _VERSION + " connecting to " + _url + " " + _socket.GetName());
			
			if (_stage != null)
			{
				if (_text.stage)
				{
					_text.parent.removeChild(_text);
				}
				
				if (_liveServers == false)
				{	
					_format.color = 0xdddddd;
					_format.size = 18; 
					
					_text.text = "GameSparks Preview mode v" + _VERSION;
					_text.setTextFormat(_format);
					_text.y = _stage.stageHeight - _text.textHeight - 5;
					_text.width = _stage.stageWidth;
					
					_overlay.addChild(_text);
					_overlay.mouseEnabled = false;
					_overlay.mouseChildren = false;
				}
			}
		}
		
		private function initialisePersistentQueue():void 
		{
			if (_persistantQueue_playerId == _userId) 
			{
				return;
			}
			
			var previous_durableQueuePaused:Boolean = _durableQueuePaused;
			
			_durableQueuePaused = true;
			
			var queueArray:Array = new Array();
			var queueString:String = loadPersistentQueue();
			
			if (queueString != null && queueString.length > 0)
			{
				var lines:Array = queueString.split(/\n/);
				
				for each (var line:String in lines)
				{
					if (StringUtil.trim(line).length > 0)
					{
						var request:GSRequest = stringToRequest(line);
						
						if (request != null)
						{
							queueArray.push(request);
						}		
					}
				}
			}
			
			_persistentItemsToSend = queueArray;
			
			_persistantQueue_playerId = _userId;
			
			_durableQueuePaused = previous_durableQueuePaused;
			
			log("_persistantQueue COUNT: " + _persistentItemsToSend.length);
		}
		
		private function writeDurableQueueIfDirty():void
		{
			if (_durableQueueDirty)
			{
				_durableQueueDirty = false;
				
				var lines:String = "";
			
				for each (var request:GSRequest in _persistentItemsToSend)
				{
					var json:String = com.adobe.serialization.json.JSON.encode(request.getData());
					var queuedItem:Object = new Object();
					
					//queuedItem.ct = request.getTimeoutSeconds();
					queuedItem.rq = json;
					queuedItem.sq = getHmac(json);
					
					var line:String = com.adobe.serialization.json.JSON.encode(queuedItem);
					
					lines += line + "\n";
				}
				
				savePersistentQueue(lines);
			}
		}

		public function send(request:GSRequest):void
		{
			//Need to do the sending here
			if (request.durable)
			{
				sendDurable(request);
			}
			else
			{
				var data:Object = request.getData();
				
				data.requestId = String(new Date().time) + String(Math.floor(Math.random() * (10000)));
				
				_itemsToSend.push(request);
				
				setTimeout(timeoutRequest, request.getTimeoutSeconds()*1000, request);
				
				processQueues();
			}
		}
		
		public function sendDurable(request:GSRequest):void
		{
			request.durable = true;
			
			_persistentItemsToSend.push(request);
			
			_durableQueueDirty = true;
			
			processQueues();
		}
		
		private function timeoutRequest(request:GSRequest):void
		{
			//log("TIMEOUT!!");
			
			var index:int = _itemsToSend.indexOf(request);
			
			var wasWaiting:Boolean = false;
			
			if(index != -1)
			{
				_itemsToSend.splice(index, 1);
				wasWaiting = true;
				
			}
			
			if(_pendingRequests[request.getData().requestId] == request)
			{
				delete _pendingRequests[request.getData().requestId];
				wasWaiting = true;
			}
			
			if(wasWaiting && request.callback != null && !request.durable)
			{
				var timeout:Object = new Object();
				timeout.error = new Object();
				timeout.error.error = "timeout";
				timeout.requestId = request.getAttribute("requestId");
				request.callback(timeout);
			}		
		}
		
		public function disconnect():void
		{
			if (_queueTimeout)
			{
				clearTimeout(_queueTimeout);
				_queueTimeout = 0;
			}
			
			_stopped = true;
			
			if (_socket != null)
			{
				_socket.Dispose();
				_socket.Disconnect();
				_socket = null;
			}
			
			setAvailable(false);
			
			setAuthenticated(null);
		}
		
		public function reset():void
		{
			disconnect();
			
			_authToken = "0";
			_userId = null;
			_sessionId = null;
			
			connect();
		}
		
		public function getRequestBuilder():GSRequestBuilder
		{
			return _requestBuilder;
		}
		
		public function getMessageHandler():GSMessageHandler
		{
			return _messageHandler;
		}
		
		private function handleWebSocketClosed(socket:GSSocket):void
		{
			if (socket != _socket)
			{
				log("handleWebSocketClosed : Not the right socket " + socket.GetName());
				
				return;
			} 
			else
			{
				if (socket != null)
				{
					log("Websocket closed. initialised=" + _initialised + " initialising=" + _initialising + " stopped=" + _stopped + " " + socket.GetName());
				}
				else
				{
					log("Websocket closed. initialised=" + _initialised + " initialising=" + _initialising + " stopped=" + _stopped);
				}
				
				if (_queueTimeout)
				{
					clearTimeout(_queueTimeout);
					_queueTimeout = 0;
				}
				
				if (_socket != null)
				{
					_socket.Dispose();
					_socket.Disconnect();
					_socket = null;
				}
				
				setAvailable(false);
				
				if ((_initialised || _initialising) && !_stopped)
				{
					setTimeout(function():void {
						_webSocketErrorCount ++;
						
						connect();
					}, 5000);
				}
			}
		}
		
		private function handleWebSocketError(socket:GSSocket, error:String=""):void
		{
			if (socket != _socket)
			{
				log("handleWebSocketErr : Not the right socket " + socket.GetName());
				
				return;
			} 
			else 
			{			
				if (socket != null) 
				{
					//log("Websocket Error " + error + " resetting connect url to " + _lbUrl + " " + socket.GetName());
					log("Websocket Error " + error + " " + socket.GetName());
				}
				else
				{
					//log("Websocket Error " + error + " resetting connect url to " + _lbUrl);
					log("Websocket Error " + error);
				}
				
				//_url = _lbUrl;
				
				if ((_initialised || _initialising) && !_stopped && _socket != null && !_socket.Connected() && _socket.IsExternal()) 
				{	
					if (_queueTimeout)
					{
						clearTimeout(_queueTimeout);
						_queueTimeout = 0;
					}
					
					if (_socket != null)
					{
						_socket.Dispose();
						_socket.Disconnect();
						_socket = null;
					}
					
					setTimeout(function():void {
						_webSocketErrorCount ++;
						
						connect();
					}, 5000);
				}
			}
		}
		
		private function handleWebSocketOpen(socket:GSSocket):void
		{
			if (socket != _socket)
			{
				log("handleWebSocketOpen : Not the right socket " + socket.GetName());
				
				return;
			}
			
			log("Websocket Connected " + socket.GetName());
			
			_webSocketErrorCount = 0;
		}
		
		private function processQueues(event:TimerEvent=null):void
		{
			/*if (_socket != null)
			{
				log("processQueues " + _socket.Connected() + " " + _available);
			}
			else
			{
				log("processQueues " + _available);
			}*/
			
			if (_queueTimeout)
			{
				clearTimeout(_queueTimeout);
				_queueTimeout = 0;
			}
			
			if (_socket != null && _socket.Connected() && _available)
			{
				writeDurableQueueIfDirty();
				
				if (!_durableQueuePaused && _authenticated)
				{
					for each (var request:GSRequest in _persistentItemsToSend)
					{
						if (request.durableRetryTicks == 0 || request.durableRetryTicks < new Date().time)
						{
							try
							{
								request.durableRetryTicks = new Date().time + 10000;
								
								var data:Object = request.getData();
								
								data.requestId = "d_" + String(new Date().time) + String(Math.floor(Math.random() * (10000)));
								
								log(com.adobe.serialization.json.JSON.encode(data));
								
								_socket.Send(com.adobe.serialization.json.JSON.encode(data));
								_pendingRequests[data.requestId] = request;
							}
							catch (e:Error) 
							{
							}
						}
					}
				}
				else
				{
					_queueTimeout = setTimeout(processQueues, 500);
				}
				
				if (_itemsToSend.length > 0)
				{
					var request2:GSRequest = _itemsToSend.shift();
					
					try
					{
						var data2:Object = request2.getData();
						
						//data2.requestId = String(new Date().time) + String(Math.floor(Math.random() * (10000)));
						
						var packet:String = com.adobe.serialization.json.JSON.encode(data2);
						
						log(packet);
						
						_socket.Send(packet);
						_pendingRequests[data2.requestId] = request2;
					} 
					catch (e:Error) 
					{
						_itemsToSend.unshift(_itemsToSend);
		
						//return;
					}
				}
				
				if (_itemsToSend.length > 0 && _queueTimeout == 0)
				{
					_queueTimeout = setTimeout(processQueues, 500);
				}
			}
			else if (_socket != null)
			{		
				_queueTimeout = setTimeout(processQueues, 500);
			}
		}
		
		private function log(msg:String):void
		{
			if (_logger != null)
			{
				var date:Date = new Date();
				
				_logger(date.hours + ":" + date.minutes + ":" + date.seconds + "." + date.milliseconds + "  id: " + _id + "   " + msg);
			}
		}
		
		private function loadSettings():void 
		{
			if (_disabledSharedObject)
			{
				if (_deviceID.length == 0) 
				{
					try 
					{
						_deviceID = UIDUtil.createUID();
					}
					catch (e:Error)
					{
						_deviceID = new Date().time + "" + int(Math.random() * int.MAX_VALUE);
					}
				}
				
				return;	
			}
			
			try
			{
				var sharedObject:SharedObject = SharedObject.getLocal('settings');
				
				if (sharedObject.data.authToken != null && sharedObject.data.authToken != "0")
				{
					_authToken = sharedObject.data.authToken;
				}
				
				if (sharedObject.data.deviceID != null && sharedObject.data.deviceID.length > 0) 
				{
					_deviceID = sharedObject.data.deviceID;
				}
				else
				{
					try 
					{
						_deviceID = UIDUtil.createUID();
					}
					catch (e:Error)
					{
						_deviceID = new Date().time + "" + int(Math.random() * int.MAX_VALUE);
					}
					
					saveSettings();
				}
			}
			catch (e:Error)
			{
				log("UNABLE TO LOAD SETTINGS");
			}
		}
		
		private function saveSettings():void 
		{
			if (_disabledSharedObject)
			{
				return;	
			}
			
			try
			{
				var sharedObject:SharedObject = SharedObject.getLocal('settings');
				
				sharedObject.data.deviceID = _deviceID;
				sharedObject.data.authToken = _authToken;
				
				sharedObject.flush();
			}
			catch (e:Error)
			{
				log("UNABLE TO SAVE SETTINGS");
			}
		}
		
		private function loadPersistentQueue():String 
		{	
			if (!_userId || _disabledSharedObject)
			{
				return null;
			}
			
			try
			{
				var sharedObject:SharedObject = SharedObject.getLocal(_userId);
				
				return sharedObject.data.durableRequests;
			}
			catch (e:Error)
			{
				log("UNABLE TO LOAD PERSISTENT QUEUE " + e);		
			}
			
			return null;
		}
		
		private function savePersistentQueue(queue:String):void 
		{
			if (!_userId || _disabledSharedObject)
			{
				return;
			}
			
			try
			{
				var sharedObject:SharedObject = SharedObject.getLocal(_userId);
				
				sharedObject.data.durableRequests = queue;
				
				sharedObject.flush();
			}
			catch (e:Error)
			{
				log("UNABLE TO SAVE PERSISTENT QUEUE " + e);
			}
		}
		
		protected function resetPersistentQueue():void
		{
			if (!_userId || _disabledSharedObject)
			{
				return;
			}
			
			try
			{
				var sharedObject:SharedObject = SharedObject.getLocal(_userId);
				
				sharedObject.clear();
			}
			catch (e:Error)
			{
			}
		}
		
		public function disableSharedObject(disable:Boolean):void
		{
			_disabledSharedObject = disable;
		}
		
		private function handleWebSocketMessage(message:String, socket:GSSocket):void
		{		
			log("handleWebSocketMessage" + message);
			
			var response:Object = com.adobe.serialization.json.JSON.decode(message);
			
			if (response.authToken)
			{
				_authToken = response.authToken;
				saveSettings();
				log("Got authtoken " + _authToken);
			}
			
			if (StringUtil.endsWith(response["@class"], "Response") && response.userId)
			{
				_userId = response.userId;
				
				initialisePersistentQueue();
				
				setAuthenticated(_userId);
			}
			
			if (response.connectUrl != null)
			{
				log("Changing connect url to " + response.connectUrl);
				
				if (_queueTimeout)
				{
					clearTimeout(_queueTimeout);
					_queueTimeout = 0;
				}
				
				_available = false;
				_authenticated = false;
				
				if (_socket != null)
				{
					_socket.Dispose();
					_socket.Disconnect();
					_socket = null;
				}
				
				_url = response.connectUrl;
				
				connect();
				
				return;
			}
			
			if (response.requestId && response.requestId != 0)
			{
				var request:GSRequest = _pendingRequests[response.requestId];
				
				delete _pendingRequests[response.requestId];
				
				if (request != null)
				{
					if (request.durableRetryTicks > 0)
					{
						//It's durable request, if it's a ClientError do nothing as it will be retried
						if (!StringUtil.endsWith(response["@class"], "ClientError"))
						{
							_durableQueueDirty = _persistentItemsToSend.splice(_persistentItemsToSend.indexOf(request), 1);
							
							writeDurableQueueIfDirty();
						}
					}
					
					if (request.callback != null)
					{
						request.callback(response);
					}
				}
				else
				{
					log("no pending request yet");
				}
			}
			else if (StringUtil.endsWith(response["@class"], "Message"))
			{
				if (_messageHandlerCallback != null)
				{
					_messageHandlerCallback(response);
				} 
				
				_messageHandler.handle(response);
			}
			else if (response["@class"] == ".AuthenticatedConnectResponse" && socket == this._socket)
			{
				if (response.error)
				{
					log("INCORRECT APIKEY / APISECRET")
					disconnect();
				}
				if (response.sessionId != null)
				{
					_sessionId = response.sessionId ;
				}
				
				if (response.nonce != null)
				{
					//Need to send auth here.
					var toSend:Object = new Object();
					toSend["@class"]=".AuthenticatedConnectRequest";
					
					toSend.hmac = getHmac(response.nonce); 
					
					toSend.os = _deviceOS;
					toSend.platform = _platform;
					toSend.deviceId = _deviceID;
					
					if (_authToken != "0")
					{
						toSend.authToken = _authToken;
					}
					if (_sessionId != null)
					{
						toSend.sessionId = _sessionId;
					}
					
					var snd:String = com.adobe.serialization.json.JSON.encode(toSend);
					
					log("sending:" + snd);
					
					if (_socket != null/* && _socket.Connected()*/)
					{
						_socket.Send(snd);
					}
					
					return;
				} 
				else if (response.connectUrl == null)
				{
					_initialised = true;
					_initialising = false;
					setAvailable(true);
					//processPersistentQueues();
					processQueues();
				}
			}
		}
		
		private function setAvailable(availability:Boolean):void
		{
			if(_available != availability)
			{
				_available = availability;
				
				if (_availabilityCallback != null)
				{
					_availabilityCallback(availability);
				}
			}
		}
		
		private function setAuthenticated(userId:String):void
		{
			if (userId)
			{
				_authenticated = true;
			}
			else
			{
				_authenticated = false;
			}
			if (_authenticatedCallback != null)
			{
				_authenticatedCallback(userId);
			} 
		}
		
		private function getHmac(nonce:String):String 
		{
			import com.hurlant.crypto.hash.HMAC;
			import com.hurlant.crypto.hash.SHA256;
			import com.hurlant.util.Base64;
			import com.hurlant.util.Hex;
			import flash.utils.ByteArray;
			
			var hmac256:HMAC = new HMAC(new SHA256);
			var secretBytes:ByteArray = Hex.toArray(Hex.fromString(_apiSecret)); 
			var authTokenBytes:ByteArray = Hex.toArray(Hex.fromString(nonce));
			
			return Base64.encodeByteArray(hmac256.compute(secretBytes, authTokenBytes));
		}
		
		private function stringToRequest(line:String):GSRequest
		{
			var parsed:Object = com.adobe.serialization.json.JSON.decode(line);	
			var json:String = parsed.rq;
			var signature:String = parsed.sq;
			var properSig:String = getHmac(json);
			
			if (properSig == signature)
			{
				return new GSRequest(this, com.adobe.serialization.json.JSON.decode(json));
			}
			
			return null;
		}
		
		private function buildServiceUrl():void
		{
			var index:int;
			var stage:String;
			var urlAddition:String = _apiKey;
			var credential:String;
			
			if (_liveServers)
			{
				stage = "live";
			}
			else
			{
				stage = "preview";
			}
			
			if (_apiCredential.length == 0)
			{
				credential = "device";
			}
			else
			{
				credential = _apiCredential;
			}
			
			index = _apiSecret.indexOf(":"); 
			if (index > 0)
			{
				credential = "secure";
			
				urlAddition = _apiSecret.substring(0, index) + "/" + urlAddition;
			}
			
			_url = "wss://" + stage + "-" + urlAddition + ".ws.gamesparks.net/ws/" + credential + "/" + urlAddition +
				"?deviceOS=" + _deviceOS + "&deviceID=" + _deviceID + "&SDK=" + _SDK;

			_lbUrl = _url;
		}
		
		public function isAvailable():Boolean
		{
			return _available;
		}
		
		public function isAuthenticated():Boolean
		{
			return _authenticated;	
		}
		
		public function getDeviceStats():GSData
		{
			var data:Object = new Object();
			var os:String = Capabilities.os;
			var osArray:Array = os.split(" "); 
			
			if (osArray[0] == "Windows") 
			{
				data["manufacturer"] = "Microsoft";
				if (osArray[1] == "CE" || osArray[1] == "SmartPhone" || osArray[1] == "PocketPC" || 
					osArray[1] == "CEPC" || osArray[1] == "Mobile")
				{
					data["model"] = "Smartphone";
				}
				else
				{
					data["model"] = "PC";
				}
				data["os.name"] = os;
				data["os.version"] = "Unknown";
			}
			else if (osArray[0] == "Mac") 
			{
				data["manufacturer"] = "Apple";
				data["model"] = "Unknown";
				data["os.name"] = "Mac OS X";
				data["os.version"] = osArray[2];
			}
			else if (osArray[0] == "iPhone") 
			{
				data["manufacturer"] = "Apple";
				data["model"] = os;
				data["os.name"] = "iPhone";
				data["os.version"] = "Unknown";
			}
			else
			{
				data["manufacturer"] = "Unknown";
				data["model"] = "Unknown";
				data["os.name"] = os;
				data["os.version"] = "Unknown";
			}
			
			data["memory"] = (uint)(System.totalMemory / 1024 / 1024) + " MB";
			data["cpu.cores"] = "0";
			data["cpu.vendor"] = Capabilities.cpuArchitecture;
			data["resolution"] = Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY;
			data["gssdk"] = _VERSION;
			data["engine"] = _SDK;
			data["engine.version"] = Capabilities.version;
			
			return new GSData(data);
		}
	}
}