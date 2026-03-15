// ****************************
// EVT_TELEPORTSTATION_FUNC       
// ****************************
 
func void EVT_TELEPORTSTATION_FUNC ()
{	
  	Wld_PlayEffect("spellFX_Teleport_RING",  hero  , hero	, 0, 0, 0, FALSE );
	Snd_Play ("MFX_TELEPORT_CAST");
	Npc_ClearAIQueue (hero);	//Joly:wegen Seitwärts da durch rennen.
	
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
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone at the big lake up north leads to the valley under the old watchtower."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_TROLLAREA = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_CASTLEMINE")<3000)
		{
		 	AI_Teleport	(hero, "NW_TELEPORTSTATION_FOREST");

			if (SCUsed_NW_TELEPORTSTATION_CASTLEMINE != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone in valley under the watchtower leads to the dark forest."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_CASTLEMINE = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_JAEGER")<3000)
		{
			AI_Teleport	(hero, "NW_TELEPORTSTATION_TROLLAREA");

			if (SCUsed_NW_TELEPORTSTATION_JAEGER != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone on the mountaintop in front of the city leads to the big lake up north."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_NW_TELEPORTSTATION_JAEGER = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_FOREST")<3000)
		{
			AI_Teleport	(hero, "NW_TELEPORTSTATION_JAEGER");

			if (SCUsed_NW_TELEPORTSTATION_FOREST != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone in the dark forest leads to the mountaintop in front of the city."); 
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
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone under the stone circle leads to old troll canyon."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_STONEHENGE = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_TROLLCANYON")<3000)
		{
		 	AI_Teleport	(hero, "OW_TELEPORTSTATION_MONASTERY");

			if (SCUsed_OW_TELEPORTSTATION_TROLLCANYON != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone in the old troll canyon leads to the monastery ruins."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_TROLLCANYON = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_MONASTERY")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_CLIFF");

			if (SCUsed_OW_TELEPORTSTATION_MONASTERY != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone in the monastery ruins leads to the sea cliff next to the swamp."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_MONASTERY = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_CLIFF")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_STONEFORTRESS");

			if (SCUsed_OW_TELEPORTSTATION_CLIFF != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone at the sea cliff leads to the old mountain fortress."); 
				B_GivePlayerXP (XP_Ambient);
			
				SCUsed_OW_TELEPORTSTATION_CLIFF = TRUE; 
			};
		}
		else if (Npc_GetDistToWP(hero, "OW_TELEPORTSTATION_STONEFORTRESS")<3000)
		{
			AI_Teleport	(hero, "OW_TELEPORTSTATION_STONEHENGE");

			if (SCUsed_OW_TELEPORTSTATION_STONEFORTRESS != TRUE)
			{
				B_LogEntry (TOPIC_Addon_TeleportsNW,"The teleporter stone in the mountain fortress leads to the stone circle."); 
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