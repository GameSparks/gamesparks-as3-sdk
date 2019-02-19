package com.gamesparks.sockets
{
	import flash.external.ExternalInterface;
	import flash.net.SecureSocket;
	import flash.utils.setTimeout;
	
	import mx.events.CloseEvent;

	public class GSSocketSelector implements GSSocket
	{
		
		private static var socketCreator:Function;
		private static var socketType:String;
		private var _logger:Function;
		private var ignoreSecureSocket:Boolean;
		
		private var wrappedSocket:GSSocket;
		
		private var _onOpen:Function;
		private var _onClose:Function;
		private var _onMessage:Function;
		private var _onError:Function;
		
		private var _closeEventFired:Boolean = false;
		private var _errorEventFired:Boolean = false;
		
		private var errorCount:int = 0;
		
		protected var attemptedSockets:Array = new Array();
		
		protected var _errors:Array = new Array();
		
		protected var selectorInstance:Number = 0;
		protected static var selectorCount:Number = 0;
		
		public function Dispose():void
		{
			if (wrappedSocket != null)
			{
				wrappedSocket.Dispose();
			}
			
			cleanupAttemptedSockets(wrappedSocket);
		}
		
		public function GSSocketSelector(logger:Function, ignoreSecureSocket:Boolean = false) {
			this._logger = logger;
			this.selectorInstance = ++selectorCount;
			this.ignoreSecureSocket = ignoreSecureSocket;
		}
		
		public function Connect(url:String, onOpen:Function, onClose:Function, onMessage:Function, onError:Function):Boolean{
			var timeout:int = 10000;
			
			this._onError = onError;
			this._onOpen = onOpen;
			this._onMessage = onMessage;
			this._onClose = onClose;
			
			if(socketCreator != null) {
				_logger("Creating " + socketType);
				wrappedSocket = socketCreator(socketType + "_" + selectorInstance);
				wrappedSocket.Connect(url, handleWebSocketOpen, handleWebSocketClosed, handleWebSocketMessage,handleWebSocketError);
				wrappedSocket.EnablePing();
			} else {
				try{
					if (ignoreSecureSocket) 
					{
						_logger("Creating 2 Sockets");
					}
					else
					{
						_logger("Creating 3 Sockets");
					}
					createSocket(url, externalSocket, "externalSocket_" + selectorInstance);
					createSocket(url, internalSocket, "internalSocket_"+ selectorInstance);
					if (!ignoreSecureSocket) 
					{
						createSocket(url, internalSecureSocket, "internalSecureSocket_"+ selectorInstance);
					}
					//timeout = 20000;
				} catch(err:Error){
					_logger(err);
				}
			}
			
			var superThis:GSSocket = this;
			
			setTimeout(function():void {
				if(wrappedSocket == null || !wrappedSocket.Connected()){
					try{
						cleanupAttemptedSockets(superThis);
						for each (var error:String in _errors){
							_logger(error);
						}
						_onError(superThis);
					} catch (e:Error) {
						_logger(e);
					}
					
					if(wrappedSocket == null)
					{
						Connect(url, onOpen, onClose, onMessage, onError);
					}
				}
			}, timeout);
			
			return true;

		}
		
		private function cleanupAttemptedSockets(socket:GSSocket):void {
			for each (var attemptedSocket:GSSocket in attemptedSockets){
				if(attemptedSocket != socket){
					attemptedSocket.Dispose();
					attemptedSocket.Disconnect();
				}
			}
			
			attemptedSockets.length = 0;
		}
		
		private function createSocket(url:String, creator:Function, name:String):void {
			
			var newSocket:GSSocket = creator(name);
			
			if(newSocket != null){
			
				attemptedSockets.push(newSocket);
				
				newSocket.Connect(url, handleWebSocketOpen, handleWebSocketClosed, 
					function(message:String, socket:GSSocket):void{
						if(wrappedSocket == null) {
							//_logger("And the winner is : " + name);
							socketCreator = creator;
							socketType = name;
							wrappedSocket = socket;
							
							cleanupAttemptedSockets(socket);
							
							handleWebSocketOpen(socket);
							handleWebSocketMessage(message, socket);
						} else if(wrappedSocket == socket) {
							handleWebSocketMessage(message, socket);
						}
					}, 
					function (socket:GSSocket, error:String=""):void {
						
						if(socketCreator == null && error != "") {
							_errors.push(socket.GetName() + ":" + error)
						}
						
						handleWebSocketError(socket, error);
					});
			}
		}
		
		private function handleWebSocketMessage(message:String, socket:GSSocket):void
		{
			if(wrappedSocket == socket) {
				_onMessage(message, this);
			}
		}
		
		private function handleWebSocketOpen(socket:GSSocket):void
		{
			if(wrappedSocket == socket) {
				_onOpen(this);
			}
		}
		
		private function handleWebSocketClosed(socket:GSSocket):void
		{
			if(wrappedSocket == socket && !_closeEventFired) {
				_closeEventFired = true;
				_onClose(this);
			}
		}
		
		private function handleWebSocketError(socket:GSSocket, error:String=""):void {
			errorCount++;
			
			if(wrappedSocket == socket || errorCount == attemptedSockets.length)
			{
				if(!_errorEventFired)
				{
					_errorEventFired = true;
					_onError(this);
				}
				
				//If the socket has not closed within 500 MS, we'll treat it as closed
				setTimeout(handleWebSocketClosed, 500, socket);
			}
		}
		
		public function Send(message:String, waitBufferedQueue:Boolean = false):void 
		{
			if(wrappedSocket != null) {
				wrappedSocket.Send(message, waitBufferedQueue);
			}
		}
		
		public function Connected():Boolean
		{
			if(wrappedSocket != null) {
				return wrappedSocket.Connected();
			}
			return false;
		}
		
		public function Disconnect():void
		{
			if(wrappedSocket != null) {
				wrappedSocket.Disconnect()
			}
		}
		
		public function EnablePing():void
		{
		}
		
		private function externalSocket(name:String) : GSSocket {
			if(!GSSocketExternal.IsAvailable()) {
				return null;
			}
			return new GSSocketExternal(_logger);	
		}
		
		private function internalSecureSocket(name:String) : GSSocket {
			if(!SecureSocket.isSupported){
				return null;
			}
			var socket:GSSocketGimite = new GSSocketGimite(_logger, name, true);
			
			return socket;
		}
		
		private function internalSocket(name:String) : GSSocket {
			var socket:GSSocketGimite = new GSSocketGimite(_logger, name, false);
		
			return socket;
		}
		
		public static function reset() : void{
			if(socketCreator != null){
				socketCreator = null;
				socketType = null;
			}
		}
		
		public function GetName():String{
			return "socketSelector_" + this.selectorInstance;
		}
		
		public function IsExternal():Boolean
		{
			return wrappedSocket.IsExternal();
		}
	}
}