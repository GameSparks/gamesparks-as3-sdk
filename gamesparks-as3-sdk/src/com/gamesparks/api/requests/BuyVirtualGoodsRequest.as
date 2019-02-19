
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Purchases a virtual good with an in game currency. Once purchased the virtual good will be added to the players account.
	*/
	public class BuyVirtualGoodsRequest extends GSRequest
	{
	
		function BuyVirtualGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".BuyVirtualGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):BuyVirtualGoodsRequest
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
		
	
		public function setScriptData(scriptData:Object):BuyVirtualGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The short code of the currency to use
		*/
		public function setCurrencyShortCode( currencyShortCode : String ) : BuyVirtualGoodsRequest
		{
			this.data["currencyShortCode"] = currencyShortCode;
			return this;
		}


		/**
		* Which virtual currency to use. (1 to 6)
		*/
		public function setCurrencyType( currencyType : Number ) : BuyVirtualGoodsRequest
		{
			this.data["currencyType"] = currencyType;
			return this;
		}


		/**
		* The number of items to purchase
		*/
		public function setQuantity( quantity : Number ) : BuyVirtualGoodsRequest
		{
			this.data["quantity"] = quantity;
			return this;
		}



		/**
		* The short code of the virtual good to be purchased
		*/
		public function setShortCode( shortCode : String ) : BuyVirtualGoodsRequest
		{
			this.data["shortCode"] = shortCode;
			return this;
		}
				
	}
	
}

