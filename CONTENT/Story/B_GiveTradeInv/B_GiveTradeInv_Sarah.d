var int Sarah_ItemsGiven_Chapter_1;
var int Sarah_ItemsGiven_Chapter_2;
var int Sarah_ItemsGiven_Chapter_3;
var int Sarah_ItemsGiven_Chapter_4;
var int Sarah_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Sarah (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Sarah_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 

		CreateInvItems (slf, ITMW_REVIVED_1H_DAGGER_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_DAGGER_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_07, 1);

		Sarah_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& Sarah_ItemsGiven_Chapter_2 == FALSE)
	{
		CreateInvItems (slf, ItMi_Gold, 200); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_PIRATE_01, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_PIRATE_02, 1);

		Sarah_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Sarah_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BANDIT_02, 1);

		Sarah_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Sarah_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_ORE_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_ORE_01, 1);

		Sarah_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Sarah_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 


		Sarah_ItemsGiven_Chapter_5 = TRUE;
	};
};
