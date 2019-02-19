
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Find the details of an existing match this player belongs to, using the matchId
	*/
	public class MatchDetailsRequest extends GSRequest
	{
	
		function MatchDetailsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".MatchDetailsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):MatchDetailsRequest
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
						callback(new MatchDetailsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):MatchDetailsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The matchId to find the details of
		*/
		public function setMatchId( matchId : String ) : MatchDetailsRequest
		{
			this.data["matchId"] = matchId;
			return this;
		}


		/**
		* Adds realtime server details if the match has been created using Cloud Code and it has not been realtime enabled
		*/
		public function setRealtimeEnabled( realtimeEnabled : Boolean ) : MatchDetailsRequest
		{
			this.data["realtimeEnabled"] = realtimeEnabled;
			return this;
		}

				
	}
	
}

