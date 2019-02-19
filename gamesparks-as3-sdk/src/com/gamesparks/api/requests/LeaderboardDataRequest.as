
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the top data for either the specified global leaderboard or the specified challenges leaderboard. The data is sorted as defined in the rules specified in the leaderboard configuration.
	* The response contains the top of the leaderboard, and returns the number of entries as defined in the entryCount parameter.
	* If a shortCode is supplied, the response will contain the global leaderboard data. If a challengeInstanceId is supplied, the response will contain the leaderboard data for the challenge.
	*/
	public class LeaderboardDataRequest extends GSRequest
	{
	
		function LeaderboardDataRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".LeaderboardDataRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):LeaderboardDataRequest
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
						callback(new LeaderboardDataResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):LeaderboardDataRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The challenge instance to get the leaderboard data for
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : LeaderboardDataRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* The default behaviour on a social request is to error if the player has no friends (NOTSOCIAL).  Set this flag to suppress that error and return the player's leaderboard entry instead.
		*/
		public function setDontErrorOnNotSocial( dontErrorOnNotSocial : Boolean ) : LeaderboardDataRequest
		{
			this.data["dontErrorOnNotSocial"] = dontErrorOnNotSocial;
			return this;
		}


		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : LeaderboardDataRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* A friend id or an array of friend ids to use instead of the player's social friends
		*/
		public function setFriendIds( friendIds : Vector.<String> ) : LeaderboardDataRequest
		{
			this.data["friendIds"] = toArray(friendIds);
			return this;
		}


		/**
		* Number of entries to include from head of the list
		*/
		public function setIncludeFirst( includeFirst : Number ) : LeaderboardDataRequest
		{
			this.data["includeFirst"] = includeFirst;
			return this;
		}


		/**
		* Number of entries to include from tail of the list
		*/
		public function setIncludeLast( includeLast : Number ) : LeaderboardDataRequest
		{
			this.data["includeLast"] = includeLast;
			return this;
		}


		/**
		* Returns the leaderboard excluding the player's social friends
		*/
		public function setInverseSocial( inverseSocial : Boolean ) : LeaderboardDataRequest
		{
			this.data["inverseSocial"] = inverseSocial;
			return this;
		}


		/**
		* The short code of the leaderboard
		*/
		public function setLeaderboardShortCode( leaderboardShortCode : String ) : LeaderboardDataRequest
		{
			this.data["leaderboardShortCode"] = leaderboardShortCode;
			return this;
		}


		/**
		* The offset into the set of leaderboards returned
		*/
		public function setOffset( offset : Number ) : LeaderboardDataRequest
		{
			this.data["offset"] = offset;
			return this;
		}



		/**
		* If True returns a leaderboard of the player's social friends
		*/
		public function setSocial( social : Boolean ) : LeaderboardDataRequest
		{
			this.data["social"] = social;
			return this;
		}


		/**
		* The IDs of the teams you are interested in
		*/
		public function setTeamIds( teamIds : Vector.<String> ) : LeaderboardDataRequest
		{
			this.data["teamIds"] = toArray(teamIds);
			return this;
		}


		/**
		* The type of team you are interested in
		*/
		public function setTeamTypes( teamTypes : Vector.<String> ) : LeaderboardDataRequest
		{
			this.data["teamTypes"] = toArray(teamTypes);
			return this;
		}
				
	}
	
}

