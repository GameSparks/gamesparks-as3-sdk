
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Schedules a bulk job to be run against multiple players.
	*/
	public class ScheduleBulkJobAdminRequest extends GSRequest
	{
	
		function ScheduleBulkJobAdminRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ScheduleBulkJobAdminRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ScheduleBulkJobAdminRequest
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
						callback(new ScheduleBulkJobAdminResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ScheduleBulkJobAdminRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Optional data to be passed into the script
		*/
		public function setData( data : Object ) : ScheduleBulkJobAdminRequest
		{
			this.data["data"] = data;
			return this;
		}


		/**
		* The short code of the cloud code module to be executed against each player
		*/
		public function setModuleShortCode( moduleShortCode : String ) : ScheduleBulkJobAdminRequest
		{
			this.data["moduleShortCode"] = moduleShortCode;
			return this;
		}


		/**
		* The query to be run against the player collection to identify which players to execute the cloud code for
		*/
		public function setPlayerQuery( playerQuery : Object ) : ScheduleBulkJobAdminRequest
		{
			this.data["playerQuery"] = playerQuery;
			return this;
		}



		/**
		* An optional date and time for this job to be run
		*/
		public function setScheduledTime( scheduledTime : Date ) : ScheduleBulkJobAdminRequest
		{
			this.data["scheduledTime"] = dateToRFC3339(scheduledTime);
			return this;
		}


		/**
		* The script to be executed against each player
		*/
		public function setScript( script : String ) : ScheduleBulkJobAdminRequest
		{
			this.data["script"] = script;
			return this;
		}
				
	}
	
}

