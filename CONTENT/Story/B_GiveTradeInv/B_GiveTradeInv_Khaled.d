var int Khaled_ItemsGiven_Chapter_1;
var int Khaled_ItemsGiven_Chapter_2;
var int Khaled_ItemsGiven_Chapter_3;
var int Khaled_ItemsGiven_Chapter_4;
var int Khaled_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Khaled (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Khaled_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 

		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_LIGHT_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_LIGHT_02, 1);

		Khaled_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Khaled_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 

		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_LIGHT_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_01, 1);

		Khaled_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Khaled_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 

		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_03, 1);

		Khaled_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Khaled_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 

		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_ORE_01, 1);

		Khaled_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Khaled_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 

		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_ORE_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_ORE_02, 1);

		Khaled_ItemsGiven_Chapter_5 = TRUE;
	};
};
