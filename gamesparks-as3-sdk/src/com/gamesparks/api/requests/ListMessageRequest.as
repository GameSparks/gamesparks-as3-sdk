
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the list of the current player's messages / notifications.
	* The list only contains un-dismissed messages, to dismiss a message see DismissMessageRequest Read the section on Messages to see the complete list of messages and their meaning.
	*/
	public class ListMessageRequest extends GSRequest
	{
	
		function ListMessageRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListMessageRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListMessageRequest
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
						callback(new ListMessageResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListMessageRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListMessageRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* An optional filter that limits the message types returned
		*/
		public function setInclude( _include : String ) : ListMessageRequest
		{
			this.data["include"] = _include;
			return this;
		}


		/**
		* The offset (page number) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListMessageRequest
		{
			this.data["offset"] = offset;
			return this;
		}

				
	}
	
}

