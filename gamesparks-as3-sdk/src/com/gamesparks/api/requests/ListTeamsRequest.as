
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Returns a list of teams. Can be filtered on team name or team type.
	*/
	public class ListTeamsRequest extends GSRequest
	{
	
		function ListTeamsRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".ListTeamsRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):ListTeamsRequest
		{
			this.timeoutSeconds = timeoutSeconds; 
			return this;
		}
		
		/**
		* Send the request to the server. The callback function will be invoked with the response
		*/
		public override function send (callback : Function) : String{
			return super.send( 
				function(message:Object) : void{
					if(callback != null)
					{
						callback(new ListTeamsResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):ListTeamsRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	



		/**
		* The number of teams to return in a page (default=50)
		*/
		public function setEntryCount( entryCount : Number ) : ListTeamsRequest
		{
			this.data["entryCount"] = entryCount;
			return this;
		}


		/**
		* The offset (page number) to start from (default=0)
		*/
		public function setOffset( offset : Number ) : ListTeamsRequest
		{
			this.data["offset"] = offset;
			return this;
		}



		/**
		* An optional filter to return teams with a matching name
		*/
		public function setTeamNameFilter( teamNameFilter : String ) : ListTeamsRequest
		{
			this.data["teamNameFilter"] = teamNameFilter;
			return this;
		}


		/**
		* An optional filter to return teams of a particular type
		*/
		public function setTeamTypeFilter( teamTypeFilter : String ) : ListTeamsRequest
		{
			this.data["teamTypeFilter"] = teamTypeFilter;
			return this;
		}
				
	}
	
}

