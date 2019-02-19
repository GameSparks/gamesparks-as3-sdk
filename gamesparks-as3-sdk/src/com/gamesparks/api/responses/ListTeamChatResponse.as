
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a list team messages request.
	*/
	public class ListTeamChatResponse extends GSResponse
	{
	
		public function ListTeamChatResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The collection of team chat messages
		*/ 
		public function getMessages() : Vector.<ChatMessage>
		{
			var ret : Vector.<ChatMessage> = new Vector.<ChatMessage>();

			if(data.messages != null)
			{
			 	var list : Array = data.messages;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new ChatMessage(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

