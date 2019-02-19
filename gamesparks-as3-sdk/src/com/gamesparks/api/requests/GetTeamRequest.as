
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows the details of a team to be retrieved.
	*/
	public class GetTeamRequest extends GSRequest
	{
	
		function GetTeamRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".GetTeamRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):GetTeamRequest
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
						callback(new GetTeamResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):GetTeamRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The team owner to find, used in combination with teamType. If not supplied the current players id will be used
		*/
		public function setOwnerId( ownerId : String ) : GetTeamRequest
		{
			this.data["ownerId"] = ownerId;
			return this;
		}



		/**
		* The teamId to find (may be null if teamType supplied)
		*/
		public function setTeamId( teamId : String ) : GetTeamRequest
		{
			this.data["teamId"] = teamId;
			return this;
		}


		/**
		* The teamType to find, used in combination with the current player, or the player defined by ownerId
		*/
		public function setTeamType( teamType : String ) : GetTeamRequest
		{
			this.data["teamType"] = teamType;
			return this;
		}
				
	}
	
}

