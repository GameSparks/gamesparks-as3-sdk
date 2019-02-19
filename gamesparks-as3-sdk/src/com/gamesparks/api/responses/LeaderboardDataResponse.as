
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing leaderboard data
	*/
	public class LeaderboardDataResponse extends GSResponse
	{
	
		public function LeaderboardDataResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The leaderboard's challenge id
		*/ 
		public function getChallengeInstanceId() : String{
			if(data.challengeInstanceId != null)
			{
				return data.challengeInstanceId;
			}
			return null;
		}
		/** <summary>
		* The leaderboard data
		*/ 
		public function getData() : Vector.<LeaderboardData>
		{
			var ret : Vector.<LeaderboardData> = new Vector.<LeaderboardData>();

			if(data.data != null)
			{
			 	var list : Array = data.data;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new LeaderboardData(list[item]));
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* The first item in the leaderboard data
		*/ 
		public function getFirst() : Vector.<LeaderboardData>
		{
			var ret : Vector.<LeaderboardData> = new Vector.<LeaderboardData>();

			if(data.first != null)
			{
			 	var list : Array = data.first;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new LeaderboardData(list[item]));
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* The last item in the leaderboard data
		*/ 
		public function getLast() : Vector.<LeaderboardData>
		{
			var ret : Vector.<LeaderboardData> = new Vector.<LeaderboardData>();

			if(data.last != null)
			{
			 	var list : Array = data.last;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new LeaderboardData(list[item]));
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* The leaderboard short code
		*/ 
		public function getLeaderboardShortCode() : String{
			if(data.leaderboardShortCode != null)
			{
				return data.leaderboardShortCode;
			}
			return null;
		}
	}

}

