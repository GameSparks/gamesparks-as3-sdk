
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.responses
{
	
	import com.gamesparks.api.types.*;
	import com.gamesparks.*;
	
	/**
	* A response acknowledging the scheduling of a bulk job
	*/
	public class ScheduleBulkJobAdminResponse extends GSResponse
	{
	
		public function ScheduleBulkJobAdminResponse(data : Object)
		{
			super(data);
		}
	
	
		/** <summary>
		* The count of players who would be affected by this job if it ran at the time it was submitted
		*/ 
		public function getEstimatedCount() : Number{
			if(data.estimatedCount != null)
			{
				return data.estimatedCount;
			}
			return NaN;
		}
		/** <summary>
		* The unique job ID, used to identify this job in future requests
		*/ 
		public function getJobId() : String{
			if(data.jobId != null)
			{
				return data.jobId;
			}
			return null;
		}
	}

}

