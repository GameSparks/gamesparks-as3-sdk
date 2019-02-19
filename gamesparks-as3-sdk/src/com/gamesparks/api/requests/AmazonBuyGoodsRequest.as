
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Processes the receipt from an Amazon in app purchase.
	* The GameSparks platform will validate the amazonUserId and receiptId with Amazon using the Amazon Purchase Secret configured against the game.
	* The receiptId in the data will be recorded and the request will be rejected if the receiptId has previously been processed, this prevents replay attacks.
	* Once verfied, the players account will be credited with the Virtual Good, or Virtual Currency the purchase contains. The virtual good will be looked up by matching the productId in the receipt with the 'Amazon Product Id' configured against the virtual good.
	*/
	public class AmazonBuyGoodsRequest extends GSRequest
	{
	
		function AmazonBuyGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".AmazonBuyGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):AmazonBuyGoodsRequest
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
		
	
		public function setScriptData(scriptData:Object):AmazonBuyGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The userId obtained from the UserData within a PurchaseResponse
		*/
		public function setAmazonUserId( amazonUserId : String ) : AmazonBuyGoodsRequest
		{
			this.data["amazonUserId"] = amazonUserId;
			return this;
		}


		/**
		* The ISO 4217 currency code representing the real-world currency used for this transaction.
		*/
		public function setCurrencyCode( currencyCode : String ) : AmazonBuyGoodsRequest
		{
			this.data["currencyCode"] = currencyCode;
			return this;
		}


		/**
		* The receiptId obtained from the Receipt within a PurchaseResponse
		*/
		public function setReceiptId( receiptId : String ) : AmazonBuyGoodsRequest
		{
			this.data["receiptId"] = receiptId;
			return this;
		}



		/**
		* The price of this purchase
		*/
		public function setSubUnitPrice( subUnitPrice : Number ) : AmazonBuyGoodsRequest
		{
			this.data["subUnitPrice"] = subUnitPrice;
			return this;
		}


		/**
		* If set to true, the transactionId from this receipt will not be globally valdidated, this will mean replays between players are possible.
		* It will only validate the transactionId has not been used by this player before.
		*/
		public function setUniqueTransactionByPlayer( uniqueTransactionByPlayer : Boolean ) : AmazonBuyGoodsRequest
		{
			this.data["uniqueTransactionByPlayer"] = uniqueTransactionByPlayer;
			return this;
		}
				
	}
	
}

