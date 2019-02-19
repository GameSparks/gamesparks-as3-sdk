
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing a list of all leaderboards configured in the game.
	*/
	public class ListLeaderboardsResponse extends GSResponse
	{
	
		public function ListLeaderboardsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON object containing leaderboard meta data
		*/ 
		public function getLeaderboards() : Vector.<Leaderboard>
		{
			var ret : Vector.<Leaderboard> = new Vector.<Leaderboard>();

			if(data.leaderboards != null)
			{
			 	var list : Array = data.leaderboards;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Leaderboard(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

