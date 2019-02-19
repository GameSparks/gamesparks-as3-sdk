package com.gamesparks.sockets
{
	import flash.events.TimerEvent;
	import flash.net.Socket;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	import flash.utils.setTimeout;

	public class GSSocketGimite implements GSSocket
	{
		import net.gimite.websocket.*;
		
		static public var networkAvailable:Boolean = true;
		
		private var websocket:WebSocket;
		private var secret:String;
		
		private var connected:Boolean = false;
		private var pingEnabled:Boolean = false;
		
		private var onOpen:Function, onClose:Function, onMessage:Function, onError:Function;
		
		private var logger:Function;
		
		public var useFlashSecureSocket:Boolean;
		
		public var name:String;
		
		public function Dispose():void
		{
			if (websocket != null)
			{
				logger("dispose");
				
				websocket.removeEventListener(WebSocketEvent.CLOSE, handleClose);
				websocket.removeEventListener(WebSocketEvent.OPEN, handleOpen);
				websocket.removeEventListener(WebSocketEvent.MESSAGE, handleMessage);
				websocket.removeEventListener(WebSocketEvent.ERROR, handleError);
				websocket.removeEventListener(WebSocketEvent.PONG, handlePong);
			}
		}
		
		public function GSSocketGimite(logger:Function, name:String, useFlashSecureSocket:Boolean)
		{
			this.name = name;
			this.logger = function(msg:String):void { logger((useFlashSecureSocket ? "GSSocketSS:" : "GSSocketTLS:") + msg); };
			this.useFlashSecureSocket = useFlashSecureSocket;
		}
		
		public function Connect(url:String, onOpen:Function, onClose:Function, onMessage:Function, onError:Function):Boolean
		{
			if (!networkAvailable)
			{
				return false;
			}
			
			this.onError = onError;
			this.onOpen = onOpen;
			this.onMessage = onMessage;
			this.onClose = onClose;
			
			websocket = new WebSocket(0, url, [], "*", null, 0, null, null, new GSSocketGimiteLogger(logger), useFlashSecureSocket);
			
			websocket.addEventListener(WebSocketEvent.CLOSE, handleClose);
			websocket.addEventListener(WebSocketEvent.OPEN, handleOpen);
			websocket.addEventListener(WebSocketEvent.MESSAGE, handleMessage);
			websocket.addEventListener(WebSocketEvent.ERROR, handleError);
			websocket.addEventListener(WebSocketEvent.PONG, handlePong);
			
			return true;	
		}
		
		private function handleClose(event:WebSocketEvent):void
		{
			Dispose();
			
			waitingForPong = false;
			connected = false; 
			onClose(this);	
		}
		
		private function handleOpen(event:WebSocketEvent):void
		{
			connected = true; 
			onOpen(this); 
			if (pingEnabled)
			{
				keepAlive();
			}
		}
		
		private function handleMessage(event:WebSocketEvent):void
		{
			onMessage(event.message, this);
		}
		
		private var hasErrored:Boolean = false;
		
		private function handleError(event:WebSocketEvent):void
		{
			if (!hasErrored)
			{
				hasErrored = true;
				onError(this);
			}
		}
		
		public function Connected():Boolean
		{
			/*if (websocket != null)
			{
				logger("ready state " + websocket.getReadyState());
			}*/
			
			return websocket != null && websocket.getReadyState() == 1 && networkAvailable;
		}
		
		public function Send(msg:String, waitBufferedQueue:Boolean = false):void
		{
			if (!networkAvailable)
			{
				return;
			}
			
			websocket.send(msg);
		}
		
		public function Disconnect():void
		{
			pingEnabled = false;
			
			if (websocket != null)
			{
				websocket.close();
				websocket = null;
			}
		}
		
		public function EnablePing():void
		{
			pingEnabled = true;
		}
		
		private var waitingForPong:Boolean = false;
		
		public function keepAlive():void
		{
			if (!connected || !pingEnabled)
			{
				return;
			}
			
			if (networkAvailable && websocket != null)
			{
				try
				{
					websocket.sendPing(new ByteArray());
				}
				catch (e:Error)
				{	
				}
				
				waitingForPong = true;
			}
			
			setTimeout(function():void
			{
				if (websocket != null)
				{
					/*if (waitingForPong)
					{
						try
						{
							websocket.close(5000);
						}
						catch (e:Error)
						{	
						}
						
						pingEnabled = false;
						
						return;
					}*/
					
					keepAlive();
				}
				else
				{
					pingEnabled = false;
				}
			}, 5000);
		}
		
		private function handlePong(event:WebSocketEvent):void
		{
			waitingForPong = false;
		}
		
		public function GetName():String{
			return name;	
		}
		
		public function IsExternal():Boolean
		{
			return false;
		}
	}
}