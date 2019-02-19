package com.gamesparks
{
	import flash.utils.ByteArray;
	
	public class GSRequest extends GSData
	{
		
		protected var timeoutSeconds:int = 5;
		internal var callback:Function = null;
		internal var requestId:String;
		internal var durable:Boolean = false;
		internal var durableRetryTicks:Number = 0;
		
		private var gs:GS;
		
		public function GSRequest(gs:GS, data:Object = null)
		{
			if (data == null)
			{
				data = new Object();	
			}
			
			super(data);
			this.gs = gs;
		}
		
		public function getData() : Object
		{
			return data;
		}
		
		public function send (callback : Function) : String{
			this.callback = callback;
			
			var newRequest:GSRequest = this.deepCopy();
			
			gs.send(newRequest);
			
			return newRequest.getData().requestId;
		}
		
		public function hasCallback():Boolean
		{
			if (callback != null)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		public function setCallback(callback:Function):void
		{
			this.callback = callback;
		}
		
		public function setDurable(durable:Boolean):void
		{
			this.durable = durable;
		}
		
		internal function getTimeoutSeconds():int
		{
			return timeoutSeconds;
		}
		
		protected function toArray(iterable:*):Array {
			var ret:Array = [];
			for each (var elem:* in iterable) ret.push(elem);
			return ret;
		}
		
		private function deepCopy():GSRequest
		{
			var request:GSRequest = new GSRequest(gs);
			var array:ByteArray = new ByteArray();
			
			array.writeObject(data);
			array.position = 0;
			
			request.data = array.readObject();
			
			request.timeoutSeconds = timeoutSeconds;
			request.callback = callback;
			request.durable = durable;
			
			return request;
		}
	}
	
}