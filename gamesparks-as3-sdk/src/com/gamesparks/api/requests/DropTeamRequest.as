
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a player to drop a team.
	*/
	public class DropTeamRequest extends GSRequest
	{
	
		function DropTeamRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".DropTeamRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):DropTeamRequest
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
						callback(new DropTeamResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):DropTeamRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The team owner to find, used in combination with teamType. If not supplied the current players id will be used
		*/
		public function setOwnerId( ownerId : String ) : DropTeamRequest
		{
			this.data["ownerId"] = ownerId;
			return this;
		}



		/**
		* The teamId to find (may be null if teamType supplied)
		*/
		public function setTeamId( teamId : String ) : DropTeamRequest
		{
			this.data["teamId"] = teamId;
			return this;
		}


		/**
		* The teamType to find, used in combination with the current player, or the player defined by ownerId
		*/
		public function setTeamType( teamType : String ) : DropTeamRequest
		{
			this.data["teamType"] = teamType;
			return this;
		}
				
	}
	
}

