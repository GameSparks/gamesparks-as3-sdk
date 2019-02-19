
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Performs a request for multiple players.
	*/
	public class BatchAdminRequest extends GSRequest
	{
	
		function BatchAdminRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".BatchAdminRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):BatchAdminRequest
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
						callback(new BatchAdminResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):BatchAdminRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The players to run the request for.
		*/
		public function setPlayerIds( playerIds : Vector.<String> ) : BatchAdminRequest
		{
			this.data["playerIds"] = toArray(playerIds);
			return this;
		}


		/**
		* The request to be run for each player.
		*/
		public function setRequest( request : Object ) : BatchAdminRequest
		{
			this.data["request"] = request;
			return this;
		}

				
	}
	
}

