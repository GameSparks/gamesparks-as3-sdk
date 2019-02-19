
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response to a dismiss message request
	*/
	public class DismissMultipleMessagesResponse extends GSResponse
	{
	
		public function DismissMultipleMessagesResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of the messageId values that were not dismissed
		*/ 
		public function getFailedDismissals() : Vector.<String>
		{
			var ret : Vector.<String> = new Vector.<String>();

			if(data.failedDismissals != null)
			{
			 	var list : Array = data.failedDismissals;
			 	for(var item : String in list)
			 	{
				 	ret.push(list[item]);
			 	}
			}
			
			return ret;
		}
		/** <summary>
		* An integer describing how many messages were dismissed
		*/ 
		public function getMessagesDismissed() : Number{
			if(data.messagesDismissed != null)
			{
				return data.messagesDismissed;
			}
			return NaN;
		}
	}

}

