
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Location extends GSData
	{
	
		public function Location(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The city
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
		/// The country
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
		/// The latitude
		/// </summary>
		//method type 5
		public function getLatitide() : Number{
			if(data.latitide != null)
			{
				return data.latitide;
			}
			return NaN;
		}
		/// <summary>
		/// The longditute
		/// </summary>
		//method type 5
		public function getLongditute() : Number{
			if(data.longditute != null)
			{
				return data.longditute;
			}
			return NaN;
		}
	}

}

