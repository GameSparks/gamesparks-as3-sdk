
package com.gamesparks.api.messages
{

	import com.gamesparks.api.requests.*;
	import com.gamesparks.GS;
	import flash.utils.Dictionary;
	
	public class GSMessageHandler
	{
		
		private var callbacks:Dictionary = new Dictionary();
		
		public function setAchievementEarnedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".AchievementEarnedMessage"] = callback;
			return this;
		}
		public function setChallengeAcceptedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeAcceptedMessage"] = callback;
			return this;
		}
		public function setChallengeChangedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeChangedMessage"] = callback;
			return this;
		}
		public function setChallengeChatMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeChatMessage"] = callback;
			return this;
		}
		public function setChallengeDeclinedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeDeclinedMessage"] = callback;
			return this;
		}
		public function setChallengeDrawnMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeDrawnMessage"] = callback;
			return this;
		}
		public function setChallengeExpiredMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeExpiredMessage"] = callback;
			return this;
		}
		public function setChallengeIssuedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeIssuedMessage"] = callback;
			return this;
		}
		public function setChallengeJoinedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeJoinedMessage"] = callback;
			return this;
		}
		public function setChallengeLapsedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeLapsedMessage"] = callback;
			return this;
		}
		public function setChallengeLostMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeLostMessage"] = callback;
			return this;
		}
		public function setChallengeStartedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeStartedMessage"] = callback;
			return this;
		}
		public function setChallengeTurnTakenMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeTurnTakenMessage"] = callback;
			return this;
		}
		public function setChallengeWaitingMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeWaitingMessage"] = callback;
			return this;
		}
		public function setChallengeWithdrawnMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeWithdrawnMessage"] = callback;
			return this;
		}
		public function setChallengeWonMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ChallengeWonMessage"] = callback;
			return this;
		}
		public function setFriendMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".FriendMessage"] = callback;
			return this;
		}
		public function setGlobalRankChangedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".GlobalRankChangedMessage"] = callback;
			return this;
		}
		public function setMatchFoundMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".MatchFoundMessage"] = callback;
			return this;
		}
		public function setMatchNotFoundMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".MatchNotFoundMessage"] = callback;
			return this;
		}
		public function setMatchUpdatedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".MatchUpdatedMessage"] = callback;
			return this;
		}
		public function setNewHighScoreMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".NewHighScoreMessage"] = callback;
			return this;
		}
		public function setNewTeamScoreMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".NewTeamScoreMessage"] = callback;
			return this;
		}
		public function setScriptMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".ScriptMessage"] = callback;
			return this;
		}
		public function setSessionTerminatedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".SessionTerminatedMessage"] = callback;
			return this;
		}
		public function setSocialRankChangedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".SocialRankChangedMessage"] = callback;
			return this;
		}
		public function setTeamChatMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".TeamChatMessage"] = callback;
			return this;
		}
		public function setTeamRankChangedMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".TeamRankChangedMessage"] = callback;
			return this;
		}
		public function setUploadCompleteMessageHandler(callback:Function):GSMessageHandler
		{
			callbacks[".UploadCompleteMessage"] = callback;
			return this;
		}
		
		public function setHandler(messageType:String, callback:Function):GSMessageHandler
		{
			callbacks[messageType] = callback;
			return this;
		}
		
		public function handle(message:Object):void
		{
			var className:String = message["@class"];
			if(className == null || callbacks[className] == null)
			{
				return;
			}
			switch (className) {
				
				case ".AchievementEarnedMessage" :
			        callbacks[className](new AchievementEarnedMessage(message));
			        break;
				case ".ChallengeAcceptedMessage" :
			        callbacks[className](new ChallengeAcceptedMessage(message));
			        break;
				case ".ChallengeChangedMessage" :
			        callbacks[className](new ChallengeChangedMessage(message));
			        break;
				case ".ChallengeChatMessage" :
			        callbacks[className](new ChallengeChatMessage(message));
			        break;
				case ".ChallengeDeclinedMessage" :
			        callbacks[className](new ChallengeDeclinedMessage(message));
			        break;
				case ".ChallengeDrawnMessage" :
			        callbacks[className](new ChallengeDrawnMessage(message));
			        break;
				case ".ChallengeExpiredMessage" :
			        callbacks[className](new ChallengeExpiredMessage(message));
			        break;
				case ".ChallengeIssuedMessage" :
			        callbacks[className](new ChallengeIssuedMessage(message));
			        break;
				case ".ChallengeJoinedMessage" :
			        callbacks[className](new ChallengeJoinedMessage(message));
			        break;
				case ".ChallengeLapsedMessage" :
			        callbacks[className](new ChallengeLapsedMessage(message));
			        break;
				case ".ChallengeLostMessage" :
			        callbacks[className](new ChallengeLostMessage(message));
			        break;
				case ".ChallengeStartedMessage" :
			        callbacks[className](new ChallengeStartedMessage(message));
			        break;
				case ".ChallengeTurnTakenMessage" :
			        callbacks[className](new ChallengeTurnTakenMessage(message));
			        break;
				case ".ChallengeWaitingMessage" :
			        callbacks[className](new ChallengeWaitingMessage(message));
			        break;
				case ".ChallengeWithdrawnMessage" :
			        callbacks[className](new ChallengeWithdrawnMessage(message));
			        break;
				case ".ChallengeWonMessage" :
			        callbacks[className](new ChallengeWonMessage(message));
			        break;
				case ".FriendMessage" :
			        callbacks[className](new FriendMessage(message));
			        break;
				case ".GlobalRankChangedMessage" :
			        callbacks[className](new GlobalRankChangedMessage(message));
			        break;
				case ".MatchFoundMessage" :
			        callbacks[className](new MatchFoundMessage(message));
			        break;
				case ".MatchNotFoundMessage" :
			        callbacks[className](new MatchNotFoundMessage(message));
			        break;
				case ".MatchUpdatedMessage" :
			        callbacks[className](new MatchUpdatedMessage(message));
			        break;
				case ".NewHighScoreMessage" :
			        callbacks[className](new NewHighScoreMessage(message));
			        break;
				case ".NewTeamScoreMessage" :
			        callbacks[className](new NewTeamScoreMessage(message));
			        break;
				case ".ScriptMessage" :
			        callbacks[className](new ScriptMessage(message));
			        break;
				case ".SessionTerminatedMessage" :
			        callbacks[className](new SessionTerminatedMessage(message));
			        break;
				case ".SocialRankChangedMessage" :
			        callbacks[className](new SocialRankChangedMessage(message));
			        break;
				case ".TeamChatMessage" :
			        callbacks[className](new TeamChatMessage(message));
			        break;
				case ".TeamRankChangedMessage" :
			        callbacks[className](new TeamRankChangedMessage(message));
			        break;
				case ".UploadCompleteMessage" :
			        callbacks[className](new UploadCompleteMessage(message));
			        break;
			
			}
		}
	}
}

