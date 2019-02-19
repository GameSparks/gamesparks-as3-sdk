
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a list of challenges in the state defined in the 'state' field.
	* The response can be further filtered by passing a shortCode field which will limit the returned lists to challenges of that short code.
	* Valid states are:
	* WAITING : The challenge has been issued and accepted and is waiting for the start date.
	* RUNNING : The challenge is active.
	* ISSUED : The challenge has been issued by the current player and is waiting to be accepted.
	* RECEIVED : The challenge has been issued to the current player and is waiting to be accepted.
	* COMPLETE : The challenge has completed.
	* DECLINED : The challenge has been issued by the current player and has been declined.
	*/
	public class ListChallengeRequest extends GSRequest
	{
	
		function ListChallengeRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListChallengeRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListChallengeRequest
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
						callback(new ListChallengeResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListChallengeRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The number of items to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListChallengeRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* The offset (page number) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListChallengeRequest
		{
			this.data["offset"] = offset;
			return this;
		}



		/**
		* The type of challenge to return
		*/
		public function setShortCode( shortCode : String ) : ListChallengeRequest
		{
			this.data["shortCode"] = shortCode;
			return this;
		}


		/**
		* The state of the challenged to be returned
		*/
		public function setState( state : String ) : ListChallengeRequest
		{
			this.data["state"] = state;
			return this;
		}


		/**
		* The states of the challenges to be returned
		*/
		public function setStates( states : Vector.<String> ) : ListChallengeRequest
		{
			this.data["states"] = toArray(states);
			return this;
		}
				
	}
	
}

