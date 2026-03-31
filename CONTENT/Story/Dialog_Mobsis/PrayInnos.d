var int PrayInnosDay;
var string concatDonation;

var int Shrine_STR_Bonus;
var int Shrine_DEX_Bonus;


var int SpecialBless; //RAUS

//******************************************
// verwunschene Schreine ab Kapitel 3
//******************************************

var int ShrineIsObsessed;
var int SHRINEHEALING;
var int SHRINESHEALED;

var int ShrineIsObsessed_NW_TROLLAREA_PATH_37;
var int ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_66;
var int ShrineIsObsessed_NW_TROLLAREA_PATH_04;
var int ShrineIsObsessed_SAGITTA;
var int ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02;
var int ShrineIsObsessed_NW_FARM3_BIGWOOD_02;
//Joly: VORSICHT: AUF DIE ANZAHL (SHRINESHEALED) UNTEN ACHTEN!!!!!!

FUNC VOID C_IsShrineObsessed (var C_NPC slf)
{
	if 	(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(hero))
	{
		ShrineIsObsessed = TRUE;
		if 		((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_37")<2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_37 == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_NW_TROLLAREA_PATH_37 = FALSE;ShrineIsObsessed = FALSE;};}
		else if ((Npc_GetDistToWP(hero,"NW_FARM1_CONNECT_XARDAS")<2000) && (ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS = FALSE;ShrineIsObsessed = FALSE;};}
		else if ((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_66")<2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_66 == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_NW_TROLLAREA_PATH_66 = FALSE;ShrineIsObsessed = FALSE;};}
		else if ((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_04")<2000) && (ShrineIsObsessed_NW_TROLLAREA_PATH_04 == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_NW_TROLLAREA_PATH_04 = FALSE;ShrineIsObsessed = FALSE;};}
		else if ((Npc_GetDistToWP(hero,"SAGITTA")<2000) && (ShrineIsObsessed_SAGITTA == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_SAGITTA = FALSE;ShrineIsObsessed = FALSE;};}
		else if ((Npc_GetDistToWP(hero,"NW_BIGMILL_MALAKSVERSTECK_02")<2000) && (ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 = FALSE;ShrineIsObsessed = FALSE;};}
		else if ((Npc_GetDistToWP(hero,"NW_FARM3_BIGWOOD_02")<2000) && (ShrineIsObsessed_NW_FARM3_BIGWOOD_02 == TRUE)){if (SHRINEHEALING == TRUE)	{ShrineIsObsessed_NW_FARM3_BIGWOOD_02 = FALSE;ShrineIsObsessed = FALSE;};}
		else
		{
			ShrineIsObsessed = FALSE;
		};	
	};
}; 

//*******************************************************
//	HEALSHRINE
//*******************************************************
INSTANCE PC_PrayInnos_HEALSHRINE (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_PrayInnos_HEALSHRINE_Condition;
	information		= PC_PrayInnos_HEALSHRINE_Info;
	permanent		= TRUE;
	description		= "Schrein reinigen"; 
};

FUNC INT PC_PrayInnos_HEALSHRINE_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYSHRINE)
	&& (Npc_HasItems (hero,ItMi_UltharsHolyWater_Mis))
	&& (ShrineIsObsessed == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_HEALSHRINE_Info()
{
	Wld_PlayEffect("spellFX_HealShrine",  hero, hero, 0, 0, 0, FALSE );
	Snd_Play ("MFX_Heal_Cast" );
	SHRINEHEALING = TRUE;
	C_IsShrineObsessed (self);
	SHRINEHEALING = FALSE;
	ShrinesHealed = ShrinesHealed + 1;
	
	if (SHRINESHEALED < 7)	//Joly: Anzahl der zu heilenden Schreine 
	{
		B_Say (self, self, "$HEALSHRINE");

		var string ShrinesText;
		var string ShrinesLeft;
		ShrinesLeft = IntToString (7 - SHRINESHEALED);
		ShrinesText = ConcatStrings(ShrinesLeft, PRINT_NumberLeft);
		AI_PrintScreen	(ShrinesText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
	}
	else
	{
		B_Say (self, self, "$HEALLASTSHRINE");
		MIS_Ulthar_HeileSchreine_PAL = LOG_SUCCESS;
	};
	B_GivePlayerXP (XP_Ambient);
	B_ENDPRODUCTIONDIALOG ();
}; 

// ****************************************************
// PrayShrine_S1
// --------------
// Funktion wird durch Shrine-Benutzung aufgerufen!
// *****************************************************
FUNC VOID PrayInnos_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		C_IsShrineObsessed (self);
		if (ShrineIsObsessed == TRUE)
		{
			Wld_PlayEffect("DEMENTOR_FX",  hero, hero, 0, 0, 0, FALSE );
		};

		self.aivar[AIV_INVINCIBLE]=TRUE; 
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_PrayShrine;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************
//	PrayShrine Dialog abbrechen
//*******************************************************
INSTANCE PC_PrayInnos_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PrayInnos_End_Condition;
	information		= PC_PrayInnos_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_PrayInnos_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYSHRINE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_End_Info()
{
	B_ENDPRODUCTIONDIALOG ();
}; 
//*******************************************************
//Für das Heil der Paladine beten
//*******************************************************
INSTANCE PC_PrayInnos_Paladine (C_Info)
{
	npc				= PC_Hero;
	nr				= 3;
	condition		= PC_PrayInnos_Paladine_Condition;
	information		= PC_PrayInnos_Paladine_Info;
	permanent		= FALSE;
	description		= "Ein Gebet für die Paladine sprechen."; 
};

FUNC INT PC_PrayInnos_Paladine_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYSHRINE)
	&& (MIS_MardukBeten == LOG_RUNNING)
	&& (Kapitel == 1)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_Paladine_Info()
{
	PrintScreen	(Pray_Paladin1, -1, 33,FONT_ScreenSmall,3);
	PrintScreen	(Pray_Paladin2, -1, 36,FONT_ScreenSmall,4);
	PrintScreen	(Pray_Paladin3, -1, 39,FONT_ScreenSmall,5);
	PrintScreen	(Pray_Paladin4, -1, 42,FONT_ScreenSmall,6);

	Wld_PlayEffect("spellFX_PalHeal_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
	Snd_Play ("MFX_Heal_Cast" );
}; 
//*******************************************************
//	Beten
//*******************************************************
INSTANCE PC_PrayInnos_Pray (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayInnos_Pray_Condition;
	information		= PC_PrayInnos_Pray_Info;
	permanent		= TRUE;
	description		= "Beten"; 
};

FUNC INT PC_PrayInnos_Pray_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYSHRINE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_Pray_Info()
{
	if (ShrineIsObsessed == TRUE)
		{
			SC_IsObsessed = TRUE;
			PrintScreen	(PRINT_SCIsObsessed, -1,-1,FONT_Screen,2);
			Snd_Play ("DEM_Die");
		}
	else
		{		
			Info_ClearChoices (PC_PrayInnos_Pray);
			Info_AddChoice (PC_PrayInnos_Pray,Dialog_Back,PC_PrayInnos_Pray_Back);
			Info_AddChoice (PC_PrayInnos_Pray,"Ich will beten und spende 0 Goldstücke.",PC_PrayInnos_Pray_NoPay);
			
			if (Npc_HasItems (hero,ItMi_Gold) >=10)
			{
				Info_AddChoice (PC_PrayInnos_Pray,"Ich will beten und spende 10 Goldstücke.",PC_PrayInnos_Pray_SmallPay);
			};
			if (Npc_HasItems (hero,ItMi_Gold) >=50)
			{
				Info_AddChoice (PC_PrayInnos_Pray,"Ich will beten und spende 50 Goldstücke.",PC_PrayInnos_Pray_MediumPay);
			};
			if (Npc_HasItems (hero,ItMi_Gold) >=100)
			{
				Info_AddChoice (PC_PrayInnos_Pray,"Ich will beten und spende 100 Goldstücke.",PC_PrayInnos_Pray_BigPay);
			};
		};
}; 

FUNC VOID PC_PrayInnos_Pray_Back ()
{
	Info_ClearChoices (PC_PrayInnos_Pray);
};

//****************
//	0 Gold
//****************

FUNC VOID PC_PrayInnos_Pray_NoPay ()
{
	var int zufall; zufall = Hlp_Random(100);

	// ----- Heute Schon gebetet? -----	
	if (PrayInnosDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else if (zufall < 5) //heute noch nicht gebetet
	{
		B_BlessAttribute (hero, BLESS_HITPOINTS_MAX, 1);
	}
	else
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	};
	
	PrayInnosDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayInnos_Pray);
};

//****************
//	10 Gold
//****************
func VOID PC_PrayInnos_Pray_SmallPay ()
{
	Npc_RemoveInvItems  (hero,ItMi_Gold, 10);
	
	if (PrayInnosDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else
	{
		B_BlessAttribute (hero, BLESS_HITPOINTS_MAX, 1);
	};
	
	PrayInnosDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayInnos_Pray);
};

//****************
//	50 Gold
//****************
FUNC VOID PC_PrayInnos_Pray_MediumPay ()
{
	Npc_RemoveInvItems  (hero,ItMi_Gold, 50);
	
	// ----- Heute Schon gebetet? -----	
	if (PrayInnosDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else//heute noch nicht gebetet
	{
		B_BlessAttribute (hero, BLESS_HITPOINTS_MAX, 2);
	};
	
	PrayInnosDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayInnos_Pray);
};

//****************
//	100 Gold
//****************
func VOID PC_PrayInnos_Pray_BigPay ()
{
	var int zufall;	zufall = Hlp_Random(100);
	
	Npc_RemoveInvItems  (hero,ItMi_Gold, 100);
	
	// ----- Heute Schon gebetet? -----	
	if (PrayInnosDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else//heute noch nicht gebetet
	{
		if (Shrine_STR_Bonus < 10)
		&& (hero.guild != GIL_KDF)
		&& (hero.guild != GIL_NOV)
		&& (zufall < 50)
		{
			B_BlessAttribute (hero, BLESS_STRENGTH, 1);
			Shrine_STR_Bonus += 1;
		}
		else if (Shrine_DEX_Bonus < 10)
		&& (hero.guild != GIL_KDF)
		&& (hero.guild != GIL_NOV)
		&& (zufall >= 50)
		{
			B_BlessAttribute (hero, BLESS_DEXTERITY, 1);
			Shrine_DEX_Bonus += 1;
		}
		else
		{
			B_BlessAttribute (hero, BLESS_HITPOINTS_MAX, 3);
		};
	};
	
	PrayInnosDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayInnos_Pray);
};

//*******************************************************
//	SchwertWeihe
//*******************************************************
INSTANCE PC_PrayInnos_BlessSword (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayInnos_BlessSword_Condition;
	information		= PC_PrayInnos_BlessSword_Info;
	permanent		= TRUE;
	description		= Bless_Sword; 
};

FUNC INT PC_PrayInnos_BlessSword_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP (hero,"NW_MONASTERY_CHAPELL_02") <= 500)   
	&& ((Npc_HasItems (hero,ITMW_REVIVED_1H_SWORD_PALADIN_01) >= 1)
	||  (Npc_HasItems (hero,ITMW_REVIVED_2H_SWORD_PALADIN_01) >= 1))
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_BlessSword_Info()
{
	if (Npc_HasItems (hero,ItMi_Gold) >= Gold_BlessSword)
	{
		Npc_RemoveInvItems  (hero,ItMi_Gold, Gold_BlessSword);
		concatDonation = ConcatStrings(IntToString(Gold_BlessSword), PRINT_GoldGegeben);				
		AI_PrintScreen	(concatDonation, -1, -1, FONT_SCREENSmall, 2);
			
		if (Npc_HasItems (hero,ITMW_REVIVED_1H_SWORD_PALADIN_01) >= 1)		//1H-Waffe
		{	
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_1H_SWORD_PALADIN_01, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_1H_SWORD_PALADIN_02, 1);
		}
		else	//2H-Waffe
		{
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_2H_SWORD_PALADIN_01, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_2H_SWORD_PALADIN_02, 1);
		};

			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Heal_Cast" );
			B_GivePlayerXP (XP_SwordBlessed);
	}
	else
	{
		AI_PrintScreen	(PRINT_NotEnoughGold, -1, -1, FONT_SCREENSmall, 2);
	};	
}; 

//*******************************************************
//	Finale SchwertWeihe
//*******************************************************
INSTANCE PC_PrayInnos_BlessSword_Final (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayInnos_BlessSword_Final_Condition;
	information		= PC_PrayInnos_BlessSword_Final_Info;
	permanent		= TRUE;
	description		= Bless_Sword2; 
};

FUNC INT PC_PrayInnos_BlessSword_Final_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_PAL)
	&& (Npc_GetDistToWP (hero,"NW_MONASTERY_CHAPELL_02") <= 500) 
	&& (PAL_KnowsAbout_FINAL_BLESSING == TRUE)  
	&& ((Npc_HasItems (hero,ITMW_REVIVED_1H_SWORD_PALADIN_01) >= 1)
	||  (Npc_HasItems (hero,ITMW_REVIVED_2H_SWORD_PALADIN_01) >= 1))
	&& ((Npc_HasItems (hero,ITMW_REVIVED_1H_SWORD_PALADIN_02) >= 1)
	||  (Npc_HasItems (hero,ITMW_REVIVED_2H_SWORD_PALADIN_02) >= 1))
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_BlessSword_FINAL_Info()
{
	if (Npc_HasItems (hero,ItPo_PotionOfDeath_01_Mis) >= 1)
	|| (Npc_HasItems (hero,ItPo_PotionOfDeath_02_Mis) >= 1)
	{
		Npc_RemoveInvItems  (hero,ItPo_PotionOfDeath_01_Mis, 1);
		Npc_RemoveInvItems  (hero,ItPo_PotionOfDeath_02_Mis, 1);
		
		if (Npc_HasItems (hero,ITMW_REVIVED_1H_SWORD_PALADIN_01) >= 1)			//1H Regular
		{	
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_1H_SWORD_PALADIN_01, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_1H_SWORD_PALADIN_03, 1);
		}
		else if (Npc_HasItems (hero,ITMW_REVIVED_1H_SWORD_PALADIN_02) >= 1)		//1H Blessed
		{	
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_1H_SWORD_PALADIN_02, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_1H_SWORD_PALADIN_03, 1);
		}
		else if (Npc_HasItems (hero,ITMW_REVIVED_2H_SWORD_PALADIN_01) >= 1)		//2H Regular
		{
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_2H_SWORD_PALADIN_01, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_2H_SWORD_PALADIN_03, 1);
		}
		else if (Npc_HasItems (hero,ITMW_REVIVED_2H_SWORD_PALADIN_02) >= 1)		//2H Blessed
		{	
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_2H_SWORD_PALADIN_02, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_2H_SWORD_PALADIN_03, 1);
		};

			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Heal_Cast" );
			B_GivePlayerXP (XP_SwordBlessed2);
	}
	else
	{
		AI_PrintScreen	(PRINT_NoInnosTears, -1, -1, FONT_SCREENSmall, 2);
	};	
}; 


//*******************************************************
//	Purify Sword
//*******************************************************
INSTANCE PC_PrayInnos_PurifySword (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayInnos_PurifySword_Condition;
	information		= PC_PrayInnos_PurifySword_Info;
	permanent		= TRUE;
	description		= PurifySword; 
};

FUNC INT PC_PrayInnos_PurifySword_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYSHRINE)
	&& (hero.guild == GIL_DJG)
	&& (Npc_GetDistToWP (hero,"NW_MONASTERY_CHAPELL_02") <= 500) 
	&& (DJG_KnowsAbout_Purifying == TRUE)  
	&& (Npc_HasItems (hero,ITMW_REVIVED_2H_INNOS_SWORD_01) >= 1)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PrayInnos_PurifySword_Info()
{
	if (Npc_HasItems (hero,ItPo_PotionOfDeath_01_Mis) >= 1)
	|| (Npc_HasItems (hero,ItPo_PotionOfDeath_02_Mis) >= 1)
	{
		Npc_RemoveInvItems  (hero,ItPo_PotionOfDeath_01_Mis, 1);
		Npc_RemoveInvItems  (hero,ItPo_PotionOfDeath_02_Mis, 1);
		
		if (Npc_HasItems (hero,ITMW_REVIVED_2H_INNOS_SWORD_01) >= 1)		//2H-Waffe
		{	
			Npc_RemoveInvItems  (hero,ITMW_REVIVED_2H_INNOS_SWORD_01, 1);
			CreateInvItems 		(hero,ITMW_REVIVED_2H_INNOS_SWORD_02, 1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",  hero, hero, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Heal_Cast" );
			B_GivePlayerXP (XP_SwordBlessed2);
		};
	}
	else
	{
		AI_PrintScreen	(PRINT_NoInnosTears, -1, -1, FONT_SCREENSmall, 2);
	};	
}; 
