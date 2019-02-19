
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Cancel one or more bulk jobs.
	*/
	public class CancelBulkJobAdminRequest extends GSRequest
	{
	
		function CancelBulkJobAdminRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".CancelBulkJobAdminRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):CancelBulkJobAdminRequest
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
						callback(new CancelBulkJobAdminResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):CancelBulkJobAdminRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The IDs of existing bulk jobs to cancel
		*/
		public function setBulkJobIds( bulkJobIds : Vector.<String> ) : CancelBulkJobAdminRequest
		{
			this.data["bulkJobIds"] = toArray(bulkJobIds);
			return this;
		}

				
	}
	
}

