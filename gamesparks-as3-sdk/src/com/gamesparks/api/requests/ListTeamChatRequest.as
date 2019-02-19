
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Get a list of the messages sent to the team (by players using SendTeamChatMessageRequest).
	*/
	public class ListTeamChatRequest extends GSRequest
	{
	
		function ListTeamChatRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListTeamChatRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListTeamChatRequest
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
						callback(new ListTeamChatResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListTeamChatRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The number of messages to return (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListTeamChatRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* The offset (nth message) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListTeamChatRequest
		{
			this.data["offset"] = offset;
			return this;
		}


		/**
		* The team owner to find, used in combination with teamType. If not supplied the current players id will be used
		*/
		public function setOwnerId( ownerId : String ) : ListTeamChatRequest
		{
			this.data["ownerId"] = ownerId;
			return this;
		}



		/**
		* The teamId to find (may be null if teamType supplied)
		*/
		public function setTeamId( teamId : String ) : ListTeamChatRequest
		{
			this.data["teamId"] = teamId;
			return this;
		}


		/**
		* The teamType to find, used in combination with the current player, or the player defined by ownerId
		*/
		public function setTeamType( teamType : String ) : ListTeamChatRequest
		{
			this.data["teamType"] = teamType;
			return this;
		}
				
	}
	
}

