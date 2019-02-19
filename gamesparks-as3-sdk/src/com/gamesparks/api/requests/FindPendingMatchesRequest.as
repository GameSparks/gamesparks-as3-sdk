
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Find other pending matches that will match this player's previously submitted MatchmakingRequest.
	* Used for manual matching of players, where you want control over which pending match should be chosen.
	* Each player must match the other for the pending match to be found.
	*/
	public class FindPendingMatchesRequest extends GSRequest
	{
	
		function FindPendingMatchesRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".FindPendingMatchesRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):FindPendingMatchesRequest
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
						callback(new FindPendingMatchesResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):FindPendingMatchesRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Optional. The matchGroup of the match this player previously registeredfor
		*/
		public function setMatchGroup( matchGroup : String ) : FindPendingMatchesRequest
		{
			this.data["matchGroup"] = matchGroup;
			return this;
		}


		/**
		* The shortCode of the match this player previously registered for
		*/
		public function setMatchShortCode( matchShortCode : String ) : FindPendingMatchesRequest
		{
			this.data["matchShortCode"] = matchShortCode;
			return this;
		}


		/**
		* Optional. The maximum number of pending matches to return (default=10)
		*/
		public function setMaxMatchesToFind( maxMatchesToFind : Number ) : FindPendingMatchesRequest
		{
			this.data["maxMatchesToFind"] = maxMatchesToFind;
			return this;
		}

				
	}
	
}

