package com.gamesparks
{
	public class GSData
	{
		public var data : Object = new Object();
		
		public function GSData(data : Object)
		{
			this.data = data;
		}
		
		public function getAttribute(attributeName:String):Object
		{
			return data[attributeName];
		}
		
		public function setAttribute(attributeName:String, attributeValue:Object):GSData
		{
			data[attributeName] = attributeValue;
			return this;
		}
		
		protected function dateToRFC3339(d:Date):String
		{
			var month:String = (d.getUTCMonth() + 1) < 10 ? "0"+(d.getUTCMonth() + 1) : ""+ (d.getUTCMonth() + 1);
			var day:String = (d.getUTCDate() < 10) ? ("0" + d.getUTCDate()) : ("" + d.getUTCDate());
			var hours:String = d.getUTCHours() < 10 ? "0"+d.getUTCHours() : ""+d.getUTCHours();
			var minutes:String = d.getUTCMinutes() < 10 ? "0"+d.getUTCMinutes() : ""+d.getUTCMinutes();
			
			return d.getUTCFullYear()+"-"+month+"-"+day+"T"+hours+":"+minutes+"Z";
		}
		
		
		protected function RFC3339toDate( rfc3339:String ):Date
		{
			var datetime:Array = rfc3339.split("T");
			
			var date:Array = datetime[0].split("-");
			var year:int = int(date[0])
			var month:int = int(date[1]-1)
			var day:int = int(date[2])
				
			var time:Array = datetime[1].split(":");
			var hour:int = int(time[0])
			var minute:int = int(time[1])
			var second:Number
			
			// parse offset
			var offsetString:String = time[2];
			var offsetUTC:int
			
			if ( offsetString.charAt(offsetString.length -1) == "Z" )
			{
				// Zulu time indicator
				offsetUTC = 0;
				second = parseFloat( offsetString.slice(0,offsetString.length-1) )
			}
			else
			{
				// split off UTC offset
				var a:Array
				if (offsetString.indexOf("+") != -1)
				{
					a = offsetString.split("+")
					offsetUTC = 1
				}
				else if (offsetString.indexOf("-") != -1)
				{
					a = offsetString.split("-")
					offsetUTC = -1
				}
				else
				{
					throw new Error( "Invalid Format: cannot parse RFC3339 String." )
				}
				
				// set seconds
				second = parseFloat( a[0] )
				
				// parse UTC offset in millisceonds
				var ms:Number = 0
				if ( time[3] )
				{
					ms = parseFloat(a[1]) * 3600000
					ms += parseFloat(time[3]) * 60000
				}
				else
				{
					ms = parseFloat(a[1]) * 60000
				}
				offsetUTC = offsetUTC * ms
			}
			
			return new Date( Date.UTC( year, month, day, hour, minute, second) + offsetUTC );
		}
	}
	
}