
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!
//THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!

package com.gamesparks.api.types
{

	import com.gamesparks.*;
	
	
	public class UploadData extends GSData
	{
	
		public function UploadData(data : Object)
		{
			super(data);
		}
	
	
		/// <summary>
		/// The filename of the file that was uploaded.
		/// </summary>
		//method type 5
		public function getFileName() : String{
			if(data.fileName != null)
			{
				return data.fileName;
			}
			return null;
		}
		/// <summary>
		/// The unique player id of the player that uploaded the file.
		/// </summary>
		//method type 5
		public function getPlayerId() : String{
			if(data.playerId != null)
			{
				return data.playerId;
			}
			return null;
		}
	}

}

