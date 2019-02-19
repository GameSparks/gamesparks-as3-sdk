
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a summary of the list of the current players messages / notifications.
	* The list only contains un-dismissed messages, to dismiss a message see DismissMessageRequest.
	* The full message can be retrieved using GetMessageRequest Read the section on Messages to see the complete list of messages and their meanings.
	*/
	public class ListMessageSummaryRequest extends GSRequest
	{
	
		function ListMessageSummaryRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListMessageSummaryRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListMessageSummaryRequest
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
						callback(new ListMessageSummaryResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListMessageSummaryRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListMessageSummaryRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* The offset (page number) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListMessageSummaryRequest
		{
			this.data["offset"] = offset;
			return this;
		}

				
	}
	
}

