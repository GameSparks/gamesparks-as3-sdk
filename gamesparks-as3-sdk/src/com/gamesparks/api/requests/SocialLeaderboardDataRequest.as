
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns leaderboard data that only contains entries of players that are game friends with the current player.
	* The GameSparks platform will attempt to return players both ahead and behind the current player, where data is available.
	* The entry count defines how many player should be returned both ahead and behind. The numer of results may vary if there are not enough friends either ahead or behind.
	*/
	public class SocialLeaderboardDataRequest extends GSRequest
	{
	
		function SocialLeaderboardDataRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".SocialLeaderboardDataRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):SocialLeaderboardDataRequest
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
		
	
		public function setScriptData(scriptData:Object):SocialLeaderboardDataRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The challenge instance to get the leaderboard data for
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : SocialLeaderboardDataRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* The default behaviour on a social request is to error if the player has no friends (NOTSOCIAL).  Set this flag to suppress that error and return the player's leaderboard entry instead.
		*/
		public function setDontErrorOnNotSocial( dontErrorOnNotSocial : Boolean ) : SocialLeaderboardDataRequest
		{
			this.data["dontErrorOnNotSocial"] = dontErrorOnNotSocial;
			return this;
		}


		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : SocialLeaderboardDataRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* A friend id or an array of friend ids to use instead of the player's social friends
		*/
		public function setFriendIds( friendIds : Vector.<String> ) : SocialLeaderboardDataRequest
		{
			this.data["friendIds"] = toArray(friendIds);
			return this;
		}


		/**
		* Number of entries to include from head of the list
		*/
		public function setIncludeFirst( includeFirst : Number ) : SocialLeaderboardDataRequest
		{
			this.data["includeFirst"] = includeFirst;
			return this;
		}


		/**
		* Number of entries to include from tail of the list
		*/
		public function setIncludeLast( includeLast : Number ) : SocialLeaderboardDataRequest
		{
			this.data["includeLast"] = includeLast;
			return this;
		}


		/**
		* Returns the leaderboard excluding the player's social friends
		*/
		public function setInverseSocial( inverseSocial : Boolean ) : SocialLeaderboardDataRequest
		{
			this.data["inverseSocial"] = inverseSocial;
			return this;
		}


		/**
		* The short code of the leaderboard
		*/
		public function setLeaderboardShortCode( leaderboardShortCode : String ) : SocialLeaderboardDataRequest
		{
			this.data["leaderboardShortCode"] = leaderboardShortCode;
			return this;
		}


		/**
		* The offset into the set of leaderboards returned
		*/
		public function setOffset( offset : Number ) : SocialLeaderboardDataRequest
		{
			this.data["offset"] = offset;
			return this;
		}



		/**
		* If True returns a leaderboard of the player's social friends
		*/
		public function setSocial( social : Boolean ) : SocialLeaderboardDataRequest
		{
			this.data["social"] = social;
			return this;
		}


		/**
		* The IDs of the teams you are interested in
		*/
		public function setTeamIds( teamIds : Vector.<String> ) : SocialLeaderboardDataRequest
		{
			this.data["teamIds"] = toArray(teamIds);
			return this;
		}


		/**
		* The type of team you are interested in
		*/
		public function setTeamTypes( teamTypes : Vector.<String> ) : SocialLeaderboardDataRequest
		{
			this.data["teamTypes"] = toArray(teamTypes);
			return this;
		}
				
	}
	
}

