
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class ChallengeType extends GSData
	{
	
		public function ChallengeType(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The shortCode for this challenge.
		/// </summary>
		//method type 5
		public function getChallengeShortCode() : String{
			if(data.challengeShortCode != null)
			{
				return data.challengeShortCode;
			}
			return null;
		}
		/// <summary>
		/// The description of this challenge.
		/// </summary>
		//method type 5
		public function getDescription() : String{
			if(data.description != null)
			{
				return data.description;
			}
			return null;
		}
		/// <summary>
		/// The name of the leaderboard for this challenge.
		/// </summary>
		//method type 5
		public function getGetleaderboardName() : String{
			if(data.getleaderboardName != null)
			{
				return data.getleaderboardName;
			}
			return null;
		}
		/// <summary>
		/// The name of this challenge.
		/// </summary>
		//method type 5
		public function getName() : String{
			if(data.name != null)
			{
				return data.name;
			}
			return null;
		}
		/// <summary>
		/// The tags for this challenge.
		/// </summary>
		//method type 5
		public function getTags() : String{
			if(data.tags != null)
			{
				return data.tags;
			}
			return null;
		}
	}

}

