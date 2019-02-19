
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a secure, time sensitive URL to allow the game to upload a piece of player content to the GameSparks platform.
	*/
	public class GetUploadUrlRequest extends GSRequest
	{
	
		function GetUploadUrlRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetUploadUrlRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetUploadUrlRequest
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
						callback(new GetUploadUrlResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetUploadUrlRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	




		/**
		* Optional meta data which is stored against the player's uploaded content
		*/
		public function setUploadData( uploadData : Object ) : GetUploadUrlRequest
		{
			this.data["uploadData"] = uploadData;
			return this;
		}
				
	}
	
}

