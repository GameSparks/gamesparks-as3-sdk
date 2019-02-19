
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Records some custom analytical data.
	* Simple analytics, where you just need to track the number of times something happened, just take a key parameter. We'll record the players id against the data to allow you to report on averages per user
	* Timed analytics allow you to send start and end timer requests, and with this data GameSparks can track the length of time something takes.
	* If an end request is sent without a matching start timer the request will fail silently and your analytics data might not contain what you expect.
	* If both start and end are supplied, the request will be treated as a start timer.
	* An additional data payload can be attached to the event for advanced reporting. This data can be a string, number or JSON object.
	* If a second start timer is created using a key that has already had a start timer created without an end, the previous one will be marked as abandoned.
	*/
	public class AnalyticsRequest extends GSRequest
	{
	
		function AnalyticsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".AnalyticsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):AnalyticsRequest
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
						callback(new AnalyticsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):AnalyticsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Custom data payload
		*/
		public function setData( data : Object ) : AnalyticsRequest
		{
			this.data["data"] = data;
			return this;
		}


		/**
		* Use the value true to indicate it's an end timer
		*/
		public function setEnd( end : Boolean ) : AnalyticsRequest
		{
			this.data["end"] = end;
			return this;
		}


		/**
		* The key you want to track this analysis with.
		*/
		public function setKey( key : String ) : AnalyticsRequest
		{
			this.data["key"] = key;
			return this;
		}



		/**
		* Use the value true to indicate it's a start timer
		*/
		public function setStart( start : Boolean ) : AnalyticsRequest
		{
			this.data["start"] = start;
			return this;
		}
				
	}
	
}

