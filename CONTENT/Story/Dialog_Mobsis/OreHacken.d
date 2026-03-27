FUNC INT B_OreMob_Bestimmung()
{
	//	OLDWORLD
	if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_01") && (OreMob_All_Amount_MAX > OreMob_01_Amount)
	{
		OreMob_01_Amount = (OreMob_01_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_02") && (OreMob_All_Amount_MAX > OreMob_02_Amount)
	{
		OreMob_02_Amount = (OreMob_02_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_03") && (OreMob_All_Amount_MAX > OreMob_03_Amount)
	{
		OreMob_03_Amount = (OreMob_03_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_04") && (OreMob_All_Amount_MAX > OreMob_04_Amount)
	{
		OreMob_04_Amount = (OreMob_04_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_05") && (OreMob_All_Amount_MAX > OreMob_05_Amount)
	{
		OreMob_05_Amount = (OreMob_05_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_06") && (OreMob_All_Amount_MAX > OreMob_06_Amount)
	{
		OreMob_06_Amount = (OreMob_06_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_07") && (OreMob_All_Amount_MAX > OreMob_07_Amount)
	{
		OreMob_07_Amount = (OreMob_07_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_08") && (OreMob_All_Amount_MAX > OreMob_08_Amount)
	{
		OreMob_08_Amount = (OreMob_08_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_09") && (OreMob_All_Amount_MAX > OreMob_09_Amount)
	{
		OreMob_09_Amount = (OreMob_09_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_10") && (OreMob_All_Amount_MAX > OreMob_10_Amount)
	{
		OreMob_10_Amount = (OreMob_10_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_11") && (OreMob_All_Amount_MAX > OreMob_11_Amount)
	{
		OreMob_11_Amount = (OreMob_11_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_12") && (OreMob_All_Amount_MAX > OreMob_12_Amount)
	{
		OreMob_12_Amount = (OreMob_12_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_13") && (OreMob_All_Amount_MAX > OreMob_13_Amount)
	{
		OreMob_13_Amount = (OreMob_13_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_14") && (OreMob_All_Amount_MAX > OreMob_14_Amount)
	{
		OreMob_14_Amount = (OreMob_14_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_15") && (OreMob_All_Amount_MAX > OreMob_15_Amount)
	{
		OreMob_15_Amount = (OreMob_15_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_16") && (OreMob_All_Amount_MAX > OreMob_16_Amount)
	{
		OreMob_16_Amount = (OreMob_16_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_17") && (OreMob_All_Amount_MAX > OreMob_17_Amount)
	{
		OreMob_17_Amount = (OreMob_17_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_18") && (OreMob_All_Amount_MAX > OreMob_18_Amount)
	{
		OreMob_18_Amount = (OreMob_18_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_19") && (OreMob_All_Amount_MAX > OreMob_19_Amount)
	{
		OreMob_19_Amount = (OreMob_19_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_20") && (OreMob_All_Amount_MAX > OreMob_20_Amount)
	{
		OreMob_20_Amount = (OreMob_20_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "OW_OM_PICKSLOT_21") && (OreMob_All_Amount_MAX > OreMob_21_Amount)
	{
		OreMob_21_Amount = (OreMob_21_Amount +1);
		return TRUE;
	}

	//	ABANDONED MINE
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_000") && (OreMob_All_Amount_MAX > OreMob_22_Amount)
	{
		OreMob_22_Amount = (OreMob_22_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_001") && (OreMob_All_Amount_MAX > OreMob_23_Amount)
	{
		OreMob_23_Amount = (OreMob_23_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_002") && (OreMob_All_Amount_MAX > OreMob_24_Amount)
	{
		OreMob_24_Amount = (OreMob_24_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_005") && (OreMob_All_Amount_MAX > OreMob_25_Amount)
	{
		OreMob_25_Amount = (OreMob_25_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_007") && (OreMob_All_Amount_MAX > OreMob_26_Amount)
	{
		OreMob_26_Amount = (OreMob_26_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_008") && (OreMob_All_Amount_MAX > OreMob_27_Amount)
	{
		OreMob_27_Amount = (OreMob_27_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_014") && (OreMob_All_Amount_MAX > OreMob_28_Amount)
	{
		OreMob_28_Amount = (OreMob_28_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_018") && (OreMob_All_Amount_MAX > OreMob_29_Amount)
	{
		OreMob_29_Amount = (OreMob_29_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "AM_ORE_019") && (OreMob_All_Amount_MAX > OreMob_30_Amount)
	{
		OreMob_30_Amount = (OreMob_30_Amount +1);
		return TRUE;
	}

	//	NEWWORLD
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "NW_CASTLEMINE_13") && (OreMob_All_Amount_MAX > OreMob_31_Amount)
	{
		OreMob_31_Amount = (OreMob_31_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "NW_CASTLEMINE_12") && (OreMob_All_Amount_MAX > OreMob_32_Amount)
	{
		OreMob_32_Amount = (OreMob_32_Amount +1);
		return TRUE;
	};
	
	//sonst nicht
	return FALSE;
};
FUNC VOID OreHacken_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE]=TRUE;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_OREHACKEN;
		Ai_ProcessInfos (her);
	};
}; 
//*******************************************************
//	Goldhacken Dialog abbrechen
//*******************************************************
INSTANCE PC_OreHacken_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_OreHacken_End_Condition;
	information		= PC_OreHacken_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_OreHacken_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_OREHACKEN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_OreHacken_End_Info()
{
	Truemmer_Count = 0;
	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//	Goldhacken 
//*******************************************************
INSTANCE PC_OreHacken_Hour (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_OreHacken_Hour_Condition;
	information		= PC_OreHacken_Hour_Info;
	permanent		= TRUE;
	description		= "Einfach mal hacken."; 
};

FUNC INT PC_OreHacken_Hour_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_OREHACKEN)
	{	
		return TRUE;
	};
};
var int OreCounter;
FUNC VOID PC_OreHacken_Hour_Info()
{
	if (B_OreMob_Bestimmung() == TRUE)
	{
	
	//----- EIGENTLICHES HACKEN -------------
	var int CurrentChance;
	CurrentChance = Hlp_Random (100);

		if (CurrentChance <= Hero_HackChance)
		{
				CreateInvItems (hero, ItMi_GoldNugget_Addon, 1);	
				PrintScreen ("1 Erzklumpen abgebaut!", -1, -1, FONT_ScreenSmall, 2);	
				Truemmer_Count = 0;
				OreCounter = (OreCounter +1);

				//---------- Learning by doing  10 PKT---------
				Learn_by_doing = (Learn_by_doing +1);
				
				if (Learn_by_doing == 10)
				{
					B_Upgrade_Hero_HackChance (2);
				}
				else if (Learn_by_doing == 15)
				{
					B_Upgrade_Hero_HackChance (3);
				}	
				else if (Learn_by_doing == 20)
				{
					B_Upgrade_Hero_HackChance (5);
				};
		}
		else
		{
			PrintScreen ("Erzsplitter fliegen überall herum...", -1, -1, FONT_ScreenSmall, 2);	
			Truemmer_Count = (Truemmer_Count +1);
		};
	}
	else
	{
		PrintScreen ("Hier gibt's Nichts mehr zu holen.", -1, -1, FONT_ScreenSmall, 2);	
		B_ENDPRODUCTIONDIALOG ();
	};
};
//*******************************************************
//	Goldhacken Trmmerschlag
//*******************************************************
INSTANCE PC_OreHacken_TSchlag (C_Info)
{
	npc				= PC_Hero;
	nr				= 997;
	condition		= PC_OreHacken_TSchlag_Condition;
	information		= PC_OreHacken_TSchlag_Info;
	permanent		= TRUE;
	description		= "Trümmerschlag ansetzen."; 
};

FUNC INT PC_OreHacken_TSchlag_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_OREHACKEN)
	&& (Truemmer_Count >= 2)
	&& (Knows_Truemmerschlag == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_OreHacken_TSchlag_Info()
{
	var int TruemmerChance;
	TruemmerChance = Hlp_Random (100);
		
	if (TruemmerChance <= 5)
	{
			PrintScreen ("Nichts ...", -1, -1, FONT_ScreenSmall, 2);	
	}
	else
	{
		Snd_Play ("RAVENS_EARTHQUAKE3");
		Wld_PlayEffect("FX_EarthQuake",  self, self, 0, 0, 0, FALSE );
		
		
		if (TruemmerChance >= 85)
		{
			//----Gold verteilen-----------------------
			CreateInvItems (hero, ItMi_Nugget, 4);	
			PrintScreen ("4 Erzklumpen abgebaut!", -1, -1, FONT_ScreenSmall, 2);	
			
		}
		else if (TruemmerChance >= 50)
		{
			CreateInvItems (hero, ItMi_Nugget, 3);	
			PrintScreen ("3 Erzklumpen abgebaut!", -1, -1, FONT_ScreenSmall, 2);	
		
		}
		else 
		{
			CreateInvItems (hero, ItMi_Nugget, 2);	
			PrintScreen ("2 Erzklumpen abgebaut!", -1, -1, FONT_ScreenSmall, 2);	
		};
	};
	Truemmer_Count = 0;
	
	
};
//*******************************************************
//	Goldhacken Chance
//*******************************************************
INSTANCE PC_OreHacken_Chance (C_Info)
{
	npc				= PC_Hero;
	nr				= 998;
	condition		= PC_OreHacken_Chance_Condition;
	information		= PC_OreHacken_Chance_Info;
	permanent		= TRUE;
	description		= "(Eigene Fähigkeit prüfen)"; 
};

FUNC INT PC_OreHacken_Chance_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_OREHACKEN)
	{	
		return TRUE;
	};
};
FUNC VOID PC_OreHacken_Chance_Info()
{
	var string ConcatText;

	
	if (Hero_HackChance < 20) 
	{
		ConcatText = ConcatStrings ("Absoluter Anfänger (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 40) 
	{
		ConcatText = ConcatStrings ("Ziemlich passabler Schürfer (" , IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 55) 
	{
		ConcatText = ConcatStrings ("Ein erfahrener Schürfer (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 75) 
	{
		ConcatText = ConcatStrings ("Echter Buddler (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 90) 
	{
		ConcatText = ConcatStrings ("Verdammt guter Buddler (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 98) 
	{
		ConcatText = ConcatStrings ("Meisterbuddler (", IntToString (Hero_HackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("Guru unter den Buddlern (", IntToString (Hero_HackChance));
	};
	
	ConcatText = ConcatStrings (concatText, "Prozent)");
	
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall,2);
};
