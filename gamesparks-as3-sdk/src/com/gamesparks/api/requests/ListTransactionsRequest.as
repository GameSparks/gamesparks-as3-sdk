
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a list of the current player's transaction history.
	*/
	public class ListTransactionsRequest extends GSRequest
	{
	
		function ListTransactionsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListTransactionsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListTransactionsRequest
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
						callback(new ListTransactionsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListTransactionsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Optional date constraint to list transactions from
		*/
		public function setDateFrom( dateFrom : Date ) : ListTransactionsRequest
		{
			this.data["dateFrom"] = dateToRFC3339(dateFrom);
			return this;
		}


		/**
		* Optional date constraint to list transactions to
		*/
		public function setDateTo( dateTo : Date ) : ListTransactionsRequest
		{
			this.data["dateTo"] = dateToRFC3339(dateTo);
			return this;
		}


		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListTransactionsRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* An optional filter that limits the transaction types returned
		*/
		public function setInclude( _include : String ) : ListTransactionsRequest
		{
			this.data["include"] = _include;
			return this;
		}


		/**
		* The offset (page number) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListTransactionsRequest
		{
			this.data["offset"] = offset;
			return this;
		}

				
	}
	
}

