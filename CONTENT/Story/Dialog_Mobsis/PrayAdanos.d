var int PrayAdanosDay;

// ****************************************************
// PrayShrine_S1
// --------------
// Funktion wird durch Shrine-Benutzung aufgerufen!
// *****************************************************
FUNC VOID PrayAdanos_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE]=TRUE; 
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_PRAYADANOS;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************
//	Function to Deal with Bonuses
//*******************************************************

FUNC VOID PC_PrayAdanos_BonusLogic(var int lpAmount)
{
	var int zufall;	zufall = Hlp_Random(100);
	
	if (zufall >= 20 && zufall <= 39)
	&& (hero.HitChance[NPC_TALENT_1H] <= 97)
	{
		B_BlessAttribute (hero, BLESS_TALENT_1H, lpAmount);
	}
	else if (zufall >= 40 && zufall <= 59)
	&& (hero.HitChance[NPC_TALENT_2H] <= 97)
	{
		B_BlessAttribute (hero, BLESS_TALENT_2H, lpAmount);
	}
	else if (zufall >= 60 && zufall <= 79)
	&& (hero.HitChance[NPC_TALENT_BOW] <= 97)
	{
		B_BlessAttribute (hero, BLESS_TALENT_BOW, lpAmount);
	}
	else if (zufall >= 80 && zufall <= 100)
	&& (hero.HitChance[NPC_TALENT_CROSSBOW] <= 97)
	{
		B_BlessAttribute (hero, BLESS_TALENT_CROSSBOW, lpAmount);
	}
	else
	{
		B_BlessAttribute (hero, BLESS_MANA_MAX, lpAmount + 2);
	};
	
		hero.lp = hero.lp - lpAmount;
		
	PrayAdanosDay = Wld_GetDay();
	Info_ClearChoices (PC_PrayAdanos_Pray);
};



func VOID B_WISPSHRINE_LearnEffect()
{
	Wld_PlayEffect("spellFX_HealShrine",  hero, hero, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  hero, hero, 0, 0, 0, FALSE );
	Snd_Play ("WSP_Dead_A1");
};

func int B_LearnTalentWispDetector (var C_NPC slf, var int WispSkill)
{
	// FUNC
				
	// ------ Lernpunkte abziehen ------			
	Log_CreateTopic (TOPIC_WispDetector,LOG_NOTE);
	B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned); 
	
	// ------ Körperteil nehmen lernen ------
	
	if (WispSkill == WISPSKILL_FF) 					{	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] 			= TRUE;	B_WISPSHRINE_LearnEffect(); B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned_FF);};
	if (WispSkill == WISPSKILL_NONE) 				{	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] 			= TRUE;	B_WISPSHRINE_LearnEffect(); B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned_NONE);};
	if (WispSkill == WISPSKILL_RUNE) 				{	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] 			= TRUE;	B_WISPSHRINE_LearnEffect(); B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned_RUNE);};
	if (WispSkill == WISPSKILL_MAGIC) 				{	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] 		= TRUE;	B_WISPSHRINE_LearnEffect(); B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned_MAGIC);};
	if (WispSkill == WISPSKILL_FOOD) 				{	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] 			= TRUE;	B_WISPSHRINE_LearnEffect(); B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned_FOOD);};
	if (WispSkill == WISPSKILL_POTIONS) 			{	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] 		= TRUE;	B_WISPSHRINE_LearnEffect(); B_LogEntry (TOPIC_WispDetector,LogText_Addon_WispLearned_POTIONS);};
                                                                                                                                                                                                        
	PrintScreen			(PRINT_LearnWispDetector, -1, -1, FONT_SCREEN, 2);                                                                                                                                
	
	// ------ bei jedem Körperteil: WispDetector-Talent lernen (programmvariable, wird nur zur Ausgabe in StatusScreen benutzt) ------
	Npc_SetTalentSkill 	(slf, NPC_TALENT_WISPDETECTOR , 1);
	return TRUE;
};

//*******************************************************
//	PrayShrine Dialog abbrechen
//*******************************************************
INSTANCE PC_PrayAdanos_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PrayAdanos_End_Condition;
	information		= PC_PrayAdanos_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_PrayAdanos_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_PRAYADANOS)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayAdanos_End_Info()
{
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//	Beten
//*******************************************************
INSTANCE PC_PrayAdanos_Pray (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayAdanos_Pray_Condition;
	information		= PC_PrayAdanos_Pray_Info;
	permanent		= TRUE;
	description		= "Beten"; 
};

FUNC INT PC_PrayAdanos_Pray_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYADANOS)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayAdanos_Pray_Info()
{	
	Info_ClearChoices (PC_PrayAdanos_Pray);
	Info_AddChoice (PC_PrayAdanos_Pray,Dialog_Back,PC_PrayAdanos_Pray_Back);
	Info_AddChoice (PC_PrayAdanos_Pray,NAME_PRAYADANOS_GIVENOTHING,PC_PrayAdanos_Pray_NoPay);
			
	if (PrayAdanosDay == Wld_GetDay())		
	{
		
	}
	else 
	{
		if (hero.LP >= 1)
		{
			Info_AddChoice (PC_PrayAdanos_Pray,NAME_PRAYADANOS_GIVELP1,PC_PrayAdanos_Pray_SmallPay);
		};
		if (hero.LP >= 2)
		{
			Info_AddChoice (PC_PrayAdanos_Pray,NAME_PRAYADANOS_GIVELP2,PC_PrayAdanos_Pray_MediumPay);
		};
		if (hero.LP >= 3)
		{
			Info_AddChoice (PC_PrayAdanos_Pray,NAME_PRAYADANOS_GIVELP3,PC_PrayAdanos_Pray_BigPay);
		};
		if (hero.exp >= 1000)
		&& (Npc_HasItems (hero,ItAm_Addon_WispDetector) >= 1)
		&& ((PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] 		== TRUE)
		|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF]		== FALSE)
		|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] 	== FALSE)	
		|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] 	== FALSE)	
		|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] 	== FALSE)	
		|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] 	== FALSE)	
		|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] 	== FALSE))
		{
			Info_AddChoice (PC_PrayAdanos_Pray,NAME_PRAYADANOS_GIVEEXP,PC_PrayAdanos_Pray_AltPay);
		};
	};
}; 

FUNC VOID PC_PrayAdanos_Pray_Back ()
{
	Info_ClearChoices (PC_PrayAdanos_Pray);
};

//****************
//	500 Exp
//****************

FUNC VOID PC_PrayAdanos_Pray_AltPay ()
{
	var int zufall; zufall = Hlp_Random(100);
	var int heroNextExp; heroNextExp = (500*(((hero.level-1)+2)/2)*((hero.level-1)+1));

	// ----- Heute Schon gebetet? -----	
	if ((hero.exp - 1000) > heroNextExp)
	{
		if(zufall >= 0 && zufall <= 24)
		&& (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
		{
			B_LearnTalentWispDetector (hero, WISPSKILL_FF);
		}
		else if(zufall >= 25 && zufall <= 39)
		&& (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)
		{
			B_LearnTalentWispDetector (hero, WISPSKILL_NONE);
		}
		else if (zufall >= 40 && zufall <= 54)
		&& (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)
		{
			B_LearnTalentWispDetector (hero, WISPSKILL_RUNE);
		}
		else if (zufall >= 55 && zufall <= 69)
		&& (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)
		{
			B_LearnTalentWispDetector (hero, WISPSKILL_MAGIC);
		}
		else if (zufall >= 70 && zufall <= 84)
		&& (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)
		{
			B_LearnTalentWispDetector (hero, WISPSKILL_FOOD);
		}
		else if (zufall >= 85 && zufall <= 99)
		&& (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE)
		{
			B_LearnTalentWispDetector (hero, WISPSKILL_POTIONS);
		}
		else if (zufall == 100)
		{
			hero.lp = hero.lp + 1;

			Wld_PlayEffect("spellFX_Transform",  hero, hero, 0, 0, 0, FALSE );
			PrintScreen	(Print_PRAYADANOS_BlessWisp, -1, -1, FONT_SCREEN, 2);
		}
		else
		{
			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];

			Wld_PlayEffect("spellFX_Heal",  hero, hero, 0, 0, 0, FALSE );
			PrintScreen	(Print_PRAYADANOS_BlessWisp, -1, -1, FONT_SCREEN, 2);
		};

		hero.exp = hero.exp - 1000;
		PrayAdanosDay = Wld_GetDay ();
	}
	else
	{
		PrintScreen	(Print_PRAYADANOS_BlessCant, -1, -1, FONT_SCREEN, 2);
	};
	
	Info_ClearChoices (PC_PrayAdanos_Pray);
};

//****************
//	No Offering
//****************

FUNC VOID PC_PrayAdanos_Pray_NoPay ()
{
	var int zufall; zufall = Hlp_Random(100);

	// ----- Heute Schon gebetet? -----	
	if (PrayAdanosDay == Wld_GetDay())		
	{
		PrintScreen	(Print_PRAYADANOS_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else if (zufall <= 5) //heute noch nicht gebetet
	{
		B_BlessAttribute (hero, BLESS_MANA_MAX, 1);
	}
	else
	{
		PrintScreen	(Print_PRAYADANOS_BlessNone, -1, -1, FONT_SCREEN, 2);
	};
	
	PrayAdanosDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayAdanos_Pray);
};

//****************
//	LP
//****************

func VOID PC_PrayAdanos_Pray_SmallPay ()
{
	PC_PrayAdanos_BonusLogic(1);
};

FUNC VOID PC_PrayAdanos_Pray_MediumPay ()
{
	PC_PrayAdanos_BonusLogic(2);
};

func VOID PC_PrayAdanos_Pray_BigPay ()
{
	PC_PrayAdanos_BonusLogic(3);
};