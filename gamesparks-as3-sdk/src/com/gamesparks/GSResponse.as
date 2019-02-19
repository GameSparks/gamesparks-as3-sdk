package com.gamesparks
{

	public class GSResponse extends GSData
	{
		public function GSResponse(data:Object)
		{
			super(data);
		}
		
		public function HasErrors() : Boolean
		{
			return data.hasOwnProperty("error");
		}
		
		public function getScriptData() : Object {
			return data["scriptData"];
		}
		
		public function getErrors() : Object {
			return data["error"];
		}
	}
}