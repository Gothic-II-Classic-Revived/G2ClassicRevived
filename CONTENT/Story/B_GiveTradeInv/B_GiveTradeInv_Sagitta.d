var int Sagitta_ItemsGiven_Chapter_1;
var int Sagitta_ItemsGiven_Chapter_2;
var int Sagitta_ItemsGiven_Chapter_3;
var int Sagitta_ItemsGiven_Chapter_4;
var int Sagitta_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Sagitta (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Sagitta_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItPl_Health_Herb_01, 8);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 8);
		CreateInvItems (slf, ItPl_SwampHerb, 4);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 6);

		Sagitta_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Sagitta_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItMi_Sulfur, 5);
		CreateInvItems (slf, ItMi_Quartz, 5);
		CreateInvItems (slf, ItMi_Rockcrystal, 5);
		CreateInvItems (slf, ItMi_Flask, 5);

		CreateInvItems (slf, ItPl_Health_Herb_02, 6);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 6);
		CreateInvItems (slf, ItPl_SwampHerb, 6);

		CreateInvItems (slf, ItFo_Addon_Pfeffer_01, 6);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 4);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 4);

		Sagitta_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Sagitta_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItPl_Health_Herb_02, 8);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 8);
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2);
		CreateInvItems (slf, ItPl_SwampHerb, 4);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 6);

		Sagitta_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Sagitta_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItMi_Sulfur, 5);
		CreateInvItems (slf, ItMi_Quartz, 5);
		CreateInvItems (slf, ItMi_Rockcrystal, 5);
		CreateInvItems (slf, ItMi_Flask, 10);

		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Temp_Herb, 2);
		CreateInvItems (slf, ItPl_Perm_Herb, 2);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03, 4);
		CreateInvItems (slf, ITPO_REVIVED_MANA_03, 4);

		Sagitta_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Sagitta_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItPl_Health_Herb_03, 7);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 7);
		CreateInvItems (slf, ItPl_Strength_Herb_01, 2);
		CreateInvItems (slf, ItPl_Dex_Herb_01, 2);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_03, 6);

		Sagitta_ItemsGiven_Chapter_5 = TRUE;
	};
};