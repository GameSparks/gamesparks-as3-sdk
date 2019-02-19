
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Revokes the purchase of a good. The items aquired will be removed from remaining items of the player.
	*/
	public class RevokePurchaseGoodsRequest extends GSRequest
	{
	
		function RevokePurchaseGoodsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".RevokePurchaseGoodsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):RevokePurchaseGoodsRequest
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
						callback(new RevokePurchaseGoodsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):RevokePurchaseGoodsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The playerId for which to revoke the transaction
		*/
		public function setPlayerId( playerId : String ) : RevokePurchaseGoodsRequest
		{
			this.data["playerId"] = playerId;
			return this;
		}



		/**
		* The store type for which to revoke these transactions
		*/
		public function setStoreType( storeType : String ) : RevokePurchaseGoodsRequest
		{
			this.data["storeType"] = storeType;
			return this;
		}


		/**
		* The list of transactionIds to revoke
		*/
		public function setTransactionIds( transactionIds : Vector.<String> ) : RevokePurchaseGoodsRequest
		{
			this.data["transactionIds"] = toArray(transactionIds);
			return this;
		}
				
	}
	
}

