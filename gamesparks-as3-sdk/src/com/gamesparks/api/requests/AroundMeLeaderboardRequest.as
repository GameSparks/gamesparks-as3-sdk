
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns leaderboard data that is adjacent to the currently signed in player's position within the given leaderboard.
	*/
	public class AroundMeLeaderboardRequest extends GSRequest
	{
	
		function AroundMeLeaderboardRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".AroundMeLeaderboardRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):AroundMeLeaderboardRequest
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
						callback(new AroundMeLeaderboardResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):AroundMeLeaderboardRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The challenge instance to get the leaderboard data for
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : AroundMeLeaderboardRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* An optional filter on the customIds.
		* If this request does not contain a custonIdFilter or if it is a partial filter, 
		* the leaderboard entries around the highest score for the given constraints will be returned.
		*/
		public function setCustomIdFilter( customIdFilter : Object ) : AroundMeLeaderboardRequest
		{
			this.data["customIdFilter"] = customIdFilter;
			return this;
		}


		/**
		* The default behaviour on a social request is to error if the player has no friends (NOTSOCIAL).  Set this flag to suppress that error and return the player's leaderboard entry instead.
		*/
		public function setDontErrorOnNotSocial( dontErrorOnNotSocial : Boolean ) : AroundMeLeaderboardRequest
		{
			this.data["dontErrorOnNotSocial"] = dontErrorOnNotSocial;
			return this;
		}


		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : AroundMeLeaderboardRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* A friend id or an array of friend ids to use instead of the player's social friends
		*/
		public function setFriendIds( friendIds : Vector.<String> ) : AroundMeLeaderboardRequest
		{
			this.data["friendIds"] = toArray(friendIds);
			return this;
		}


		/**
		* Number of entries to include from head of the list
		*/
		public function setIncludeFirst( includeFirst : Number ) : AroundMeLeaderboardRequest
		{
			this.data["includeFirst"] = includeFirst;
			return this;
		}


		/**
		* Number of entries to include from tail of the list
		*/
		public function setIncludeLast( includeLast : Number ) : AroundMeLeaderboardRequest
		{
			this.data["includeLast"] = includeLast;
			return this;
		}


		/**
		* Returns the leaderboard excluding the player's social friends
		*/
		public function setInverseSocial( inverseSocial : Boolean ) : AroundMeLeaderboardRequest
		{
			this.data["inverseSocial"] = inverseSocial;
			return this;
		}


		/**
		* The short code of the leaderboard
		*/
		public function setLeaderboardShortCode( leaderboardShortCode : String ) : AroundMeLeaderboardRequest
		{
			this.data["leaderboardShortCode"] = leaderboardShortCode;
			return this;
		}



		/**
		* If True returns a leaderboard of the player's social friends
		*/
		public function setSocial( social : Boolean ) : AroundMeLeaderboardRequest
		{
			this.data["social"] = social;
			return this;
		}


		/**
		* The IDs of the teams you are interested in
		*/
		public function setTeamIds( teamIds : Vector.<String> ) : AroundMeLeaderboardRequest
		{
			this.data["teamIds"] = toArray(teamIds);
			return this;
		}


		/**
		* The type of team you are interested in
		*/
		public function setTeamTypes( teamTypes : Vector.<String> ) : AroundMeLeaderboardRequest
		{
			this.data["teamTypes"] = toArray(teamTypes);
			return this;
		}
				
	}
	
}

