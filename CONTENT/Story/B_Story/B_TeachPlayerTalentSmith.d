// ************************
// B_TeachPlayerTalentSmith
// ************************

func int B_TeachPlayerTalentSmith (var C_NPC slf, var C_NPC oth, var int waffe)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, NPC_TALENT_SMITH, waffe);
	
	
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
	
	Log_CreateTopic (TOPIC_TalentSmith,LOG_NOTE);
	B_LogEntry (TOPIC_TalentSmith,"To forge a weapon, first of all I need a piece of raw steel. This I must heat in the fire of a smithy until it glows red-hot and then shape it on an anvil. Special weapons often require the use of certain substances that give them special characteristics.");
	
	// ------ Waffe schmieden lernen ------
	//Bennet
	if (waffe == WEAPON_Common)				{	PLAYER_TALENT_SMITH[WEAPON_Common] 			= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I don't need any more Ingredients for the ´Self-forged Sword´.                     ");};
	if (waffe == WEAPON_1H_Special_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I need 1 ore nugget to forge an ´Ore Longsword´.                              ");};
	if (waffe == WEAPON_2H_Special_01)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I need 2 ore nuggets to forge an ´Ore Two-Hander´.                            ");};
	if (waffe == WEAPON_1H_Special_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I need 2 ore nuggets to forge an ´Ore Bastard Sword´.                         ");};
	if (waffe == WEAPON_2H_Special_02)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I need 3 ore nuggets to forge a ´Heavy Ore Two-Hander´.                       ");};
	if (waffe == WEAPON_1H_Special_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I need 3 ore nuggets to forge an ´Ore Battle Blade´.                          ");};
	if (waffe == WEAPON_2H_Special_03)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I need 4 ore nuggets to forge an ´Heavy Ore Battle Blade´. ");};
	if (waffe == WEAPON_1H_Special_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"If I add 4 units of ore and 5 of dragon blood, I can forge an ORE DRAGON SLAYER.");};
	if (waffe == WEAPON_2H_Special_04)		{	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"If I add 5 units of ore and 5 of dragon blood, I can forge a LARGE ORE DRAGON SLAYER.");};
	
	//Harad - Addon
	if (waffe == WEAPON_1H_Harad_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I can now forge a fine sword."); };
	if (waffe == WEAPON_1H_Harad_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I can now forge a fine longsword."); };
	if (waffe == WEAPON_1H_Harad_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"I can now forge even a ruby blade."); };
	if (waffe == WEAPON_1H_Harad_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith,"Harad hat mir beigebracht, 'El Bastardo' zu schmieden - eine der besten Einhandwaffen, die es gibt!"); };
	
	//REVIVED
	if (waffe == WEAPON_1H_REVIVED_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_01)); };
	if (waffe == WEAPON_1H_REVIVED_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_02)); };
	if (waffe == WEAPON_1H_REVIVED_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_03)); };
	if (waffe == WEAPON_1H_REVIVED_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_04)); };
	if (waffe == WEAPON_1H_REVIVED_05)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_05] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_05)); };
	if (waffe == WEAPON_2H_REVIVED_01)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_01)); };
	if (waffe == WEAPON_2H_REVIVED_02)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_02)); };
	if (waffe == WEAPON_2H_REVIVED_03)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_03)); };
	if (waffe == WEAPON_2H_REVIVED_04)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_04)); };
	if (waffe == WEAPON_2H_REVIVED_05)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_05] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_05)); };
	
	if (waffe == WEAPON_1H_REVIVED_ORE_01)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_ORE_01)); };
	if (waffe == WEAPON_1H_REVIVED_ORE_02)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_ORE_02)); };
	if (waffe == WEAPON_1H_REVIVED_ORE_03)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_ORE_03)); };
	if (waffe == WEAPON_1H_REVIVED_ORE_04)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_ORE_04)); };
	if (waffe == WEAPON_1H_REVIVED_ORE_05)		{	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_05] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_1H_REVIVED_ORE_05)); };
	if (waffe == WEAPON_2H_REVIVED_ORE_01)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_01] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_ORE_01)); };
	if (waffe == WEAPON_2H_REVIVED_ORE_02)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_02] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_ORE_02)); };
	if (waffe == WEAPON_2H_REVIVED_ORE_03)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_03] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_ORE_03)); };
	if (waffe == WEAPON_2H_REVIVED_ORE_04)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_04] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_ORE_04)); };
	if (waffe == WEAPON_2H_REVIVED_ORE_05)		{	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_05] 	= TRUE;	
	B_LogEntry (TOPIC_TalentSmith, ConcatStrings("I can now forge a ", NAME_2H_REVIVED_ORE_05)); };
	
	
	PrintScreen			(PRINT_LearnSmith, -1, -1, FONT_Screen, 2);
	
	// ------ bei jeder Waffe: Waffen-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(oth, NPC_TALENT_SMITH, 1);
	return TRUE;
};
	

	
	
	
	
	
	
	

	
	

	
	
	
	
	

	
	
	

