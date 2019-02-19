
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the list of the current players game friends.
	*/
	public class ListGameFriendsResponse extends GSResponse
	{
	
		public function ListGameFriendsResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing game friend data
		*/ 
		public function getFriends() : Vector.<Player>
		{
			var ret : Vector.<Player> = new Vector.<Player>();

			if(data.friends != null)
			{
			 	var list : Array = data.friends;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new Player(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

