
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Retrieves a list of the configured achievements in the game, along with whether the current player has earned the achievement.
	*/
	public class ListAchievementsRequest extends GSRequest
	{
	
		function ListAchievementsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListAchievementsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListAchievementsRequest
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
						callback(new ListAchievementsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListAchievementsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

