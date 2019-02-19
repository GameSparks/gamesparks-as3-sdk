
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Leaderboard extends GSData
	{
	
		public function Leaderboard(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The leaderboard's description.
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
		/// The leaderboard's name.
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
		/// The custom property set configured on this Leaderboard
		/// </summary>
		//method type 5
		public function getPropertySet() : Object{
			if(data.propertySet != null)
			{
				return data.propertySet;
			}
			return null;
		}
		/// <summary>
		/// The leaderboard's short code.
		/// </summary>
		//method type 5
		public function getShortCode() : String{
			if(data.shortCode != null)
			{
				return data.shortCode;
			}
			return null;
		}
	}

}

