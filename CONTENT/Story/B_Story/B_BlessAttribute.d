func void B_BlessAttribute (var C_NPC oth, var int attrib, var int points)
{
	var string concatText;
	
	// ------ STR steigern ------
	if (attrib == BLESS_STRENGTH)			
	{	
		oth.attribute[ATR_STRENGTH] = oth.attribute[ATR_STRENGTH] + points;				//bzw. Npc_ChangeAttribute (oth, attrib, points);
		oth.aivar[REAL_STRENGTH] = oth.aivar[REAL_STRENGTH] + points;

		concatText = ConcatStrings(PRINT_BlessSTR, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ DEX steigern ------
	if (attrib == BLESS_DEXTERITY)			
	{	
		oth.attribute[ATR_DEXTERITY] = oth.attribute[ATR_DEXTERITY] + points;
		oth.aivar[REAL_DEXTERITY] = oth.aivar[REAL_DEXTERITY] + points;

		concatText = ConcatStrings(PRINT_BlessDEX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ MANA_MAX steigern ------
	if (attrib == BLESS_MANA_MAX)			
	{	
		oth.attribute[ATR_MANA_MAX] = oth.attribute[ATR_MANA_MAX] + points;
		oth.aivar[REAL_MANA_MAX] = oth.aivar[REAL_MANA_MAX] + points;
		oth.attribute[ATR_MANA] = oth.attribute[ATR_MANA_MAX];
		
		concatText = ConcatStrings(PRINT_BlessMANA_MAX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ HITPOINTS_MAX steigern ------
	if (attrib == BLESS_HITPOINTS_MAX)			
	{	
		oth.attribute[ATR_HITPOINTS_MAX] = oth.attribute[ATR_HITPOINTS_MAX] + points;
		oth.attribute[ATR_HITPOINTS] = oth.attribute[ATR_HITPOINTS_MAX];
		
		concatText = ConcatStrings(PRINT_BlessHitpoints_MAX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ----- Hitpoints heilen -----
	if (attrib == BLESS_HITPOINTS)			
	{	
		oth.attribute[ATR_HITPOINTS] = oth.attribute[ATR_HITPOINTS_MAX];

		PrintScreen	(Print_Blesshitpoints, -1, -1, FONT_SCREEN, 2);
	};
	
	// ----- Mana refreshen ------
	if (attrib == BLESS_MANA)			
	{	
		oth.attribute[ATR_MANA] = oth.attribute[ATR_MANA_MAX];
		PrintScreen	(Print_BlessMana, -1, -1, FONT_SCREEN, 2);
	};


	if (attrib == BLESS_TALENT_1H)
	{
		B_RaiseFightTalent (oth, NPC_TALENT_1H, 			points);
		PrintScreen	(PRINT_PRAYADANOS_Bless1H, -1, -1, FONT_SCREEN, 2);
	};

	if (attrib == BLESS_TALENT_2H)
	{
		B_RaiseFightTalent (oth, NPC_TALENT_2H, 			points);
		PrintScreen	(PRINT_PRAYADANOS_Bless2H, -1, -1, FONT_SCREEN, 2);
	};

	if (attrib == BLESS_TALENT_BOW)
	{
		B_RaiseFightTalent (oth, NPC_TALENT_BOW, 			points);
		PrintScreen	(Print_PRAYADANOS_BlessBOW, -1, -1, FONT_SCREEN, 2);
	};

	if (attrib == BLESS_TALENT_CROSSBOW)
	{
		B_RaiseFightTalent (oth, NPC_TALENT_CROSSBOW, 		points);
		PrintScreen	(Print_PRAYADANOS_BlessCBOW, -1, -1, FONT_SCREEN, 2);
	};
};
