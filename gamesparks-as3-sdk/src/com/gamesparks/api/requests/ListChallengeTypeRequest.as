
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the list of configured challenge types.
	*/
	public class ListChallengeTypeRequest extends GSRequest
	{
	
		function ListChallengeTypeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListChallengeTypeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListChallengeTypeRequest
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
						callback(new ListChallengeTypeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListChallengeTypeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

