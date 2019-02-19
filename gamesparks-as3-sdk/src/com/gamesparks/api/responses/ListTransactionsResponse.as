
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response listing transactions for the player
	*/
	public class ListTransactionsResponse extends GSResponse
	{
	
		public function ListTransactionsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing player transactions
		*/ 
		public function getTransactionList() : Vector.<PlayerTransaction>
		{
			var ret : Vector.<PlayerTransaction> = new Vector.<PlayerTransaction>();

			if(data.transactionList != null)
			{
			 	var list : Array = data.transactionList;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerTransaction(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

