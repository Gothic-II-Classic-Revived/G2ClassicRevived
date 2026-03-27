// **************************
// B_TeachPlayerTalentAlchemy
// **************************

func int B_TeachPlayerTalentAlchemy (var C_NPC slf, var C_NPC oth, var int potion)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_ALCHEMY, potion);
	
	
	//EXIT IF...
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLearnPoints, -1,-1, FONT_ScreenSmall ,2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		
		return FALSE;
	};
	
			
	// FUNC
				
	// ------ Lernpunkte abziehen ------			
	oth.lp = oth.lp - kosten;
	
	if(Npc_GetTalentSkill(oth, NPC_TALENT_ALCHEMY) <= 0) {
		Log_CreateTopic (TOPIC_TalentAlchemy,LOG_NOTE);
		B_LogEntry (TOPIC_TalentAlchemy,"Um einen Trank zu brauen, brauche ich einen leere Laborflasche und die jeweilig benötigten Zutaten für den gewünschten Trank. Mit diese Zutaten kann man an einem Alchemietisch den gewünschten Trank herstellen."); 
	
		Npc_SetTalentSkill 	(oth, NPC_TALENT_ALCHEMY, 1);
	};

	// ------ Trank brauen lernen ------
	if (potion == POTION_Health_01)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_01] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_HEALTH_01); };
	
	if (potion == POTION_Health_02)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_02] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_HEALTH_02);  };
	
	if (potion == POTION_Health_03)		{	PLAYER_TALENT_ALCHEMY[POTION_Health_03] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_HEALTH_03);  };
	
	if (potion == POTION_Mana_01)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_01] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_MANA_01);  };
	
	if (potion == POTION_Mana_02)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_02] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_MANA_02);  };
	
	if (potion == POTION_Mana_03)		{	PLAYER_TALENT_ALCHEMY[POTION_Mana_03] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_MANA_03);  };
	
	if (potion == POTION_Speed)			{	PLAYER_TALENT_ALCHEMY[POTION_Speed] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Zutaten ´TRANK DER GESCHWINDIGKEIT´: 1 Snapperkraut und 1 Feldknöterich");  };
	
	if (potion == POTION_Perm_STR)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Zutaten ´Elixier der Stärke´:1 Drachenwurzel und 1 Kronstöckel.");  };
	
	if (potion == POTION_Perm_DEX)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] 		= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Zutaten ´ELIXIER DER GESCHICKLICHKEIT´: 1 Goblinbeere und 1 Kronstöckel.");  };
	
	if (potion == POTION_Perm_Mana)		{	PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Zutaten ´ELIXIER DES GEISTES´:1 Feuerwurzel und 1 Kronstöckel.");  };
	
	if (potion == POTION_Perm_Health)	{	PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] 	= TRUE;	
	B_LogEntry(TOPIC_TalentAlchemy,"Zutaten ´ELIXIER DES LEBENS´:1 Heilwurzel und 1 Kronstöckel.");  };


	if (potion == POTION_Perm_HEALTH_01) { PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_01] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_HEALTH_01);  };

	if (potion == POTION_Perm_HEALTH_02) { PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_02] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_HEALTH_02);  };

	if (potion == POTION_Perm_HEALTH_03) { PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_03] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_HEALTH_03);  };

	if (potion == POTION_Perm_MANA_01) { PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_01] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_MANA_01);  };

	if (potion == POTION_Perm_MANA_02) { PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_02] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_MANA_02);  };

	if (potion == POTION_Perm_MANA_03) { PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_03] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_MANA_03);  };

	if (potion == POTION_Perm_STR_01) { PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_01] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_STR_01);  };

	if (potion == POTION_Perm_STR_02) { PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_02] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_STR_02);  };

	if (potion == POTION_Perm_STR_03) { PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_03] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_STR_03);  };

	if (potion == POTION_Perm_DEX_01) { PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_01] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_DEX_01);  };

	if (potion == POTION_Perm_DEX_02) { PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_02] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_DEX_02);  };

	if (potion == POTION_Perm_DEX_03) { PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_03] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_DEX_03);  };

	if (potion == POTION_Perm_MASTER_01) { PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_01] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_MASTER_01);  };

	if (potion == POTION_Perm_MASTER_02) { PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_02] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_MASTER_02);  };

	if (potion == POTION_Perm_MASTER_03) { PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_03] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_PERM_MASTER_03);  };

	if (potion == POTION_SPEED_01) { PLAYER_TALENT_ALCHEMY[POTION_SPEED_01] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_SPEED_01);  };

	if (potion == POTION_SPEED_02) { PLAYER_TALENT_ALCHEMY[POTION_SPEED_02] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_SPEED_02);  };

	if (potion == POTION_SPEED_03) { PLAYER_TALENT_ALCHEMY[POTION_SPEED_03] 	= TRUE;
	B_LogEntry(TOPIC_TalentAlchemy,LOGENTRY_RECIPE_SPEED_03);  };


	PrintScreen			(PRINT_LearnAlchemy, -1, -1, FONT_Screen, 2);
	return TRUE;
};
	

		

	
	



	
	
	
	

	
	

	
	
	
	
	

	
	
	

