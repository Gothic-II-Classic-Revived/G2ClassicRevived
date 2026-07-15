// ****************************************************
// LeatherWork
// ****************************************************

FUNC VOID LeatherWork ()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_LEATHERWORK;
		Ai_ProcessInfos (her);
	};
};

FUNC VOID LeatherWork_S1 ()
{
	LeatherWork ();
};

FUNC INT LeatherWork_Active ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK)
	{
		return TRUE;
	};

	return FALSE;
};

FUNC INT LeatherWork_HasLeatherSource (var int itemInstance)
{
	if (LeatherWork_Active())
	&& (Npc_HasItems (hero, itemInstance) >= 1)
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID LeatherWork_MakeLeather (var int itemInstance, var int leatherAmount)
{
	if (Npc_HasItems (hero, itemInstance) >= 1)
	{
		Npc_RemoveInvItems (hero, itemInstance, 1);
		CreateInvItems (hero, ITMI_REVIVED_LEATHER, leatherAmount);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
	};

	B_ENDPRODUCTIONDIALOG ();
};

// ****************************************************
// End
// ****************************************************

INSTANCE PC_LeatherWork_End (C_Info)
{
	npc         = PC_Hero;
	nr          = 999;
	condition   = PC_LeatherWork_End_Condition;
	information = PC_LeatherWork_End_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT PC_LeatherWork_End_Condition ()
{
	if (LeatherWork_Active())
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_End_Info ()
{
	B_ENDPRODUCTIONDIALOG ();
};

// ****************************************************
// Leather
// ****************************************************

INSTANCE PC_LeatherWork_SheepFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 100;
	condition   = PC_LeatherWork_SheepFur_Condition;
	information = PC_LeatherWork_SheepFur_Info;
	permanent   = TRUE;
	description = "Turn Sheep Skin into leather (x1)";
};

FUNC INT PC_LeatherWork_SheepFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_SheepFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_SheepFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_SheepFur, 1);
};

INSTANCE PC_LeatherWork_WolfFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 101;
	condition   = PC_LeatherWork_WolfFur_Condition;
	information = PC_LeatherWork_WolfFur_Info;
	permanent   = TRUE;
	description = "Turn Wolf Skin into leather (x1)";
};

FUNC INT PC_LeatherWork_WolfFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_WolfFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_WolfFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_WolfFur, 1);
};

INSTANCE PC_LeatherWork_LurkerSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 102;
	condition   = PC_LeatherWork_LurkerSkin_Condition;
	information = PC_LeatherWork_LurkerSkin_Info;
	permanent   = TRUE;
	description = "Turn Lurker skin into leather (x2)";
};

FUNC INT PC_LeatherWork_LurkerSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (itat_LurkerSkin))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_LurkerSkin_Info ()
{
	LeatherWork_MakeLeather (itat_LurkerSkin, 2);
};

INSTANCE PC_LeatherWork_WargFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 103;
	condition   = PC_LeatherWork_WargFur_Condition;
	information = PC_LeatherWork_WargFur_Info;
	permanent   = TRUE;
	description = "Turn Warg Skin into leather (x2)";
};

FUNC INT PC_LeatherWork_WargFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_WargFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_WargFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_WargFur, 2);
};

INSTANCE PC_LeatherWork_KeilerFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 104;
	condition   = PC_LeatherWork_KeilerFur_Condition;
	information = PC_LeatherWork_KeilerFur_Info;
	permanent   = TRUE;
	description = "Turn Boar Skin into leather (x2)";
};

FUNC INT PC_LeatherWork_KeilerFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_Addon_KeilerFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_KeilerFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_Addon_KeilerFur, 2);
};

INSTANCE PC_LeatherWork_ShadowFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 105;
	condition   = PC_LeatherWork_ShadowFur_Condition;
	information = PC_LeatherWork_ShadowFur_Info;
	permanent   = TRUE;
	description = "Turn Hide of a Shadowbeast into leather (x4)";
};

FUNC INT PC_LeatherWork_ShadowFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_ShadowFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_ShadowFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_ShadowFur, 4);
};

INSTANCE PC_LeatherWork_SharkSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 106;
	condition   = PC_LeatherWork_SharkSkin_Condition;
	information = PC_LeatherWork_SharkSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Swampshark into leather (x5)";
};

FUNC INT PC_LeatherWork_SharkSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_SharkSkin))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_SharkSkin_Info ()
{
	LeatherWork_MakeLeather (ItAt_SharkSkin, 5);
};

INSTANCE PC_LeatherWork_TrollFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 107;
	condition   = PC_LeatherWork_TrollFur_Condition;
	information = PC_LeatherWork_TrollFur_Info;
	permanent   = TRUE;
	description = "Turn Troll Hide into leather (x6)";
};

FUNC INT PC_LeatherWork_TrollFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_TrollFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_TrollFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_TrollFur, 6);
};

INSTANCE PC_LeatherWork_TrollBlackFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 108;
	condition   = PC_LeatherWork_TrollBlackFur_Condition;
	information = PC_LeatherWork_TrollBlackFur_Info;
	permanent   = TRUE;
	description = "Turn Hide of a Black Troll into leather (x8)";
};

FUNC INT PC_LeatherWork_TrollBlackFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ItAt_TrollBlackFur))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_TrollBlackFur_Info ()
{
	LeatherWork_MakeLeather (ItAt_TrollBlackFur, 8);
};

INSTANCE PC_LeatherWork_HellhoundFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 109;
	condition   = PC_LeatherWork_HellhoundFur_Condition;
	information = PC_LeatherWork_HellhoundFur_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Hellhound into leather (x2)";
};

FUNC INT PC_LeatherWork_HellhoundFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_FUR_HELLHOUND))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_HellhoundFur_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_FUR_HELLHOUND, 2);
};

INSTANCE PC_LeatherWork_OrcDogFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 110;
	condition   = PC_LeatherWork_OrcDogFur_Condition;
	information = PC_LeatherWork_OrcDogFur_Info;
	permanent   = TRUE;
	description = "Turn Skin of an Orc Dog into leather (x2)";
};

FUNC INT PC_LeatherWork_OrcDogFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_FUR_ORCDOG))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_OrcDogFur_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_FUR_ORCDOG, 2);
};

INSTANCE PC_LeatherWork_IceWolfFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 111;
	condition   = PC_LeatherWork_IceWolfFur_Condition;
	information = PC_LeatherWork_IceWolfFur_Info;
	permanent   = TRUE;
	description = "Turn Skin of an Ice Wolf into leather (x2)";
};

FUNC INT PC_LeatherWork_IceWolfFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_FUR_ICEWOLF))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_IceWolfFur_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_FUR_ICEWOLF, 2);
};

INSTANCE PC_LeatherWork_BlackWolfFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 112;
	condition   = PC_LeatherWork_BlackWolfFur_Condition;
	information = PC_LeatherWork_BlackWolfFur_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Black Wolf into leather (x2)";
};

FUNC INT PC_LeatherWork_BlackWolfFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_FUR_BLACKWOLF))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_BlackWolfFur_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_FUR_BLACKWOLF, 2);
};

INSTANCE PC_LeatherWork_PantherFur (C_Info)
{
	npc         = PC_Hero;
	nr          = 113;
	condition   = PC_LeatherWork_PantherFur_Condition;
	information = PC_LeatherWork_PantherFur_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Panther into leather (x3)";
};

FUNC INT PC_LeatherWork_PantherFur_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_FUR_PANTHER))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_PantherFur_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_FUR_PANTHER, 3);
};

INSTANCE PC_LeatherWork_SnapperSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 114;
	condition   = PC_LeatherWork_SnapperSkin_Condition;
	information = PC_LeatherWork_SnapperSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Snapper into leather (x2)";
};

FUNC INT PC_LeatherWork_SnapperSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_SNAPPER))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_SnapperSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_SNAPPER, 2);
};

INSTANCE PC_LeatherWork_DragonSnapperSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 115;
	condition   = PC_LeatherWork_DragonSnapperSkin_Condition;
	information = PC_LeatherWork_DragonSnapperSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Dragon Snapper into leather (x3)";
};

FUNC INT PC_LeatherWork_DragonSnapperSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_DRAGONSNAPPER))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_DragonSnapperSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_DRAGONSNAPPER, 3);
};

INSTANCE PC_LeatherWork_RazorSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 116;
	condition   = PC_LeatherWork_RazorSkin_Condition;
	information = PC_LeatherWork_RazorSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Razor into leather (x2)";
};

FUNC INT PC_LeatherWork_RazorSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_RAZOR))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_RazorSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_RAZOR, 2);
};

INSTANCE PC_LeatherWork_BiterSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 117;
	condition   = PC_LeatherWork_BiterSkin_Condition;
	information = PC_LeatherWork_BiterSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Biter into leather (x2)";
};

FUNC INT PC_LeatherWork_BiterSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_BITER))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_BiterSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_BITER, 2);
};

INSTANCE PC_LeatherWork_WaranSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 118;
	condition   = PC_LeatherWork_WaranSkin_Condition;
	information = PC_LeatherWork_WaranSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Lizard into leather (x2)";
};

FUNC INT PC_LeatherWork_WaranSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_WARAN))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_WaranSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_WARAN, 2);
};

INSTANCE PC_LeatherWork_FireWaranSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 119;
	condition   = PC_LeatherWork_FireWaranSkin_Condition;
	information = PC_LeatherWork_FireWaranSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of a Fire Lizard into leather (x3)";
};

FUNC INT PC_LeatherWork_FireWaranSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_FIREWARAN))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_FireWaranSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_FIREWARAN, 3);
};

INSTANCE PC_LeatherWork_AlligatorSkin (C_Info)
{
	npc         = PC_Hero;
	nr          = 120;
	condition   = PC_LeatherWork_AlligatorSkin_Condition;
	information = PC_LeatherWork_AlligatorSkin_Info;
	permanent   = TRUE;
	description = "Turn Skin of an Alligator into leather (x4)";
};

FUNC INT PC_LeatherWork_AlligatorSkin_Condition ()
{
	if (LeatherWork_HasLeatherSource (ITAT_REVIVED_SKIN_ALLIGATOR))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_LeatherWork_AlligatorSkin_Info ()
{
	LeatherWork_MakeLeather (ITAT_REVIVED_SKIN_ALLIGATOR, 4);
};
