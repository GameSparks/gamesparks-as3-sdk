
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Processes a transaction receipt from an App Store in app purchase.
	* The GameSparks platform will validate the receipt with Apple and process the response. The transaction_id in the response will be recorded and the request will be rejected if the transaction_id has previously been processed, this prevents replay attacks.
	* Once verified, the players account will be credited with the Virtual Good, or Virtual Currency the purchase contains. The virtual good will be looked up by matching the product_id in the response with the 'IOS Product ID' configured against the virtual good.
	*/
	public class IOSBuyGoodsRequest extends GSRequest
	{
	
		function IOSBuyGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".IOSBuyGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):IOSBuyGoodsRequest
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
		
	
		public function setScriptData(scriptData:Object):IOSBuyGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ISO 4217 currency code representing the real-world currency used for this transaction.
		*/
		public function setCurrencyCode( currencyCode : String ) : IOSBuyGoodsRequest
		{
			this.data["currencyCode"] = currencyCode;
			return this;
		}


		/**
		* The receipt obtained from SKPaymentTransaction. transactionReceipt
		*/
		public function setReceipt( receipt : String ) : IOSBuyGoodsRequest
		{
			this.data["receipt"] = receipt;
			return this;
		}



		/**
		* Should the sandbox account be used
		*/
		public function setSandbox( sandbox : Boolean ) : IOSBuyGoodsRequest
		{
			this.data["sandbox"] = sandbox;
			return this;
		}


		/**
		* The price of this purchase
		*/
		public function setSubUnitPrice( subUnitPrice : Number ) : IOSBuyGoodsRequest
		{
			this.data["subUnitPrice"] = subUnitPrice;
			return this;
		}


		/**
		* If set to true, the transactionId from this receipt will not be globally valdidated, this will mean replays between players are possible.
		* It will only validate the transactionId has not been used by this player before.
		*/
		public function setUniqueTransactionByPlayer( uniqueTransactionByPlayer : Boolean ) : IOSBuyGoodsRequest
		{
			this.data["uniqueTransactionByPlayer"] = uniqueTransactionByPlayer;
			return this;
		}
				
	}
	
}

