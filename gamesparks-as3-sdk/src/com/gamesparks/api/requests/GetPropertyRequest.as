
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Get the property for the given short Code.
	*/
	public class GetPropertyRequest extends GSRequest
	{
	
		function GetPropertyRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetPropertyRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetPropertyRequest
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
						callback(new GetPropertyResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetPropertyRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The shortCode of the property to return.
		*/
		public function setPropertyShortCode( propertyShortCode : String ) : GetPropertyRequest
		{
			this.data["propertyShortCode"] = propertyShortCode;
			return this;
		}

				
	}
	
}

