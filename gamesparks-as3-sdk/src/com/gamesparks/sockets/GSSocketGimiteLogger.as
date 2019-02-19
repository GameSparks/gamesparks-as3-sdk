package com.gamesparks.sockets
{
	import net.gimite.websocket.IWebSocketLogger;
	
	public class GSSocketGimiteLogger implements IWebSocketLogger
	{
		private var logger:Function;
		
		public function GSSocketGimiteLogger(logger:Function)
		{
			this.logger = logger;
		}
		
		public function log(message:String):void
		{
			logger("log:" + message);
		}
		
		public function error(message:String):void
		{
			logger("err:" + message.split("rror").join("rr"));
		}
	}
}