var int Rosi_ItemsGiven_Chapter_1;
var int Rosi_ItemsGiven_Chapter_2;
var int Rosi_ItemsGiven_Chapter_3;
var int Rosi_ItemsGiven_Chapter_4;
var int Rosi_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Rosi (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Rosi_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItFo_Bread, 6);
		CreateInvItems (slf, ItFo_Cheese, 5);

		CreateInvItems (slf, ITWR_REVIVED_RECIPE_OLDSTEW, 1);

		Rosi_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Rosi_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItFo_Bread, 6);
		CreateInvItems (slf, ItFoMutton, 5);

		CreateInvItems (slf, ITWR_REVIVED_RECIPE_FISHSOUP, 1);
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MEATSTEW, 1);

		Rosi_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Rosi_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItPl_Beet, 6);

		CreateInvItems (slf, ITWR_REVIVED_RECIPE_FRUITSALAD, 1);
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MARMALADE, 1);

		Rosi_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Rosi_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItFo_Stew, 6);
		CreateInvItems (slf, ItFo_FishSoup, 6);
		
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_TURNIPBOOZE, 1);
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MEAD, 1);

		Rosi_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Rosi_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItFo_Stew, 8);
		CreateInvItems (slf, ItFo_FishSoup, 8);
		
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MONSTERDRINK, 1);

		Rosi_ItemsGiven_Chapter_5 = TRUE;
	};
};
