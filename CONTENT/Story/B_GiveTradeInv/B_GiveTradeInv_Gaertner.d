var int Gaertner_ItemsGiven_Chapter_1;
var int Gaertner_ItemsGiven_Chapter_2;
var int Gaertner_ItemsGiven_Chapter_3;
var int Gaertner_ItemsGiven_Chapter_4;
var int Gaertner_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Gaertner (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Gaertner_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItPl_Health_Herb_01, 6);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 6);
		CreateInvItems (slf, ItPl_Blueplant, 6);
		CreateInvItems (slf, ITPL_REVIVED_BERRIES, 4);

		Gaertner_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Gaertner_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItPl_Health_Herb_01, 8);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 8);
		CreateInvItems (slf, ItPl_SwampHerb, 4);
		CreateInvItems (slf, ITPL_REVIVED_RICEPLANT, 4);

		Gaertner_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Gaertner_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItPl_Health_Herb_02, 6);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 6);
		CreateInvItems (slf, ItPl_Speed_Herb_01, 3);
		CreateInvItems (slf, ITPL_REVIVED_GRAPES, 4);
		CreateInvItems (slf, ITPL_REVIVED_BERRIES, 4);

		Gaertner_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Gaertner_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItPl_Health_Herb_02, 8);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 8);
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		CreateInvItems (slf, ItPl_Dex_Herb_01, 2);
		CreateInvItems (slf, ITPL_REVIVED_GRAPES, 4);
		CreateInvItems (slf, ITPL_REVIVED_BERRIES, 4);

		Gaertner_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Gaertner_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Perm_Herb, 2);
		CreateInvItems (slf, ItPl_Strength_Herb_01, 2);
		CreateInvItems (slf, ITPL_REVIVED_GRAPES, 4);
		CreateInvItems (slf, ITPL_REVIVED_BERRIES, 4);

		Gaertner_ItemsGiven_Chapter_5 = TRUE;
	};
};
