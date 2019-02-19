
package com.gamesparks.api.requests
{

	import com.gamesparks.api.responses.*;
	import com.gamesparks.*;
	
	
	/**
	* Allows a player's internal profile to be disconnected from an external system to which it is linked.  Any friends linked as result of this connection will be removed.
	*/
	public class SocialDisconnectRequest extends GSRequest
	{
	
		function SocialDisconnectRequest(gs:GS)
		{
			super(gs);
			data["@class"] =  ".SocialDisconnectRequest";
		}
		
		/**
		* set the timeout for this request
		*/
		public function setTimeoutSeconds(timeoutSeconds:int=10):SocialDisconnectRequest
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
						callback(new SocialDisconnectResponse(message));
					}
				}
			);
		}
		
	
		public function setScriptData(scriptData:Object):SocialDisconnectRequest{
			data["scriptData"] = scriptData;
			return this;
		}
	




		/**
		* The external system from which to disconnect this profile, supplied as a two letter ID. The options are: {FACEBOOK:FB, AMAZON:AM, GAME_CENTER:GC
		* GOOGLE_PLAY:GY , GOOGLE_PLUS:GP, KONGREGATE:KO, PSN:PS, QQ:QQ, STEAM:ST, TWITCH:TC, TWITTER:TW, VIBER:VB, WECHAT:WC, XBOX:XB
		* XBOXONE:X1, NINTENDO:NX}
		*/
		public function setSystemId( systemId : String ) : SocialDisconnectRequest
		{
			this.data["systemId"] = systemId;
			return this;
		}
				
	}
	
}

