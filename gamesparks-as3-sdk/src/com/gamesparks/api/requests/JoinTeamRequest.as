
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a player to join a team or a team to be retrieved.
	*/
	public class JoinTeamRequest extends GSRequest
	{
	
		function JoinTeamRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".JoinTeamRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):JoinTeamRequest
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
						callback(new JoinTeamResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):JoinTeamRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The team owner to find, used in combination with teamType. If not supplied the current players id will be used
		*/
		public function setOwnerId( ownerId : String ) : JoinTeamRequest
		{
			this.data["ownerId"] = ownerId;
			return this;
		}



		/**
		* The teamId to find (may be null if teamType supplied)
		*/
		public function setTeamId( teamId : String ) : JoinTeamRequest
		{
			this.data["teamId"] = teamId;
			return this;
		}


		/**
		* The teamType to find, used in combination with the current player, or the player defined by ownerId
		*/
		public function setTeamType( teamType : String ) : JoinTeamRequest
		{
			this.data["teamType"] = teamType;
			return this;
		}
				
	}
	
}

