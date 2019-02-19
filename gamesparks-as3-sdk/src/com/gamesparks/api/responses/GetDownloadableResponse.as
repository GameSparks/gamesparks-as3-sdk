
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the download URL for a downloadable item
	*/
	public class GetDownloadableResponse extends GSResponse
	{
	
		public function GetDownloadableResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The date when the downloadable item was last modified
		*/ 
		public function getLastModified() : Date{
			if(data.lastModified != null)
			{
				return RFC3339toDate(data.lastModified);
			}
			return null;
		}
		/** <summary>
		* The short code of the item
		*/ 
		public function getShortCode() : String{
			if(data.shortCode != null)
			{
				return data.shortCode;
			}
			return null;
		}
		/** <summary>
		* The size of the item in bytes
		*/ 
		public function getSize() : Number{
			if(data.size != null)
			{
				return data.size;
			}
			return NaN;
		}
		/** <summary>
		* The download URL
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

