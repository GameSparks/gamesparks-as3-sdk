
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Requests to join a pending match (found via FindPendingMatchesRequest).
	*/
	public class JoinPendingMatchRequest extends GSRequest
	{
	
		function JoinPendingMatchRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".JoinPendingMatchRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):JoinPendingMatchRequest
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
						callback(new JoinPendingMatchResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):JoinPendingMatchRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Optional. The matchGroup of the match this player previously registeredfor
		*/
		public function setMatchGroup( matchGroup : String ) : JoinPendingMatchRequest
		{
			this.data["matchGroup"] = matchGroup;
			return this;
		}


		/**
		* The shortCode of the match this player previously registered for
		*/
		public function setMatchShortCode( matchShortCode : String ) : JoinPendingMatchRequest
		{
			this.data["matchShortCode"] = matchShortCode;
			return this;
		}


		/**
		* The pending match ID to join
		*/
		public function setPendingMatchId( pendingMatchId : String ) : JoinPendingMatchRequest
		{
			this.data["pendingMatchId"] = pendingMatchId;
			return this;
		}

				
	}
	
}

