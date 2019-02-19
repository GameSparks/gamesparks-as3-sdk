
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the details of a the players social connections
	*/
	public class SocialStatusResponse extends GSResponse
	{
	
		public function SocialStatusResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of social statuses.
		*/ 
		public function getStatuses() : Vector.<SocialStatus>
		{
			var ret : Vector.<SocialStatus> = new Vector.<SocialStatus>();

			if(data.statuses != null)
			{
			 	var list : Array = data.statuses;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new SocialStatus(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

