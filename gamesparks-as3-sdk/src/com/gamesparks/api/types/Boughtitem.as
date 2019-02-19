
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class Boughtitem extends GSData
	{
	
		public function Boughtitem(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The quantity of the bought item
		/// </summary>
		//method type 5
		public function getQuantity() : Number{
			if(data.quantity != null)
			{
				return data.quantity;
			}
			return NaN;
		}
		/// <summary>
		/// The short code of the bought item
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

