package com.gamesparks.sockets
{
	import flash.external.ExternalInterface;
	import flash.system.Security;
	import flash.utils.setTimeout;
	
	import org.osmf.logging.Logger;

	public class GSSocketExternal implements GSSocket
	{
		static public var networkAvailable:Boolean = true;
		//static public var consecutiveExternalAttempts:int = 3;
		
		//Tracks how many timess this socket has faied
		//static private var consecutiveErrors:int = 0;
		
		static private var _nextID:int = 0;
		
		private static var _nextJsFunctionId:int = 0;
		
		private var instanceId:String;
		
		private var _connected:Boolean = false;
		private var _pingEnabled:Boolean = false;
		
		private var _onOpen:Function;
		private var _onClose:Function;
		private var _onMessage:Function;
		private var _onError:Function;
		
		private var _logger:Function;
		
		public function Dispose():void
		{
			_logger("dispose");
			
			ExternalInterface.addCallback("OnClose_" + instanceId, function():void {} );
			ExternalInterface.addCallback("OnOpen_" + instanceId, function():void {} );
			ExternalInterface.addCallback("OnMessage_" + instanceId, function():void {} );
			ExternalInterface.addCallback("OnError_" + instanceId, function():void {} );
			ExternalInterface.addCallback("Log_" + instanceId, function():void {} );
		}
		
		public function GSSocketExternal(logger:Function)
		{
			instanceId = new Date().time.toString() + "_" + (_nextID++).toString();
			this._logger = function(msg:String):void { logger("GSSocketExternal:" + msg); };
		}
		
		private function internalOnClose(event:Object = null):void { 
			if (event != null && event.code != 1000 && event.code != 1005)
			{
				_logger("abnormal close event. code: " + event.code + "  reason: " + event.reason);
			}
			else
			{
				_logger("normal close event.");
			}
			
			Dispose();
			
			if(_connected) {
				_connected = false; 
				_onClose(this);
			}
		}
		
		private function internalOnError(event:Object = null):void { 
			if (event != null)
			{
				_logger( JSON.stringify(event));
			}
			
			if(!_connected) {
				_onError(this, event);	
			} else {
				internalOnClose(event);
			}
		}
		
		private function internalOnOpen(event:Object = null):void { 
			//consecutiveErrors = 0;
			_connected = true; 
			_onOpen(this);
			if (_pingEnabled)
			{
				keepAlive();
			}
		}
		
		private function internalOnMessage(msg:Object = null):void { 
			_onMessage(msg, this);
		} 
		
		private function internalLog(msg:Object):void { 
			_logger( JSON.stringify(msg)); 
		}
		
		public function Connect(url:String, onOpen:Function, onClose:Function, onMessage:Function, onError:Function):Boolean
		{
			if (!networkAvailable/* || consecutiveErrors >= consecutiveExternalAttempts*/ || !IsAvailable())
			{
				return false;
			}
			
			var m:Array = url.match(/^(\w+):\/\/([^\/:]+)(:(\d+))?(\/.*)?(\?.*)?$/);
			
			if (!m)
			{
				_logger("invalid url: " + url);
				
				return false;
			}
			
			var scheme:String = m[1];
			var host:String = m[2];
			var defaultPort:int = scheme == "wss" ? 443 : 80;
			var port:int = parseInt(m[4]) || defaultPort;
			
			Security.loadPolicyFile("xmlsocket://" + host + ":" + port); 
			Security.loadPolicyFile("xmlsocket://gamesparksbetabinaries.blob.core.windows.net");
			
			this._onError = onError;
			this._onOpen = onOpen;
			this._onMessage = onMessage;
			this._onClose = onClose;
			
			ExternalInterface.addCallback("OnClose_" + instanceId, internalOnClose);
			ExternalInterface.addCallback("OnError_" + instanceId, internalOnError);
			ExternalInterface.addCallback("OnOpen_" + instanceId, internalOnOpen);
			ExternalInterface.addCallback("OnMessage_" + instanceId, internalOnMessage);
			ExternalInterface.addCallback("Log_" + instanceId, internalLog);
			
			var jsString:String = 
				"function(url, id, instanceId){\n" +
				"	try { var ws = new WebSocket(decodeURIComponent(url));\n" + 
				"       if (ws != null) { \n" + 
				"		ws.instanceId = instanceId;\n" + 
				"		ws.onopen 	  =  function(event) { try { document.getElementById(id).OnOpen_"+instanceId+"(event); } catch (ex) {};};\n" + 
				"		ws.onmessage  =  function(event) { try { document.getElementById(id).OnMessage_"+instanceId+"(event.data); } catch (ex) {};};\n" + 
				"		ws.onclose 	  =  function(event) { try { document.getElementById(id).OnClose_"+instanceId+"(event); } catch (ex) {};};\n" + 
				"		ws.onerror 	  =  function(event) { try { document.getElementById(id).OnError_"+instanceId+"(null); } catch (ex) {};};\n" +
				"		window.gsWebSocket = ws;\n" + 
				"		return true; }\n" + 
				"	} catch (err) {\n" + 
				"		try { document.getElementById(id).OnError_"+instanceId+"(err);} catch (ex) {};\n" +								
				"	}\n" +
				"	return false;\n" + 
				"}\n"

			var ret:Boolean;
			
			try
			{
				ret = ExternalInterface.call(jsString, encodeURIComponent(url), ExternalInterface.objectID, instanceId);
			}
			catch (e:Error)
			{
			}
			
			return ret;
		}
		
		public function Connected():Boolean
		{
			if (!networkAvailable|| !IsAvailable())
			{
				return false;
			}
			
			var jsString:String = "function(id, instanceId){\n" +
				"try{\n" +
				"	var currentSocket = window.gsWebSocket;\n" +
				"	return (currentSocket != null && currentSocket.readyState == 1 && currentSocket.instanceId == instanceId);\n" +
				"}\n" +
				"catch (err) { \n" +
				"	 try {document.getElementById(id).OnError_"+instanceId+"(err); } catch (ex) {};\n" +
				"} return false;\n }";
					
			var isConnected:Boolean;
			
			try
			{
				isConnected = ExternalInterface.call(jsString, ExternalInterface.objectID, instanceId);
			}
			catch (e:Error)
			{
			}
			
			if(_connected && !isConnected) {
				this._onClose(this);
			}
			
			return isConnected;
		}
		
		public function Send(msg:String, waitBufferedQueue:Boolean = false):void
		{
			if (!networkAvailable || !IsAvailable())
			{
				return;
			}
			
			msg = encodeURIComponent(msg);
			/*var pattern:RegExp = /\"/g;
			msg = msg.replace(pattern, "\\\"");
			pattern = /\'/g;
			msg = msg.replace(pattern, "\\\'");	*/
			
			var jsString:String = "function(id, instanceId, msg, waitBufferedQueue){\n" +
			"	try {\n" +
			"		var currentSocket = window.gsWebSocket;\n" +
			"		if (currentSocket != null && currentSocket.readyState == 1) {\n" +
			"			var data = decodeURIComponent(msg);\n" +
			"			if (currentSocket.bufferedAmount == 0 || !waitBufferedQueue) {\n" + 
			"				currentSocket.send(data);\n" +
			"			}\n" +
			"		}\n" +
			"	}\n" +
			"	catch (err){\n" +
			"	 	try {document.getElementById(id).OnError_"+instanceId+"(err); } catch (ex) {};\n" +
			"	};}"
			
			try
			{
				ExternalInterface.call(jsString, ExternalInterface.objectID, instanceId, msg, waitBufferedQueue);
			}
			catch (e:Error)
			{
			}
		}
		
		public function Disconnect():void
		{
			_pingEnabled = false;
			
			if (!IsAvailable())
			{
				return;
			}
			
			var jsString : String = 
				"try {\n" +
				"	var currentSocket = window.gsWebSocket;\n" +
				"	if (currentSocket != null && currentSocket.readyState == 1 && currentSocket.instanceId == instanceId) {\n" +
				"		currentSocket.close();\n" +
				"		window.gsWebSocket = null;\n" +
				"	}\n" +
				"} catch (err) {\n" +
				"	 try {document.getElementById(id).OnError_"+instanceId+"(err); } catch (ex) {};\n" +
				"}";
			
			try
			{
				ExternalInterface.call( "function(id, instanceId){ " + jsString + " }", ExternalInterface.objectID, instanceId );
			}
			catch (e:Error)
			{
			}
		}
		
		static public function IsAvailable():Boolean
		{
			var isAvailable:Boolean = ExternalInterface.available;
			var hasWebSocket:Boolean = false;
			
			if (isAvailable)
			{
				try
				{
					hasWebSocket = ExternalInterface.call( "function(){ return (\"WebSocket\" in window); }")
				}
				catch (e:Error)
				{
				}
			}
			
			return isAvailable && hasWebSocket;
		}
		
		public function EnablePing():void
		{
			_pingEnabled = true;
		}
		
		public function keepAlive():void{
			
			if (!_connected || !IsAvailable() || !_pingEnabled) 
			{
				return;
			}
			
			if (networkAvailable)
			{
				Send(" ", true);
			}
			
			setTimeout(function():void {
				keepAlive();
			}, 5000);
		}
		
		public function GetName():String{
			return instanceId;
		}
		
		public function IsExternal():Boolean
		{
			return true;
		}
	}
}