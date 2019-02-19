
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response listing cancelled bulk jobs
	*/
	public class CancelBulkJobAdminResponse extends GSResponse
	{
	
		public function CancelBulkJobAdminResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* A list of JSON objects containing bulk jobs
		*/ 
		public function getBulkJobs() : Vector.<BulkJob>
		{
			var ret : Vector.<BulkJob> = new Vector.<BulkJob>();

			if(data.bulkJobs != null)
			{
			 	var list : Array = data.bulkJobs;
			 	for(var item : Object in list)
			 	{
				 	ret.push(new BulkJob(list[item]));
			 	}
			}
			
			return ret;
		}
	}

}

