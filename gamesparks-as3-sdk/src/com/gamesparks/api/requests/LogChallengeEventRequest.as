
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a user defined event to be triggered. The event will be posted to the challenge specified.
	* This call differs from most as it does not have a fixed format. The @class, challengeInstanceId and eventKey attributes are common, but the rest of the attributes are as defined in the Event object configured in the dev portal.
	* The example below shows a request to en event with a short code of HS with 2 attributes, 'HS' & 'GL'.
	*/
	public class LogChallengeEventRequest extends GSRequest
	{
	
		function LogChallengeEventRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".LogChallengeEventRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):LogChallengeEventRequest
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
						callback(new LogChallengeEventResponse(message));
					}
				}
			);
		}
		
		
		/**
		* Sets a numberic attribute by name
		*/
		public function setNumberEventAttribute(key : String, value : Number) : LogChallengeEventRequest{
			this.data[key] = value;
			return this;
		}
		
		/**
		* Sets a string attribute by name
		*/
		public function setStringEventAttribute(key : String, value : String) : LogChallengeEventRequest{
			this.data[key] = value;
			return this;
		}

		/**
		* Sets an Object (JSON) attribute by name
		*/
		public function setJSONEventAttribute(key : String, value : Object) :LogChallengeEventRequest {
			this.data[key] = value;
			return this;
		}
		
		



		/**
		* The ID challenge instance to target
		*/
		public function setChallengeInstanceId( challengeInstanceId : String ) : LogChallengeEventRequest
		{
			this.data["challengeInstanceId"] = challengeInstanceId;
			return this;
		}


		/**
		* The short code of the event to trigger
		*/
		public function setEventKey( eventKey : String ) : LogChallengeEventRequest
		{
			this.data["eventKey"] = eventKey;
			return this;
		}

				
	}
	
}

