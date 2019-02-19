
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class BulkJob extends GSData
	{
	
		public function BulkJob(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The actual count of players affected by the bulk job (calculated when the job started to run)
		/// </summary>
		//method type 5
		public function getActualCount() : Number{
			if(data.actualCount != null)
			{
				return data.actualCount;
			}
			return NaN;
		}
		/// <summary>
		/// The time at which the bulk job completed execution
		/// </summary>
		//method type 5
		public function getCompleted() : Date{
			if(data.completed != null)
			{
				return RFC3339toDate(data.completed);
			}
			return null;
		}
		/// <summary>
		/// The time at which the bulk job was created
		/// </summary>
		//method type 5
		public function getCreated() : Date{
			if(data.created != null)
			{
				return RFC3339toDate(data.created);
			}
			return null;
		}
		/// <summary>
		/// Data to be passed into the Module or Script
		/// </summary>
		//method type 5
		public function getData() : Object{
			if(data.data != null)
			{
				return data.data;
			}
			return null;
		}
		/// <summary>
		/// The number of players processed by the bulk job so far
		/// </summary>
		//method type 5
		public function getDoneCount() : Number{
			if(data.doneCount != null)
			{
				return data.doneCount;
			}
			return NaN;
		}
		/// <summary>
		/// The number of errors encountered whilst running the Module or Script for players
		/// </summary>
		//method type 5
		public function getErrorCount() : Number{
			if(data.errorCount != null)
			{
				return data.errorCount;
			}
			return NaN;
		}
		/// <summary>
		/// The estimated count of players affected by the bulk job (estimated when the job was submitted)
		/// </summary>
		//method type 5
		public function getEstimatedCount() : Number{
			if(data.estimatedCount != null)
			{
				return data.estimatedCount;
			}
			return NaN;
		}
		/// <summary>
		/// The ID for the bulk job
		/// </summary>
		//method type 5
		public function getId() : String{
			if(data.id != null)
			{
				return data.id;
			}
			return null;
		}
		/// <summary>
		/// The Cloud Code Module to run for each player
		/// </summary>
		//method type 5
		public function getModuleShortCode() : String{
			if(data.moduleShortCode != null)
			{
				return data.moduleShortCode;
			}
			return null;
		}
		/// <summary>
		/// The query to identify players to perform the bulk job on
		/// </summary>
		//method type 5
		public function getPlayerQuery() : Object{
			if(data.playerQuery != null)
			{
				return data.playerQuery;
			}
			return null;
		}
		/// <summary>
		/// The time at which the job was scheduled to run
		/// </summary>
		//method type 5
		public function getScheduledTime() : Date{
			if(data.scheduledTime != null)
			{
				return RFC3339toDate(data.scheduledTime);
			}
			return null;
		}
		/// <summary>
		/// The Cloud Code script to run for each player
		/// </summary>
		//method type 5
		public function getScript() : String{
			if(data.script != null)
			{
				return data.script;
			}
			return null;
		}
		/// <summary>
		/// The time at which the bulk job started to execute
		/// </summary>
		//method type 5
		public function getStarted() : Date{
			if(data.started != null)
			{
				return RFC3339toDate(data.started);
			}
			return null;
		}
		/// <summary>
		/// The current state of the bulk job
		/// </summary>
		//method type 5
		public function getState() : String{
			if(data.state != null)
			{
				return data.state;
			}
			return null;
		}
	}

}

