
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing a time sensitive URL to allow the game to upload a piece of player content to the GameSparks platform
	*/
	public class GetUploadUrlResponse extends GSResponse
	{
	
		public function GetUploadUrlResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The time sensitive upload URL
		*/ 
		public function getUrl() : String{
			if(data.url != null)
			{
				return data.url;
			}
			return null;
		}
	}

}

