
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing details of the revoked items
	*/
	public class RevokePurchaseGoodsResponse extends GSResponse
	{
	
		public function RevokePurchaseGoodsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The map of revoked goods
		*/ 
		public function getRevokedGoods() : Object{
			if(data.revokedGoods != null)
			{
				return data.revokedGoods;
			}
			return null;
		}
	}

}

