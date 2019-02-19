
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Processes a 'orderid' from a Steam.
	* The GameSparks platform will validate the 'orderid' with Steam and process the response. The 'orderid' from the response will be recorded and the request will be rejected, if the 'orderid' has previously been processed, this prevents replay attacks.
	* Once verified, the players account will be credited with the Virtual Good, or Virtual Currency the purchase contains. The virtual good will be looked up by matching the 'itemid' in the response with the 'Steam Product ID' configured against the virtual good.
	*/
	public class SteamBuyGoodsRequest extends GSRequest
	{
	
		function SteamBuyGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".SteamBuyGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):SteamBuyGoodsRequest
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
		
	
		public function setScriptData(scriptData:Object):SteamBuyGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ISO 4217 currency code representing the real-world currency used for this transaction.
		*/
		public function setCurrencyCode( currencyCode : String ) : SteamBuyGoodsRequest
		{
			this.data["currencyCode"] = currencyCode;
			return this;
		}


		/**
		* Unique 64-bit ID for order
		*/
		public function setOrderId( orderId : String ) : SteamBuyGoodsRequest
		{
			this.data["orderId"] = orderId;
			return this;
		}



		/**
		* The price of this purchase
		*/
		public function setSubUnitPrice( subUnitPrice : Number ) : SteamBuyGoodsRequest
		{
			this.data["subUnitPrice"] = subUnitPrice;
			return this;
		}


		/**
		* If set to true, the transactionId from this receipt will not be globally valdidated, this will mean replays between players are possible.
		* It will only validate the transactionId has not been used by this player before.
		*/
		public function setUniqueTransactionByPlayer( uniqueTransactionByPlayer : Boolean ) : SteamBuyGoodsRequest
		{
			this.data["uniqueTransactionByPlayer"] = uniqueTransactionByPlayer;
			return this;
		}
				
	}
	
}

