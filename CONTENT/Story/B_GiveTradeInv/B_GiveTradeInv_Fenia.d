var int Fenia_ItemsGiven_Chapter_1;
var int Fenia_ItemsGiven_Chapter_2;
var int Fenia_ItemsGiven_Chapter_3;
var int Fenia_ItemsGiven_Chapter_4;
var int Fenia_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Fenia (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Fenia_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItFo_Bread, 8);
		CreateInvItems (slf, ItFo_Cheese, 6);
		CreateInvItems (slf, ItFo_Water, 5);
		
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MEATSTEW, 1); 
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_FISHSOUP, 1); 

		Fenia_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Fenia_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItFo_Bread, 8);
		CreateInvItems (slf, ItFo_Cheese, 7);
		CreateInvItems (slf, ItFo_Apple, 5);

		Fenia_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Fenia_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		CreateInvItems (slf, ItFo_Bread, 7);
		CreateInvItems (slf, ItFo_Cheese, 8);
		CreateInvItems (slf, ItFo_Apple, 6);

		Fenia_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Fenia_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItFo_Bread, 7);
		CreateInvItems (slf, ItFo_Cheese, 9);
		CreateInvItems (slf, ItFo_Apple, 6);

		Fenia_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Fenia_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItFo_Bread, 7);
		CreateInvItems (slf, ItFo_Cheese, 10);
		CreateInvItems (slf, ItFo_Apple, 7);

		Fenia_ItemsGiven_Chapter_5 = TRUE;
	};
};
