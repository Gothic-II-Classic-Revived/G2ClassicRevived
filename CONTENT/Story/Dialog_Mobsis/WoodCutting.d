// ****************************************************
// WoodCutting
// ****************************************************

FUNC VOID WoodCutting_S1 ()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_WOODCUTTING;
		Ai_ProcessInfos (her);
	};
};

FUNC INT WoodCutting_Active ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_WOODCUTTING)
	{
		return TRUE;
	};

	return FALSE;
};

FUNC INT WoodCutting_HasRawWood (var int amount)
{
	if (WoodCutting_Active())
	&& (Npc_HasItems (hero, ITMI_REVIVED_WOOD_RAW) >= amount)
	{
		return TRUE;
	};

	return FALSE;
};

FUNC INT WoodCutting_RandomSticks (var int amount)
{
	var int maxSticks;
	var int sticks;

	if (amount <= 0)
	{
		return 0;
	};

	maxSticks = (amount * 3) + 1;
	sticks = Hlp_Random (maxSticks);

	return sticks;
};

FUNC VOID WoodCutting_CutWood (var int amount)
{
	var int sticks;

	if (Npc_HasItems (hero, ITMI_REVIVED_WOOD_RAW) >= amount)
	{
		Npc_RemoveInvItems (hero, ITMI_REVIVED_WOOD_RAW, amount);
		CreateInvItems (hero, ITMI_REVIVED_WOOD_CUT, amount * 2);

		sticks = WoodCutting_RandomSticks (amount);
		if (sticks > 0)
		{
			CreateInvItems (hero, ITMI_REVIVED_WOOD_STICK, sticks);
		};
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

INSTANCE PC_WoodCutting_End (C_Info)
{
	npc         = PC_Hero;
	nr          = 999;
	condition   = PC_WoodCutting_End_Condition;
	information = PC_WoodCutting_End_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT PC_WoodCutting_End_Condition ()
{
	if (WoodCutting_Active())
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_WoodCutting_End_Info ()
{
	B_ENDPRODUCTIONDIALOG ();
};

// ****************************************************
// Wood
// ****************************************************

INSTANCE PC_WoodCutting_Cut_1 (C_Info)
{
	npc         = PC_Hero;
	nr          = 1;
	condition   = PC_WoodCutting_Cut_1_Condition;
	information = PC_WoodCutting_Cut_1_Info;
	permanent   = TRUE;
	description = "Cut wood (x1)";
};

FUNC INT PC_WoodCutting_Cut_1_Condition ()
{
	if (WoodCutting_HasRawWood (1))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_WoodCutting_Cut_1_Info ()
{
	WoodCutting_CutWood (1);
};

INSTANCE PC_WoodCutting_Cut_2 (C_Info)
{
	npc         = PC_Hero;
	nr          = 2;
	condition   = PC_WoodCutting_Cut_2_Condition;
	information = PC_WoodCutting_Cut_2_Info;
	permanent   = TRUE;
	description = "Cut wood (x2)";
};

FUNC INT PC_WoodCutting_Cut_2_Condition ()
{
	if (WoodCutting_HasRawWood (2))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_WoodCutting_Cut_2_Info ()
{
	WoodCutting_CutWood (2);
};

INSTANCE PC_WoodCutting_Cut_5 (C_Info)
{
	npc         = PC_Hero;
	nr          = 5;
	condition   = PC_WoodCutting_Cut_5_Condition;
	information = PC_WoodCutting_Cut_5_Info;
	permanent   = TRUE;
	description = "Cut wood (x5)";
};

FUNC INT PC_WoodCutting_Cut_5_Condition ()
{
	if (WoodCutting_HasRawWood (5))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_WoodCutting_Cut_5_Info ()
{
	WoodCutting_CutWood (5);
};

INSTANCE PC_WoodCutting_Cut_10 (C_Info)
{
	npc         = PC_Hero;
	nr          = 10;
	condition   = PC_WoodCutting_Cut_10_Condition;
	information = PC_WoodCutting_Cut_10_Info;
	permanent   = TRUE;
	description = "Cut wood (x10)";
};

FUNC INT PC_WoodCutting_Cut_10_Condition ()
{
	if (WoodCutting_HasRawWood (10))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_WoodCutting_Cut_10_Info ()
{
	WoodCutting_CutWood (10);
};

INSTANCE PC_WoodCutting_Cut_All (C_Info)
{
	npc         = PC_Hero;
	nr          = 20;
	condition   = PC_WoodCutting_Cut_All_Condition;
	information = PC_WoodCutting_Cut_All_Info;
	permanent   = TRUE;
	description = "Cut all wood";
};

FUNC INT PC_WoodCutting_Cut_All_Condition ()
{
	if (WoodCutting_HasRawWood (1))
	{
		return TRUE;
	};

	return FALSE;
};

FUNC VOID PC_WoodCutting_Cut_All_Info ()
{
	var int amount;
	amount = Npc_HasItems (hero, ITMI_REVIVED_WOOD_RAW);

	WoodCutting_CutWood (amount);
};
