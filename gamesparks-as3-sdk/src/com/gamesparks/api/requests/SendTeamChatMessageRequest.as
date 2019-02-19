
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Send a message to all the players who are member of the given team
	*/
	public class SendTeamChatMessageRequest extends GSRequest
	{
	
		function SendTeamChatMessageRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".SendTeamChatMessageRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):SendTeamChatMessageRequest
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
						callback(new SendTeamChatMessageResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):SendTeamChatMessageRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The message to send
		*/
		public function setMessage( message : String ) : SendTeamChatMessageRequest
		{
			this.data["message"] = message;
			return this;
		}


		/**
		* The team owner to find, used in combination with teamType. If not supplied the current players id will be used
		*/
		public function setOwnerId( ownerId : String ) : SendTeamChatMessageRequest
		{
			this.data["ownerId"] = ownerId;
			return this;
		}



		/**
		* The teamId to find (may be null if teamType supplied)
		*/
		public function setTeamId( teamId : String ) : SendTeamChatMessageRequest
		{
			this.data["teamId"] = teamId;
			return this;
		}


		/**
		* The teamType to find, used in combination with the current player, or the player defined by ownerId
		*/
		public function setTeamType( teamType : String ) : SendTeamChatMessageRequest
		{
			this.data["teamType"] = teamType;
			return this;
		}
				
	}
	
}

