
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns the list of the current players game friends.
	* A Game friend is someone in their social network who also plays the game.
	* Against each friend, an indicator is supplied to show whether the friend is currently connected to the GameSparks service
	*/
	public class ListGameFriendsRequest extends GSRequest
	{
	
		function ListGameFriendsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListGameFriendsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListGameFriendsRequest
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
						callback(new ListGameFriendsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListGameFriendsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	


				
	}
	
}

