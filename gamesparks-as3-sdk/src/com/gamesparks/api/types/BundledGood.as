
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class BundledGood extends GSData
	{
	
		public function BundledGood(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The number of items bundled
		/// </summary>
		//method type 5
		public function getQty() : Number{
			if(data.qty != null)
			{
				return data.qty;
			}
			return NaN;
		}
		/// <summary>
		/// The shortCode of the bundled good
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

