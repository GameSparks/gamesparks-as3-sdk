
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
	public class ListMessageResponse extends GSResponse
	{
	
		public function ListMessageResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing player messages
		*/ 
		public function getMessageList() : Vector.<Object>
		{
			var ret : Vector.<Object> = new Vector.<Object>();

			if(data.messageList != null)
			{
			 	var list : Array = data.messageList;
			 	for(var item : Object in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
	}

}

