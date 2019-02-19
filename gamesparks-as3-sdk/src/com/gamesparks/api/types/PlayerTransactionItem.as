
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class PlayerTransactionItem extends GSData
	{
	
		public function PlayerTransactionItem(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The amount of this item given to the player in the transaction
		/// </summary>
		//method type 5
		public function getAmount() : Number{
			if(data.amount != null)
			{
				return data.amount;
			}
			return NaN;
		}
		/// <summary>
		/// The quantity the player possesses after the transaction completed
		/// </summary>
		//method type 5
		public function getNewValue() : Number{
			if(data.newValue != null)
			{
				return data.newValue;
			}
			return NaN;
		}
		/// <summary>
		/// The type of item
		/// </summary>
		//method type 5
		public function getType() : String{
			if(data.type != null)
			{
				return data.type;
			}
			return null;
		}
	}

}

