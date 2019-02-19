
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the list of the current players friends in their social network, who are not yet playing this game.
	* This is dependent on the security and privacy policies of the social network.
	* For example, Facebook's policies prevent this friend list being provided, whereas Twitter will supply a list of users who are not playing the game.
	*/
	public class ListInviteFriendsRequest extends GSRequest
	{
	
		function ListInviteFriendsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListInviteFriendsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListInviteFriendsRequest
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
						callback(new ListInviteFriendsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListInviteFriendsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

