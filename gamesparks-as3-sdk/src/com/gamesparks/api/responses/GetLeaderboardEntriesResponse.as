
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing leaderboard entry data for a given player
	*/
	public class GetLeaderboardEntriesResponse extends GSResponse
	{
	
		public function GetLeaderboardEntriesResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The leaderboard entry data
		*/ 
		public function getResults() : Object{
			if(data.results != null)
			{
				return data.results;
			}
			return null;
		}
	}

}

