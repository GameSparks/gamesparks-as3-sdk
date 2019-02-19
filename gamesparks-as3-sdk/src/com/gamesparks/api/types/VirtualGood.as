
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class VirtualGood extends GSData
	{
	
		public function VirtualGood(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The Windows Phone 8 productId of the item.
		/// </summary>
		//method type 5
		public function getWP8StoreProductId() : String{
			if(data.WP8StoreProductId != null)
			{
				return data.WP8StoreProductId;
			}
			return null;
		}
		/// <summary>
		/// The Amazon Store productId of the item.
		/// </summary>
		//method type 5
		public function getAmazonStoreProductId() : String{
			if(data.amazonStoreProductId != null)
			{
				return data.amazonStoreProductId;
			}
			return null;
		}
		/// <summary>
		/// The Base Currency1 cost of the Virtual Good, before segmentation
		/// </summary>
		//method type 5
		public function getBaseCurrency1Cost() : Number{
			if(data.baseCurrency1Cost != null)
			{
				return data.baseCurrency1Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Base Currency2 cost of the Virtual Good, before segmentation
		/// </summary>
		//method type 5
		public function getBaseCurrency2Cost() : Number{
			if(data.baseCurrency2Cost != null)
			{
				return data.baseCurrency2Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Base Currency3 cost of the Virtual Good, before segmentation
		/// </summary>
		//method type 5
		public function getBaseCurrency3Cost() : Number{
			if(data.baseCurrency3Cost != null)
			{
				return data.baseCurrency3Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Base Currency4 cost of the Virtual Good, before segmentation
		/// </summary>
		//method type 5
		public function getBaseCurrency4Cost() : Number{
			if(data.baseCurrency4Cost != null)
			{
				return data.baseCurrency4Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Base Currency5 cost of the Virtual Good, before segmentation
		/// </summary>
		//method type 5
		public function getBaseCurrency5Cost() : Number{
			if(data.baseCurrency5Cost != null)
			{
				return data.baseCurrency5Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Base Currency6 cost of the Virtual Good, before segmentation
		/// </summary>
		//method type 5
		public function getBaseCurrency6Cost() : Number{
			if(data.baseCurrency6Cost != null)
			{
				return data.baseCurrency6Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Base currency costs of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getBaseCurrencyCosts() : Object{
			if(data.baseCurrencyCosts != null)
			{
				return data.baseCurrencyCosts;
			}
			return null;
		}
		/// <summary>
		/// Returns the bundle goods of the virtual good
		/// </summary>
		//method type 1
		public function getBundledGoods() : Vector.<BundledGood>
		{
			var ret : Vector.<BundledGood> = new Vector.<BundledGood>();

			if(data.bundledGoods != null)
			{
			 	var list : Array = data.bundledGoods;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new BundledGood(list[item]));
			 	}
			}
			
			return ret;
		}
		/// <summary>
		/// The Currency1 cost of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrency1Cost() : Number{
			if(data.currency1Cost != null)
			{
				return data.currency1Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Currency2 cost of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrency2Cost() : Number{
			if(data.currency2Cost != null)
			{
				return data.currency2Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Currency3 cost of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrency3Cost() : Number{
			if(data.currency3Cost != null)
			{
				return data.currency3Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Currency4 cost of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrency4Cost() : Number{
			if(data.currency4Cost != null)
			{
				return data.currency4Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Currency5 cost of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrency5Cost() : Number{
			if(data.currency5Cost != null)
			{
				return data.currency5Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Currency6 cost of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrency6Cost() : Number{
			if(data.currency6Cost != null)
			{
				return data.currency6Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The currency costs of the Virtual Good
		/// </summary>
		//method type 5
		public function getCurrencyCosts() : Object{
			if(data.currencyCosts != null)
			{
				return data.currencyCosts;
			}
			return null;
		}
		/// <summary>
		/// The description of the Virtual Good
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
		/// Whether the item is disabled.
		/// </summary>
		//method type 5
		public function getDisabled() : Boolean{
			if(data.disabled != null)
			{
				return data.disabled;
			}
			return false;
		}
		/// <summary>
		/// The google play productId of the item.
		/// </summary>
		//method type 5
		public function getGooglePlayProductId() : String{
			if(data.googlePlayProductId != null)
			{
				return data.googlePlayProductId;
			}
			return null;
		}
		/// <summary>
		/// The iOS AppStore productId of the item.
		/// </summary>
		//method type 5
		public function getIosAppStoreProductId() : String{
			if(data.iosAppStoreProductId != null)
			{
				return data.iosAppStoreProductId;
			}
			return null;
		}
		/// <summary>
		/// The maximum number of the Virtual Good that can be owned at one time
		/// </summary>
		//method type 5
		public function getMaxQuantity() : Number{
			if(data.maxQuantity != null)
			{
				return data.maxQuantity;
			}
			return NaN;
		}
		/// <summary>
		/// The name of the Virtual Good
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
		/// The custom property set configured on the item.
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
		/// The PSN Store productId of the item.
		/// </summary>
		//method type 5
		public function getPsnStoreProductId() : String{
			if(data.psnStoreProductId != null)
			{
				return data.psnStoreProductId;
			}
			return null;
		}
		/// <summary>
		/// The Segmented Currency1 cost of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrency1Cost() : Number{
			if(data.segmentedCurrency1Cost != null)
			{
				return data.segmentedCurrency1Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Segmented Currency2 cost of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrency2Cost() : Number{
			if(data.segmentedCurrency2Cost != null)
			{
				return data.segmentedCurrency2Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Segmented Currency3 cost of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrency3Cost() : Number{
			if(data.segmentedCurrency3Cost != null)
			{
				return data.segmentedCurrency3Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Segmented Currency4 cost of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrency4Cost() : Number{
			if(data.segmentedCurrency4Cost != null)
			{
				return data.segmentedCurrency4Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Segmented Currency5 cost of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrency5Cost() : Number{
			if(data.segmentedCurrency5Cost != null)
			{
				return data.segmentedCurrency5Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The Segmented Currency6 cost of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrency6Cost() : Number{
			if(data.segmentedCurrency6Cost != null)
			{
				return data.segmentedCurrency6Cost;
			}
			return NaN;
		}
		/// <summary>
		/// The segmented currency costs of the Virtual Good, before experiments
		/// </summary>
		//method type 5
		public function getSegmentedCurrencyCosts() : Object{
			if(data.segmentedCurrencyCosts != null)
			{
				return data.segmentedCurrencyCosts;
			}
			return null;
		}
		/// <summary>
		/// The short code of the Virtual Good
		/// </summary>
		//method type 5
		public function getShortCode() : String{
			if(data.shortCode != null)
			{
				return data.shortCode;
			}
			return null;
		}
		/// <summary>
		/// The Steam Store productId of the item.
		/// </summary>
		//method type 5
		public function getSteamStoreProductId() : String{
			if(data.steamStoreProductId != null)
			{
				return data.steamStoreProductId;
			}
			return null;
		}
		/// <summary>
		/// The tags of the Virtual Good
		/// </summary>
		//method type 5
		public function getTags() : String{
			if(data.tags != null)
			{
				return data.tags;
			}
			return null;
		}
		/// <summary>
		/// The type of the virtual good, "VGOOD" or "CURRENCY"
		/// </summary>
		//method type 5
		public function getType() : String{
			if(data.type != null)
			{
				return data.type;
			}
			return null;
		}
		/// <summary>
		/// The Windows 8 productId of the item.
		/// </summary>
		//method type 5
		public function getW8StoreProductId() : String{
			if(data.w8StoreProductId != null)
			{
				return data.w8StoreProductId;
			}
			return null;
		}
	}

}

