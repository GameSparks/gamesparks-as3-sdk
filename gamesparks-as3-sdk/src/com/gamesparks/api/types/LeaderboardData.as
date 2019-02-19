
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class LeaderboardData extends GSData
	{
	
		public function LeaderboardData(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The city where the player was located when they logged this leaderboard entry.
		/// </summary>
		//method type 5
		public function getCity() : String{
			if(data.city != null)
			{
				return data.city;
			}
			return null;
		}
		/// <summary>
		/// The country code where the player was located when they logged this leaderboard entry.
		/// </summary>
		//method type 5
		public function getCountry() : String{
			if(data.country != null)
			{
				return data.country;
			}
			return null;
		}
		/// <summary>
		/// The players rank.
		/// </summary>
		//method type 5
		public function getExternalIds() : Object{
			if(data.externalIds != null)
			{
				return data.externalIds;
			}
			return null;
		}
		/// <summary>
		/// The players rank.
		/// </summary>
		//method type 5
		public function getRank() : Number{
			if(data.rank != null)
			{
				return data.rank;
			}
			return NaN;
		}
		/// <summary>
		/// The unique player id for this leaderboard entry.
		/// </summary>
		//method type 5
		public function getUserId() : String{
			if(data.userId != null)
			{
				return data.userId;
			}
			return null;
		}
		/// <summary>
		/// The players display name.
		/// </summary>
		//method type 5
		public function getUserName() : String{
			if(data.userName != null)
			{
				return data.userName;
			}
			return null;
		}
		/// <summary>
		/// The date when this leaderboard entry was created.
		/// </summary>
		//method type 5
		public function getWhen() : String{
			if(data.when != null)
			{
				return data.when;
			}
			return null;
		}
	}

}

