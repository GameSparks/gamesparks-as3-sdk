
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class SocialStatus extends GSData
	{
	
		public function SocialStatus(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// When the token is still active.
		/// </summary>
		//method type 5
		public function getActive() : Boolean{
			if(data.active != null)
			{
				return data.active;
			}
			return false;
		}
		/// <summary>
		/// When the token expires (if available).
		/// </summary>
		//method type 5
		public function getExpires() : Date{
			if(data.expires != null)
			{
				return RFC3339toDate(data.expires);
			}
			return null;
		}
		/// <summary>
		/// The identifier of the external platform.
		/// </summary>
		//method type 5
		public function getSystemId() : String{
			if(data.systemId != null)
			{
				return data.systemId;
			}
			return null;
		}
	}

}

