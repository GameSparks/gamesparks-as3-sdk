
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a secure, time sensitive URL to a piece of content that was previously uploaded to the GameSparks platform by a player.
	*/
	public class GetUploadedRequest extends GSRequest
	{
	
		function GetUploadedRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetUploadedRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetUploadedRequest
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
						callback(new GetUploadedResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetUploadedRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	




		/**
		* The system generated id of the uploaded item
		*/
		public function setUploadId( uploadId : String ) : GetUploadedRequest
		{
			this.data["uploadId"] = uploadId;
			return this;
		}
				
	}
	
}

