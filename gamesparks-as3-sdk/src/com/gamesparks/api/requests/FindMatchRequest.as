
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* @Deprecated. Use MatchmakingRequest instead.
	* Find a match for this player, using the given skill and matchShortCode.
	* Players looking for a match using the same matchShortCode will be considered for a match, based on the matchConfig.
	* Each player must match the other for the match to be found.
	*/
	public class FindMatchRequest extends GSRequest
	{
	
		function FindMatchRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".FindMatchRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):FindMatchRequest
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
						callback(new FindMatchResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):FindMatchRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The action to take on the already in-flight request for this match. Currently supported actions are: 'cancel'
		*/
		public function setAction( action : String ) : FindMatchRequest
		{
			this.data["action"] = action;
			return this;
		}


		/**
		* Optional. Players will be grouped based on the distinct value passed in here, only players in the same group can be matched together
		*/
		public function setMatchGroup( matchGroup : String ) : FindMatchRequest
		{
			this.data["matchGroup"] = matchGroup;
			return this;
		}


		/**
		* The shortCode of the match type this player is registering for
		*/
		public function setMatchShortCode( matchShortCode : String ) : FindMatchRequest
		{
			this.data["matchShortCode"] = matchShortCode;
			return this;
		}



		/**
		* The skill of the player looking for a match
		*/
		public function setSkill( skill : Number ) : FindMatchRequest
		{
			this.data["skill"] = skill;
			return this;
		}
				
	}
	
}

