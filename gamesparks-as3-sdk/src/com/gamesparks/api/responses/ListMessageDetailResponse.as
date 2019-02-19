
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the list of the current players messages / notifications.
	*/
	public class ListMessageDetailResponse extends GSResponse
	{
	
		public function ListMessageDetailResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing player messages
		*/ 
		public function getMessageList() : Vector.<PlayerMessage>
		{
			var ret : Vector.<PlayerMessage> = new Vector.<PlayerMessage>();

			if(data.messageList != null)
			{
			 	var list : Array = data.messageList;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new PlayerMessage(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

