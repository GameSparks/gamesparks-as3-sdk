
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Achievement extends GSData
	{
	
		public function Achievement(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The desciption of the Achievement
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
		/// Whether to current player has earned the achievement
		/// </summary>
		//method type 5
		public function getEarned() : Boolean{
			if(data.earned != null)
			{
				return data.earned;
			}
			return false;
		}
		/// <summary>
		/// The name of the Achievement
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
		/// The custom property set configured on this Achievement
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
		/// The shortCode of the Achievement
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

