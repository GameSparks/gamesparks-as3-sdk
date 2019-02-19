
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Records the end of the current player's active session.
	* The SDK will automatically create a new session ID when the application is started, this method can be useful to call when the app goes into the background to allow reporting on player session length.
	*/
	public class EndSessionRequest extends GSRequest
	{
	
		function EndSessionRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".EndSessionRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):EndSessionRequest
		{
			this.timeoutSeconds = timeoutSeconds; 
			return this;
		}
		
		/**
		* Send the request to the server. The callback function will be invoked with the response
		*/
		public override function send (callback : Function) : String{
			return super.send( 
				function(message:Object) : void{
					if(callback != null)
					{
						callback(new EndSessionResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):EndSessionRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

