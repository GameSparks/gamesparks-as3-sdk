
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response containing the requested property
	*/
	public class GetPropertyResponse extends GSResponse
	{
	
		public function GetPropertyResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The property value
		*/ 
		public function getProperty() : Object{
			if(data.property != null)
			{
				return data.property;
			}
			return null;
		}
	}

}

