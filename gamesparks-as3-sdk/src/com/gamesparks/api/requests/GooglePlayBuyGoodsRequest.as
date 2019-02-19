
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Processes the response from a Google Play in app purchase flow.
	* The GameSparks platform will validate the signature and signed data with the Google Play Public Key configured against the game.
	* The orderId in the data will be recorded and the request will be rejected if the orderId has previously been processed, this prevents replay attacks.
	* Once verfied, the players account will be credited with the Virtual Good, or Virtual Currency the purchase contains. The virtual good will be looked up by matching the productId in the signed data with the 'Google Product ID' configured against the virtual good.
	* It is critical that the signedData is sent exactly as it is returned form google, including any whitespace. Any modification of the signedData will cause the verification process to fail.
	*/
	public class GooglePlayBuyGoodsRequest extends GSRequest
	{
	
		function GooglePlayBuyGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GooglePlayBuyGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GooglePlayBuyGoodsRequest
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
		
	
		public function setScriptData(scriptData:Object):GooglePlayBuyGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ISO 4217 currency code representing the real-world currency used for this transaction.
		*/
		public function setCurrencyCode( currencyCode : String ) : GooglePlayBuyGoodsRequest
		{
			this.data["currencyCode"] = currencyCode;
			return this;
		}



		/**
		* The value obtained from data.getStringExtra("INAPP_DATA_SIGNATURE");
		*/
		public function setSignature( signature : String ) : GooglePlayBuyGoodsRequest
		{
			this.data["signature"] = signature;
			return this;
		}


		/**
		* The value obtained from data.getStringExtra("INAPP_PURCHASE_DATA")
		*/
		public function setSignedData( signedData : String ) : GooglePlayBuyGoodsRequest
		{
			this.data["signedData"] = signedData;
			return this;
		}


		/**
		* The price of this purchase
		*/
		public function setSubUnitPrice( subUnitPrice : Number ) : GooglePlayBuyGoodsRequest
		{
			this.data["subUnitPrice"] = subUnitPrice;
			return this;
		}


		/**
		* If set to true, the transactionId from this receipt will not be globally valdidated, this will mean replays between players are possible.
		* It will only validate the transactionId has not been used by this player before.
		*/
		public function setUniqueTransactionByPlayer( uniqueTransactionByPlayer : Boolean ) : GooglePlayBuyGoodsRequest
		{
			this.data["uniqueTransactionByPlayer"] = uniqueTransactionByPlayer;
			return this;
		}
				
	}
	
}

