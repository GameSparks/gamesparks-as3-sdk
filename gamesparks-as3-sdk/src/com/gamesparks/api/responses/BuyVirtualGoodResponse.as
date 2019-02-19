
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing details of the bought items
	*/
	public class BuyVirtualGoodResponse extends GSResponse
	{
	
		public function BuyVirtualGoodResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A JSON object containing details of the bought items
		*/ 
		public function getBoughtItems() : Vector.<Boughtitem>
		{
			var ret : Vector.<Boughtitem> = new Vector.<Boughtitem>();

			if(data.boughtItems != null)
			{
			 	var list : Array = data.boughtItems;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Boughtitem(list[item]));
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* An object containing the short code and amount added for each currency
		*/ 
		public function getCurrenciesAdded() : Object{
			if(data.currenciesAdded != null)
			{
				return data.currenciesAdded;
			}
			return null;
		}
		/** <summary>
		* How much currency type 1 was added
		*/ 
		public function getCurrency1Added() : Number{
			if(data.currency1Added != null)
			{
				return data.currency1Added;
			}
			return NaN;
		}
		/** <summary>
		* How much currency type 2 was added
		*/ 
		public function getCurrency2Added() : Number{
			if(data.currency2Added != null)
			{
				return data.currency2Added;
			}
			return NaN;
		}
		/** <summary>
		* How much currency type 3 was added
		*/ 
		public function getCurrency3Added() : Number{
			if(data.currency3Added != null)
			{
				return data.currency3Added;
			}
			return NaN;
		}
		/** <summary>
		* How much currency type 4 was added
		*/ 
		public function getCurrency4Added() : Number{
			if(data.currency4Added != null)
			{
				return data.currency4Added;
			}
			return NaN;
		}
		/** <summary>
		* How much currency type 5 was added
		*/ 
		public function getCurrency5Added() : Number{
			if(data.currency5Added != null)
			{
				return data.currency5Added;
			}
			return NaN;
		}
		/** <summary>
		* How much currency type 6 was added
		*/ 
		public function getCurrency6Added() : Number{
			if(data.currency6Added != null)
			{
				return data.currency6Added;
			}
			return NaN;
		}
		/** <summary>
		* For a buy with currency request, how much currency was used
		*/ 
		public function getCurrencyConsumed() : Number{
			if(data.currencyConsumed != null)
			{
				return data.currencyConsumed;
			}
			return NaN;
		}
		/** <summary>
		* For a buy with currency request, the short code of the currency used
		*/ 
		public function getCurrencyShortCode() : String{
			if(data.currencyShortCode != null)
			{
				return data.currencyShortCode;
			}
			return null;
		}
		/** <summary>
		* For a buy with currency request, which currency type was used
		*/ 
		public function getCurrencyType() : Number{
			if(data.currencyType != null)
			{
				return data.currencyType;
			}
			return NaN;
		}
		/** <summary>
		* A list of invalid items for this purchase (if any). This field is populated only for store buys
		*/ 
		public function getInvalidItems() : Vector.<String>
		{
			var ret : Vector.<String> = new Vector.<String>();

			if(data.invalidItems != null)
			{
			 	var list : Array = data.invalidItems;
			 	for(var item : String in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* The list of transactionIds, for this purchase, if they exist. This field is populated only for store buys
		*/ 
		public function getTransactionIds() : Vector.<String>
		{
			var ret : Vector.<String> = new Vector.<String>();

			if(data.transactionIds != null)
			{
			 	var list : Array = data.transactionIds;
			 	for(var item : String in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
	}

}

