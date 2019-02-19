
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Sends a message to one or more game friend(s). A game friend is someone in the players social network who also plays the game.
	*/
	public class SendFriendMessageRequest extends GSRequest
	{
	
		function SendFriendMessageRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".SendFriendMessageRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):SendFriendMessageRequest
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
						callback(new SendFriendMessageResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):SendFriendMessageRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* One or more friend ID's. This can be supplied as a single string, or a JSON array
		*/
		public function setFriendIds( friendIds : Vector.<String> ) : SendFriendMessageRequest
		{
			this.data["friendIds"] = toArray(friendIds);
			return this;
		}


		/**
		* The message to send
		*/
		public function setMessage( message : String ) : SendFriendMessageRequest
		{
			this.data["message"] = message;
			return this;
		}

				
	}
	
}

