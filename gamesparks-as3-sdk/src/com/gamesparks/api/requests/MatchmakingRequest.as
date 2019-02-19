
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Register this player for matchmaking, using the given skill and matchShortCode.
	* Players looking for a match using the same matchShortCode will be considered for a match, based on the matchConfig.
	* Each player must match the other for the match to be found.
	* If the matchShortCode points to a match with realtime enabled, in order to minimise latency, the location of Players and their proximity to one another takes precedence over their reciprocal skill values.
	*/
	public class MatchmakingRequest extends GSRequest
	{
	
		function MatchmakingRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".MatchmakingRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):MatchmakingRequest
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
						callback(new MatchmakingResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):MatchmakingRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The action to take on the already in-flight request for this match. Currently supported actions are: 'cancel'
		*/
		public function setAction( action : String ) : MatchmakingRequest
		{
			this.data["action"] = action;
			return this;
		}


		/**
		* The query that will be applied to the PendingMatch collection
		*/
		public function setCustomQuery( customQuery : Object ) : MatchmakingRequest
		{
			this.data["customQuery"] = customQuery;
			return this;
		}


		/**
		* A JSON Map of any data that will be associated to the pending match
		*/
		public function setMatchData( matchData : Object ) : MatchmakingRequest
		{
			this.data["matchData"] = matchData;
			return this;
		}


		/**
		* Optional. Players will be grouped based on the distinct value passed in here, only players in the same group can be matched together
		*/
		public function setMatchGroup( matchGroup : String ) : MatchmakingRequest
		{
			this.data["matchGroup"] = matchGroup;
			return this;
		}


		/**
		* The shortCode of the match type this player is registering for
		*/
		public function setMatchShortCode( matchShortCode : String ) : MatchmakingRequest
		{
			this.data["matchShortCode"] = matchShortCode;
			return this;
		}


		/**
		* A JSON Map of any data that will be associated to this user in a pending match
		*/
		public function setParticipantData( participantData : Object ) : MatchmakingRequest
		{
			this.data["participantData"] = participantData;
			return this;
		}



		/**
		* The skill of the player looking for a match
		*/
		public function setSkill( skill : Number ) : MatchmakingRequest
		{
			this.data["skill"] = skill;
			return this;
		}
				
	}
	
}

