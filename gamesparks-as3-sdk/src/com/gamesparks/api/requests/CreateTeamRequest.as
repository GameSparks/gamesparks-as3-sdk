
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a new team to be created.
	*/
	public class CreateTeamRequest extends GSRequest
	{
	
		function CreateTeamRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".CreateTeamRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):CreateTeamRequest
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
						callback(new CreateTeamResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):CreateTeamRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	




		/**
		* An optional teamId to use
		*/
		public function setTeamId( teamId : String ) : CreateTeamRequest
		{
			this.data["teamId"] = teamId;
			return this;
		}


		/**
		* A display name to use
		*/
		public function setTeamName( teamName : String ) : CreateTeamRequest
		{
			this.data["teamName"] = teamName;
			return this;
		}


		/**
		* The type of team to be created
		*/
		public function setTeamType( teamType : String ) : CreateTeamRequest
		{
			this.data["teamType"] = teamType;
			return this;
		}
				
	}
	
}

