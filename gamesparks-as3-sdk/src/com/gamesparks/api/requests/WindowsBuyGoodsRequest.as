
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Processes a transaction receipt from a windows store purchase.
	* The GameSparks platform will validate the receipt using the signature embedded in the xml. The Id in the xml will be recorded and the request will be rejected if the Id has previously been processed, this prevents replay attacks.
	* Once verified, the players account will be credited with the Virtual Good, or Virtual Currency the purchase contains. The virtual good will be looked up by matching the productId in the xml with the 'WP8 Product ID' configured against the virtual good.
	*/
	public class WindowsBuyGoodsRequest extends GSRequest
	{
	
		function WindowsBuyGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".WindowsBuyGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):WindowsBuyGoodsRequest
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
		
	
		public function setScriptData(scriptData:Object):WindowsBuyGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The ISO 4217 currency code representing the real-world currency used for this transaction.
		*/
		public function setCurrencyCode( currencyCode : String ) : WindowsBuyGoodsRequest
		{
			this.data["currencyCode"] = currencyCode;
			return this;
		}


		/**
		* Allows you to specify the platform
		*/
		public function setPlatform( platform : String ) : WindowsBuyGoodsRequest
		{
			this.data["platform"] = platform;
			return this;
		}


		/**
		* The xml reciept returned from the windows phone 8 store
		*/
		public function setReceipt( receipt : String ) : WindowsBuyGoodsRequest
		{
			this.data["receipt"] = receipt;
			return this;
		}



		/**
		* The price of this purchase
		*/
		public function setSubUnitPrice( subUnitPrice : Number ) : WindowsBuyGoodsRequest
		{
			this.data["subUnitPrice"] = subUnitPrice;
			return this;
		}


		/**
		* If set to true, the transactionId from this receipt will not be globally valdidated, this will mean replays between players are possible.
		* It will only validate the transactionId has not been used by this player before.
		*/
		public function setUniqueTransactionByPlayer( uniqueTransactionByPlayer : Boolean ) : WindowsBuyGoodsRequest
		{
			this.data["uniqueTransactionByPlayer"] = uniqueTransactionByPlayer;
			return this;
		}
				
	}
	
}

