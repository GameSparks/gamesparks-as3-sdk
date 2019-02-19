
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the list of the current player's messages / notifications.
	* The list only contains un-dismissed messages, to dismiss a message see DismissMessageRequest Read the section on Messages to see the complete list of messages and their meaning.
	*/
	public class ListMessageDetailRequest extends GSRequest
	{
	
		function ListMessageDetailRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListMessageDetailRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListMessageDetailRequest
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
						callback(new ListMessageDetailResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListMessageDetailRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListMessageDetailRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* An optional filter that limits the message types returned
		*/
		public function setInclude( _include : String ) : ListMessageDetailRequest
		{
			this.data["include"] = _include;
			return this;
		}


		/**
		* The offset (page number) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListMessageDetailRequest
		{
			this.data["offset"] = offset;
			return this;
		}



		/**
		* The status of messages to be retrieved. If omitted, messages of all statuses will be retrieved
		*/
		public function setStatus( status : String ) : ListMessageDetailRequest
		{
			this.data["status"] = status;
			return this;
		}
				
	}
	
}

