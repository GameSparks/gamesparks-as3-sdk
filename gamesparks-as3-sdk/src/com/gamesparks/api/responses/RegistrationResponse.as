
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a registration request 
	*/
	public class RegistrationResponse extends GSResponse
	{
	
		public function RegistrationResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* 44b297a8-162a-4220-8c14-dad9a1946ad2
		*/ 
		public function getAuthToken() : String{
			if(data.authToken != null)
			{
				return data.authToken;
			}
			return null;
		}
		/** <summary>
		* The player's display name
		*/ 
		public function getDisplayName() : String{
			if(data.displayName != null)
			{
				return data.displayName;
			}
			return null;
		}
		/** <summary>
		* Indicates whether the player was created as part of this request
		*/ 
		public function getNewPlayer() : Boolean{
			if(data.newPlayer != null)
			{
				return data.newPlayer;
			}
			return false;
		}
		/** <summary>
		* A summary of the player that would be switched to.  Only returned as part of an error response for a request where automatic switching is disabled.
		*/ 
		public function getSwitchSummary() : Player{
			if(data.switchSummary != null)
			{
				return new Player(data.switchSummary);
			}
			return null;
		}
		/** <summary>
		* The player's id
		*/ 
		public function getUserId() : String{
			if(data.userId != null)
			{
				return data.userId;
			}
			return null;
		}
	}

}

