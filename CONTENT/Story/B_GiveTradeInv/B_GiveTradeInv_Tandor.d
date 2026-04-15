var int Tandor_ItemsGiven_Chapter_1;
var int Tandor_ItemsGiven_Chapter_2;
var int Tandor_ItemsGiven_Chapter_3;
var int Tandor_ItemsGiven_Chapter_4;
var int Tandor_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Tandor (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Tandor_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt,  60);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_AXE_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_LIGHT_02, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_02, 1);

		Tandor_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Tandor_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt,  100);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_05, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_01, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_06, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_03, 1);

		Tandor_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Tandor_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ItRw_Arrow, 120);
		CreateInvItems (slf, ItRw_Bolt,  120);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_02, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_01, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_04, 1);

		Tandor_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Tandor_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItRw_Arrow, 140);
		CreateInvItems (slf, ItRw_Bolt,  140);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_HEAVY_01, 1);

		Tandor_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Tandor_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItRw_Arrow, 170);
		CreateInvItems (slf, ItRw_Bolt,  170);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_PALADIN_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_ORE_01, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_05, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_HEAVY_03, 1);

		Tandor_ItemsGiven_Chapter_5 = TRUE;
	};
};
