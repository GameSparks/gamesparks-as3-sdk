
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Processes an update of entitlement in PlayStation network.
	* The GameSparks platform will update the 'use_count' for an entitlement (by default 'use_count' is 1).
	* The request will be rejected if entitlement 'use_limit' is 0
	* GampSparks platform by default will use internally saved PSN user access token
	*/
	public class PsnBuyGoodsRequest extends GSRequest
	{
	
		function PsnBuyGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".PsnBuyGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):PsnBuyGoodsRequest
		{
			this.timeoutSeconds = timeoutSeconds; 
			return this;
		}
		
		/**
		* Send the request to the server. The callback function will be invoked with the response
		*/
		public override function send (callback : Function) : String{
			return super.send( 
				function(message:Object) : void{
					if(callback != null)
					{
						callback(new BuyVirtualGoodResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):PsnBuyGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The authorization code obtained from PSN, as described here https://ps4.scedev.net/resources/documents/SDK/latest/NpAuth-Reference/0008.html
		*/
		public function setAuthorizationCode( authorizationCode : String ) : PsnBuyGoodsRequest
		{
			this.data["authorizationCode"] = authorizationCode;
			return this;
		}


		/**
		* The ISO 4217 currency code representing the real-world currency used for this transaction.
		*/
		public function setCurrencyCode( currencyCode : String ) : PsnBuyGoodsRequest
		{
			this.data["currencyCode"] = currencyCode;
			return this;
		}


		/**
		* Specify the entitlement label of the entitlement to update. (Not an entitlement ID).
		*/
		public function setEntitlementLabel( entitlementLabel : String ) : PsnBuyGoodsRequest
		{
			this.data["entitlementLabel"] = entitlementLabel;
			return this;
		}


		/**
		* When using the authorization code obtained from PlayStation®4/PlayStation®Vita/PlayStation®3, this is not required.
		* When using the authorization code obtained with the PC authentication gateway, set the URI issued from the Developer Network website.
		*/
		public function setRedirectUri( redirectUri : String ) : PsnBuyGoodsRequest
		{
			this.data["redirectUri"] = redirectUri;
			return this;
		}



		/**
		* The price of this purchase
		*/
		public function setSubUnitPrice( subUnitPrice : Number ) : PsnBuyGoodsRequest
		{
			this.data["subUnitPrice"] = subUnitPrice;
			return this;
		}


		/**
		* If set to true, the transactionId from this receipt will not be globally valdidated, this will mean replays between players are possible.
		* It will only validate the transactionId has not been used by this player before.
		*/
		public function setUniqueTransactionByPlayer( uniqueTransactionByPlayer : Boolean ) : PsnBuyGoodsRequest
		{
			this.data["uniqueTransactionByPlayer"] = uniqueTransactionByPlayer;
			return this;
		}


		/**
		* Optional - specify the quantity of the entitlement to use. Default = 1
		*/
		public function setUseCount( useCount : Number ) : PsnBuyGoodsRequest
		{
			this.data["useCount"] = useCount;
			return this;
		}
				
	}
	
}

