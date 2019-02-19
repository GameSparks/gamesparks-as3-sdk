
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the list of configured virtual goods.
	*/
	public class ListVirtualGoodsResponse extends GSResponse
	{
	
		public function ListVirtualGoodsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing virtual goods data
		*/ 
		public function getVirtualGoods() : Vector.<VirtualGood>
		{
			var ret : Vector.<VirtualGood> = new Vector.<VirtualGood>();

			if(data.virtualGoods != null)
			{
			 	var list : Array = data.virtualGoods;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new VirtualGood(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

