
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a user defined event to be triggered.
	* This call differs from most as it does not have a fixed format. The @class and eventKey attributes are common, but the rest of the attributes are as defined in the Event object configured in the dev portal.
	* The example below shows a request to an event with a short code of HS with 2 attributes, 'HS' & 'GL'.
	*/
	public class LogEventRequest extends GSRequest
	{
	
		function LogEventRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".LogEventRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):LogEventRequest
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
						callback(new LogEventResponse(message));
					}
				}
			);
		}
		
		
		/**
		* Sets a numberic attribute by name
		*/
		public function setNumberEventAttribute(key : String, value : Number) : LogEventRequest{
			this.data[key] = value;
			return this;
		}
		
		/**
		* Sets a string attribute by name
		*/
		public function setStringEventAttribute(key : String, value : String) : LogEventRequest{
			this.data[key] = value;
			return this;
		}

		/**
		* Sets an Object (JSON) attribute by name
		*/
		public function setJSONEventAttribute(key : String, value : Object) :LogEventRequest {
			this.data[key] = value;
			return this;
		}
		
		



		/**
		* The short code of the event to trigger
		*/
		public function setEventKey( eventKey : String ) : LogEventRequest
		{
			this.data["eventKey"] = eventKey;
			return this;
		}

				
	}
	
}

