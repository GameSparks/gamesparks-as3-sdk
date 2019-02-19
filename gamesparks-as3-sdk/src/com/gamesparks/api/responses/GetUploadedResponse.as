
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A reponse containing a time sensitive URL to a piece of content that was previously uploaded to the GameSparks platform by a player.
	*/
	public class GetUploadedResponse extends GSResponse
	{
	
		public function GetUploadedResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The size of the file in bytes
		*/ 
		public function getSize() : Number{
			if(data.size != null)
			{
				return data.size;
			}
			return NaN;
		}
		/** <summary>
		* A time sensitive URL to a piece of content
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

