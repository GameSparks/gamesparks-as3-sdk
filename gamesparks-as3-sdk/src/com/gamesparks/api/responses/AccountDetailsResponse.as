
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the player's data.
	*/
	public class AccountDetailsResponse extends GSResponse
	{
	
		public function AccountDetailsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A JSON object containing the player's achievments
		*/ 
		public function getAchievements() : Vector.<String>
		{
			var ret : Vector.<String> = new Vector.<String>();

			if(data.achievements != null)
			{
			 	var list : Array = data.achievements;
			 	for(var item : String in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* A JSON object containing the player's currency balances
		*/ 
		public function getCurrencies() : Object{
			if(data.currencies != null)
			{
				return data.currencies;
			}
			return null;
		}
		/** <summary>
		* The amount of type 1 currency that the player holds
		*/ 
		public function getCurrency1() : Number{
			if(data.currency1 != null)
			{
				return data.currency1;
			}
			return NaN;
		}
		/** <summary>
		* The amount of type 2 currency that the player holds
		*/ 
		public function getCurrency2() : Number{
			if(data.currency2 != null)
			{
				return data.currency2;
			}
			return NaN;
		}
		/** <summary>
		* The amount of type 3 currency that the player holds
		*/ 
		public function getCurrency3() : Number{
			if(data.currency3 != null)
			{
				return data.currency3;
			}
			return NaN;
		}
		/** <summary>
		* The amount of type 4 currency that the player holds
		*/ 
		public function getCurrency4() : Number{
			if(data.currency4 != null)
			{
				return data.currency4;
			}
			return NaN;
		}
		/** <summary>
		* The amount of type 5 currency that the player holds
		*/ 
		public function getCurrency5() : Number{
			if(data.currency5 != null)
			{
				return data.currency5;
			}
			return NaN;
		}
		/** <summary>
		* The amount of type 6 currency that the player holds
		*/ 
		public function getCurrency6() : Number{
			if(data.currency6 != null)
			{
				return data.currency6;
			}
			return NaN;
		}
		/** <summary>
		* The player's display name
		*/ 
		public function getDisplayName() : String{
			if(data.displayName != null)
			{
				return data.displayName;
			}
			return null;
		}
		/** <summary>
		* A JSON object containing the player's external account details
		*/ 
		public function getExternalIds() : Object{
			if(data.externalIds != null)
			{
				return data.externalIds;
			}
			return null;
		}
		/** <summary>
		* A JSON object containing the player's location
		*/ 
		public function getLocation() : Location{
			if(data.location != null)
			{
				return new Location(data.location);
			}
			return null;
		}
		/** <summary>
		* A JSON object containing the player's currency balances
		*/ 
		public function getReservedCurrencies() : Object{
			if(data.reservedCurrencies != null)
			{
				return data.reservedCurrencies;
			}
			return null;
		}
		/** <summary>
		* The amount of type 1 currency that the player holds which is currently reserved
		*/ 
		public function getReservedCurrency1() : Object{
			if(data.reservedCurrency1 != null)
			{
				return data.reservedCurrency1;
			}
			return null;
		}
		/** <summary>
		* The amount of type 2 currency that the player holds which is currently reserved
		*/ 
		public function getReservedCurrency2() : Object{
			if(data.reservedCurrency2 != null)
			{
				return data.reservedCurrency2;
			}
			return null;
		}
		/** <summary>
		* The amount of type 3 currency that the player holds which is currently reserved
		*/ 
		public function getReservedCurrency3() : Object{
			if(data.reservedCurrency3 != null)
			{
				return data.reservedCurrency3;
			}
			return null;
		}
		/** <summary>
		* The amount of type 4 currency that the player holds which is currently reserved
		*/ 
		public function getReservedCurrency4() : Object{
			if(data.reservedCurrency4 != null)
			{
				return data.reservedCurrency4;
			}
			return null;
		}
		/** <summary>
		* The amount of type 5 currency that the player holds which is currently reserved
		*/ 
		public function getReservedCurrency5() : Object{
			if(data.reservedCurrency5 != null)
			{
				return data.reservedCurrency5;
			}
			return null;
		}
		/** <summary>
		* The amount of type 6 currency that the player holds which is currently reserved
		*/ 
		public function getReservedCurrency6() : Object{
			if(data.reservedCurrency6 != null)
			{
				return data.reservedCurrency6;
			}
			return null;
		}
		/** <summary>
		* The player's id
		*/ 
		public function getUserId() : String{
			if(data.userId != null)
			{
				return data.userId;
			}
			return null;
		}
		/** <summary>
		* A JSON object containing the virtual goods that the player owns
		*/ 
		public function getVirtualGoods() : Object{
			if(data.virtualGoods != null)
			{
				return data.virtualGoods;
			}
			return null;
		}
	}

}

