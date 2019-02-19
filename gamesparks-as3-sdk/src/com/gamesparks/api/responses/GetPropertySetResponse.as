
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the requested property set
	*/
	public class GetPropertySetResponse extends GSResponse
	{
	
		public function GetPropertySetResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The property set
		*/ 
		public function getPropertySet() : Object{
			if(data.propertySet != null)
			{
				return data.propertySet;
			}
			return null;
		}
	}

}

