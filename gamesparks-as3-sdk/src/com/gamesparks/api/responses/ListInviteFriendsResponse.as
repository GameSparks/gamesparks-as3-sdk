
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing a list of non game friends.
	*/
	public class ListInviteFriendsResponse extends GSResponse
	{
	
		public function ListInviteFriendsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing game friend data
		*/ 
		public function getFriends() : Vector.<InvitableFriend>
		{
			var ret : Vector.<InvitableFriend> = new Vector.<InvitableFriend>();

			if(data.friends != null)
			{
			 	var list : Array = data.friends;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new InvitableFriend(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

