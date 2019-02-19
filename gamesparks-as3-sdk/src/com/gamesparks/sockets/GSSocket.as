package com.gamesparks.sockets
{
	public interface GSSocket
	{
		function Dispose():void;
		
		function Connect(url:String, onOpen:Function, onClose:Function, onMessage:Function, onError:Function):Boolean;
			
		function Send(message:String, waitBufferedQueue:Boolean = false):void;
		
		function Connected():Boolean;
		
		function Disconnect():void;
		
		function EnablePing():void;
		
		function GetName():String;
		
		function IsExternal():Boolean;
	}
}