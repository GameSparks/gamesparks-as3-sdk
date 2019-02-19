
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Get the leaderboard entry data for the current player or a given player. 
	* For each leaderboard it returns the hichest score the player has
	*/
	public class GetLeaderboardEntriesRequest extends GSRequest
	{
	
		function GetLeaderboardEntriesRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetLeaderboardEntriesRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetLeaderboardEntriesRequest
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
						callback(new GetLeaderboardEntriesResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetLeaderboardEntriesRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The challenge leaderboards to return entries for
		*/
		public function setChallenges( challenges : Vector.<String> ) : GetLeaderboardEntriesRequest
		{
			this.data["challenges"] = toArray(challenges);
			return this;
		}


		/**
		* Returns the leaderboard excluding the player's social friends
		*/
		public function setInverseSocial( inverseSocial : Boolean ) : GetLeaderboardEntriesRequest
		{
			this.data["inverseSocial"] = inverseSocial;
			return this;
		}


		/**
		* The list of leaderboards shortcodes
		*/
		public function setLeaderboards( leaderboards : Vector.<String> ) : GetLeaderboardEntriesRequest
		{
			this.data["leaderboards"] = toArray(leaderboards);
			return this;
		}


		/**
		* The player id. Leave out to use the current player id
		*/
		public function setPlayer( player : String ) : GetLeaderboardEntriesRequest
		{
			this.data["player"] = player;
			return this;
		}



		/**
		* Set to true to include the player's game friends
		*/
		public function setSocial( social : Boolean ) : GetLeaderboardEntriesRequest
		{
			this.data["social"] = social;
			return this;
		}


		/**
		* The types of team to apply this request to
		*/
		public function setTeamTypes( teamTypes : Vector.<String> ) : GetLeaderboardEntriesRequest
		{
			this.data["teamTypes"] = toArray(teamTypes);
			return this;
		}
				
	}
	
}

