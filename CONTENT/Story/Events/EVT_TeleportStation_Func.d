// ****************************
// EVT_TELEPORTSTATION_FUNC       
// ****************************
 
func void EVT_TELEPORTSTATION_FUNC ()
{	
  	Wld_PlayEffect("spellFX_Teleport_RING",  hero  , hero	, 0, 0, 0, FALSE );
	Snd_Play ("MFX_TELEPORT_CAST");
	Npc_ClearAIQueue (hero);	//Joly:wegen Seitwrts da durch rennen.
	
	if(SCUsed_TELEPORTER != TRUE)
	{
		Log_CreateTopic(TOPIC_Addon_TeleportsNW, LOG_NOTE);
		SCUsed_TELEPORTER = TRUE;			//SC hat schon mal einen Teleporter benutzt
	};

	
	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_GetDistToWP(hero,"NW_TELEPORTSTATION_TROLLAREA")<3000)
		{
			AI_Teleport	(hero, "NW_TELEPORTSTATION_CASTLEMINE");

			if (SCUsed_NW_TELEPORTSTATION_TROLLAREA != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein am großen See im Norden führt zum Tal unterhalb des alten Wachturms."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_TROLLAREA = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_CASTLEMINE")<3000)
		{
		 	AI_Teleport	(hero, "NW_TELEPORTSTATION_FOREST");

			if (SCUsed_NW_TELEPORTSTATION_CASTLEMINE != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein im Tal unterhalb des Wachturms führt zum dunklen Wald."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_CASTLEMINE = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_JAEGER")<3000)
		{
			AI_Teleport	(hero, "NW_TELEPORTSTATION_TROLLAREA");

			if (SCUsed_NW_TELEPORTSTATION_JAEGER != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein auf dem Berggipfel vor der Stadt führt zum großen See im Norden."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_JAEGER = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_FOREST")<3000)
		{
			AI_Teleport	(hero, "NW_TELEPORTSTATION_JAEGER");

			if (SCUsed_NW_TELEPORTSTATION_FOREST != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein im dunklen Wald führt zum Berggipfel vor der Stadt."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_FOREST = TRUE; 
			};
		}
		else	//else fall wird nicht benutzt, nur zur sicherheit
		{
			AI_Teleport	(hero, "TOT"); 
		};			
	}
	else if (CurrentLevel == OLDWORLD_ZEN)
	{
		if (Npc_GetDistToWP(hero,"OW_TELEPORTSTATION_STONEHENGE")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_TROLLCANYON");

			if (SCUsed_OW_TELEPORTSTATION_STONEHENGE != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein unter dem Steinkreis führt zur alten Trollschlucht."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_STONEHENGE = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_TROLLCANYON")<3000)
		{
		 	AI_Teleport	(hero, "OW_TELEPORTSTATION_MONASTERY");

			if (SCUsed_OW_TELEPORTSTATION_TROLLCANYON != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein in der alten Trollschlucht führt zu den Klosterruinen."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_TROLLCANYON = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_MONASTERY")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_CLIFF");

			if (SCUsed_OW_TELEPORTSTATION_MONASTERY != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein in den Klosterruinen führt zur Meeresklippe neben dem Sumpf."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_MONASTERY = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_CLIFF")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_STONEFORTRESS");

			if (SCUsed_OW_TELEPORTSTATION_CLIFF != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein an der Meeresklippe führt zur alten Bergfestung."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_CLIFF = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_STONEFORTRESS")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_STONEHENGE");

			if (SCUsed_OW_TELEPORTSTATION_STONEFORTRESS != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"Der Teleportstein in der Bergfestung führt zum Steinkreis."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_STONEFORTRESS = TRUE; 
			};
		}
		else	//else fall wird nicht benutzt, nur zur sicherheit
		{
			AI_Teleport	(hero, "TOT"); 
		};		
	};
		
		if (SCUsed_NW_TELEPORTSTATION_CASTLEMINE == TRUE)
		&& (SCUsed_NW_TELEPORTSTATION_TROLLAREA == TRUE)
		&& (SCUsed_NW_TELEPORTSTATION_FOREST == TRUE)
		&& (SCUsed_NW_TELEPORTSTATION_JAEGER == TRUE)
		&& (SCUsed_AllNWTeleporststones != TRUE)
		{
			SCUsed_AllNWTeleporststones = TRUE;
			B_GivePlayerXP (XP_Addon_AllNWTeleporststones);
		};			
		
		if (SCUsed_OW_TELEPORTSTATION_STONEHENGE == TRUE)
		&& (SCUsed_OW_TELEPORTSTATION_TROLLCANYON == TRUE)
		&& (SCUsed_OW_TELEPORTSTATION_MONASTERY == TRUE)
		&& (SCUsed_OW_TELEPORTSTATION_CLIFF == TRUE)
		&& (SCUsed_OW_TELEPORTSTATION_STONEFORTRESS == TRUE)
		&& (SCUsed_AllOWTeleportStones != TRUE)
		{
			SCUsed_AllOWTeleportStones = TRUE;
			B_GivePlayerXP (XP_Addon_AllOWTeleporststones);
		};			
};