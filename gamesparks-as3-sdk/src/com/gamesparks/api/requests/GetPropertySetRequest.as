
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Get the property set for the given short Code.
	*/
	public class GetPropertySetRequest extends GSRequest
	{
	
		function GetPropertySetRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetPropertySetRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetPropertySetRequest
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
						callback(new GetPropertySetResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetPropertySetRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The shortCode of the property set to return.
		*/
		public function setPropertySetShortCode( propertySetShortCode : String ) : GetPropertySetRequest
		{
			this.data["propertySetShortCode"] = propertySetShortCode;
			return this;
		}

				
	}
	
}

