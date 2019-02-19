
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Get the leaderboard entry data for the current player or a given player.
	* For each leaderboard it returns the array of leaderboard entries that the player has.
	*/
	public class LeaderboardsEntriesRequest extends GSRequest
	{
	
		function LeaderboardsEntriesRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".LeaderboardsEntriesRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):LeaderboardsEntriesRequest
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
						callback(new LeaderboardsEntriesResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):LeaderboardsEntriesRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The challenge leaderboards to return entries for
		*/
		public function setChallenges( challenges : Vector.<String> ) : LeaderboardsEntriesRequest
		{
			this.data["challenges"] = toArray(challenges);
			return this;
		}


		/**
		* Returns the leaderboard excluding the player's social friends
		*/
		public function setInverseSocial( inverseSocial : Boolean ) : LeaderboardsEntriesRequest
		{
			this.data["inverseSocial"] = inverseSocial;
			return this;
		}


		/**
		* The list of leaderboards shortcodes
		*/
		public function setLeaderboards( leaderboards : Vector.<String> ) : LeaderboardsEntriesRequest
		{
			this.data["leaderboards"] = toArray(leaderboards);
			return this;
		}


		/**
		* The player id. Leave out to use the current player id
		*/
		public function setPlayer( player : String ) : LeaderboardsEntriesRequest
		{
			this.data["player"] = player;
			return this;
		}



		/**
		* Set to true to include the player's game friends
		*/
		public function setSocial( social : Boolean ) : LeaderboardsEntriesRequest
		{
			this.data["social"] = social;
			return this;
		}


		/**
		* The types of team to apply this request to
		*/
		public function setTeamTypes( teamTypes : Vector.<String> ) : LeaderboardsEntriesRequest
		{
			this.data["teamTypes"] = toArray(teamTypes);
			return this;
		}
				
	}
	
}

