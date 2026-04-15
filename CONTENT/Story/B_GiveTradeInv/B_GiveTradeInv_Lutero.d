var int Lutero_ItemsGiven_Chapter_1;
var int Lutero_ItemsGiven_Chapter_2;
var int Lutero_ItemsGiven_Chapter_3;
var int Lutero_ItemsGiven_Chapter_4;
var int Lutero_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Lutero (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Lutero_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItMi_HolyWater, 1);
		CreateInvItems (slf, ItMi_Quartz, 2);

		CreateInvItems (slf, ITSC_REVIVED_TELEPORT_CITY, 1);
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MONSTERDRINK, 1);

		Lutero_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Lutero_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItMi_Aquamarine, 2);
		CreateInvItems (slf, ItMi_Rockcrystal, 1);
		CreateInvItems (slf, ITPO_REVIVED_SPEED_02, 1);

		Lutero_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Lutero_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItMi_DarkPearl, 1);
		CreateInvItems (slf, ItPl_Temp_Herb, 2);
		CreateInvItems (slf, ITRI_REVIVED_STR_DEX_01, 1);

		Lutero_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Lutero_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItAt_StoneGolemHeart, 1);
		CreateInvItems (slf, ItAt_DemonHeart, 1);
		CreateInvItems (slf, ITPO_REVIVED_SPEED_03, 1);

		Lutero_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Lutero_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItMi_RuneBlank, 2);
		CreateInvItems (slf, ITSc_ArmyOfDarkness, 1);
		CreateInvItems (slf, ItPl_Perm_Herb, 1);

		Lutero_ItemsGiven_Chapter_5 = TRUE;
	};
};
