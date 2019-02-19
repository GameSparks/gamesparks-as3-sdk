
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class LeaderboardRankDetails extends GSData
	{
	
		public function LeaderboardRankDetails(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The leaderboard entries of the players friends that were beaten as part of this score submission.
		/// </summary>
		//method type 1
		public function getFriendsPassed() : Vector.<LeaderboardData>
		{
			var ret : Vector.<LeaderboardData> = new Vector.<LeaderboardData>();

			if(data.friendsPassed != null)
			{
			 	var list : Array = data.friendsPassed;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new LeaderboardData(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// The number of entries in this leaderboard.
		/// </summary>
		//method type 5
		public function getGlobalCount() : Number{
			if(data.globalCount != null)
			{
				return data.globalCount;
			}
			return NaN;
		}
		/// <summary>
		/// The Global Rank of the player in this leaderboard before the score was submitted.
		/// </summary>
		//method type 5
		public function getGlobalFrom() : Number{
			if(data.globalFrom != null)
			{
				return data.globalFrom;
			}
			return NaN;
		}
		/// <summary>
		/// The old global rank of the player as a percentage of the total number of scores in this leaderboard .
		/// </summary>
		//method type 5
		public function getGlobalFromPercent() : Number{
			if(data.globalFromPercent != null)
			{
				return data.globalFromPercent;
			}
			return NaN;
		}
		/// <summary>
		/// The Global Rank of the player in this leaderboard after the score was submitted.
		/// </summary>
		//method type 5
		public function getGlobalTo() : Number{
			if(data.globalTo != null)
			{
				return data.globalTo;
			}
			return NaN;
		}
		/// <summary>
		/// The new global rank of the player as a percentage of the total number of scores in this leaderboard .
		/// </summary>
		//method type 5
		public function getGlobalToPercent() : Number{
			if(data.globalToPercent != null)
			{
				return data.globalToPercent;
			}
			return NaN;
		}
		/// <summary>
		/// The number of friend entries the player has in this leaderboard.
		/// </summary>
		//method type 5
		public function getSocialCount() : Number{
			if(data.socialCount != null)
			{
				return data.socialCount;
			}
			return NaN;
		}
		/// <summary>
		/// The Social Rank of the player in this leaderboard before the score was submitted.
		/// </summary>
		//method type 5
		public function getSocialFrom() : Number{
			if(data.socialFrom != null)
			{
				return data.socialFrom;
			}
			return NaN;
		}
		/// <summary>
		/// The old social rank of the player as a percentage of the total number of friend scores in this leaderboard.
		/// </summary>
		//method type 5
		public function getSocialFromPercent() : Number{
			if(data.socialFromPercent != null)
			{
				return data.socialFromPercent;
			}
			return NaN;
		}
		/// <summary>
		/// The Social Rank of the player in this leaderboard after the score was submitted.
		/// </summary>
		//method type 5
		public function getSocialTo() : Number{
			if(data.socialTo != null)
			{
				return data.socialTo;
			}
			return NaN;
		}
		/// <summary>
		/// The old global rank of the player as a percentage of the total number of friend scores in this leaderboard.
		/// </summary>
		//method type 5
		public function getSocialToPercent() : Number{
			if(data.socialToPercent != null)
			{
				return data.socialToPercent;
			}
			return NaN;
		}
		/// <summary>
		/// The leaderboard entries of the global players that were beaten as part of this score submission. Requires Top N to be configured on the leaderboard
		/// </summary>
		//method type 1
		public function getTopNPassed() : Vector.<LeaderboardData>
		{
			var ret : Vector.<LeaderboardData> = new Vector.<LeaderboardData>();

			if(data.topNPassed != null)
			{
			 	var list : Array = data.topNPassed;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new LeaderboardData(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

