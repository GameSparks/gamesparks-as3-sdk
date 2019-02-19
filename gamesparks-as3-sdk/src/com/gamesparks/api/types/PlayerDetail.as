
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class PlayerDetail extends GSData
	{
	
		public function PlayerDetail(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// A player's external identifiers
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
		/// A player's id
		/// </summary>
		//method type 5
		public function getId() : String{
			if(data.id != null)
			{
				return data.id;
			}
			return null;
		}
		/// <summary>
		/// A player's name
		/// </summary>
		//method type 5
		public function getName() : String{
			if(data.name != null)
			{
				return data.name;
			}
			return null;
		}
	}

}

