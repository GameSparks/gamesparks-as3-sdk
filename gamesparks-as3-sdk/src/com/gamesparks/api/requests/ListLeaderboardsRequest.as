
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a list of all leaderboards configured in the game.
	*/
	public class ListLeaderboardsRequest extends GSRequest
	{
	
		function ListLeaderboardsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListLeaderboardsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListLeaderboardsRequest
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
						callback(new ListLeaderboardsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListLeaderboardsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

