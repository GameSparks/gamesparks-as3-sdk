
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Lists existing bulk jobs.
	*/
	public class ListBulkJobsAdminRequest extends GSRequest
	{
	
		function ListBulkJobsAdminRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListBulkJobsAdminRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListBulkJobsAdminRequest
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
						callback(new ListBulkJobsAdminResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListBulkJobsAdminRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The IDs of existing bulk jobs to get details for
		*/
		public function setBulkJobIds( bulkJobIds : Vector.<String> ) : ListBulkJobsAdminRequest
		{
			this.data["bulkJobIds"] = toArray(bulkJobIds);
			return this;
		}

				
	}
	
}

