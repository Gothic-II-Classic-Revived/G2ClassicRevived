var int Hakon_ItemsGiven_Chapter_1;
var int Hakon_ItemsGiven_Chapter_2;
var int Hakon_ItemsGiven_Chapter_3;
var int Hakon_ItemsGiven_Chapter_4;
var int Hakon_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Hakon (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Hakon_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_SHORT_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_SHORT_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_SHORT_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_SHORT_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_SHORT_05, 1);

		Hakon_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Hakon_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_05, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_05, 1);

		Hakon_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Hakon_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_LONG_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_LONG_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_LONG_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_LONG_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_LONG_05, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_LIGHT_04, 1);

		Hakon_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Hakon_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BROAD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BROAD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BROAD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BROAD_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_04, 1);

		Hakon_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Hakon_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_03, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_04, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_ORE_01, 1);

		Hakon_ItemsGiven_Chapter_5 = TRUE;
	};
};
