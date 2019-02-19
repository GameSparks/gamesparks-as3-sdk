
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Get the teams that the player is in. Can be filtered on team type and also on those teams that the player owns.
	*/
	public class GetMyTeamsRequest extends GSRequest
	{
	
		function GetMyTeamsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetMyTeamsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetMyTeamsRequest
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
						callback(new GetMyTeamsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetMyTeamsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* Set to true to only get teams owned by the player
		*/
		public function setOwnedOnly( ownedOnly : Boolean ) : GetMyTeamsRequest
		{
			this.data["ownedOnly"] = ownedOnly;
			return this;
		}



		/**
		* The type of teams to get
		*/
		public function setTeamTypes( teamTypes : Vector.<String> ) : GetMyTeamsRequest
		{
			this.data["teamTypes"] = toArray(teamTypes);
			return this;
		}
				
	}
	
}

