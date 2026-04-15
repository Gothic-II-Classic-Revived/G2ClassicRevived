var int Elena_ItemsGiven_Chapter_1;
var int Elena_ItemsGiven_Chapter_2;
var int Elena_ItemsGiven_Chapter_3;
var int Elena_ItemsGiven_Chapter_4;
var int Elena_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Elena (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Elena_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItFo_Apple, 8);
		CreateInvItems (slf, ItFo_Cheese, 6);
		CreateInvItems (slf, ItFo_Milk, 6);
		CreateInvItems (slf, ItPl_Beet, 6);
		CreateInvItems (slf, ItFo_Honey, 2);
		CreateInvItems (slf, ITPL_REVIVED_RICEPLANT, 4);

		CreateInvItems (slf, ITSC_REVIVED_TELEPORT_BIGFARM, 5);
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_TURNIPBOOZE, 1); 
		
		Elena_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Elena_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItFo_Apple, 10);
		CreateInvItems (slf, ItFo_Cheese, 6);
		CreateInvItems (slf, ItFo_Milk, 7);
		CreateInvItems (slf, ItPl_Beet, 6);
		CreateInvItems (slf, ItFo_Honey, 2);
		CreateInvItems (slf, ITPL_REVIVED_RICEPLANT, 4);

		Elena_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Elena_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItFo_Apple, 10);
		CreateInvItems (slf, ItFo_Cheese, 6);
		CreateInvItems (slf, ItFo_Milk, 8);
		CreateInvItems (slf, ItPl_Beet, 8);
		CreateInvItems (slf, ItFo_Honey, 4);
		CreateInvItems (slf, ITPL_REVIVED_RICEPLANT, 6);

		Elena_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Elena_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItFo_Apple, 12);
		CreateInvItems (slf, ItFo_Cheese, 8);
		CreateInvItems (slf, ItFo_Milk, 9);
		CreateInvItems (slf, ItPl_Beet, 10);
		CreateInvItems (slf, ItFo_Honey, 6);
		CreateInvItems (slf, ITPL_REVIVED_RICEPLANT, 8);

		Elena_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Elena_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItFo_Apple, 14);
		CreateInvItems (slf, ItFo_Cheese, 10);
		CreateInvItems (slf, ItFo_Milk, 10);
		CreateInvItems (slf, ItPl_Beet, 12);
		CreateInvItems (slf, ItFo_Honey, 8);
		CreateInvItems (slf, ITPL_REVIVED_RICEPLANT, 10);

		Elena_ItemsGiven_Chapter_5 = TRUE;
	};
};
