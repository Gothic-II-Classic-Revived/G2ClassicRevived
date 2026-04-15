var int Baltram_ItemsGiven_Chapter_1;
var int Baltram_ItemsGiven_Chapter_2;
var int Baltram_ItemsGiven_Chapter_3;
var int Baltram_ItemsGiven_Chapter_4;
var int Baltram_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Baltram (var C_NPC slf)
{
		if (BaltramPirateTrade == TRUE)
		&& (BaltramSellRecipe == FALSE)
		{
			CreateInvItems (slf,ITWr_Addon_Lou_Rezept, 1); 
			CreateInvItems (slf,ITWr_Addon_Lou_Rezept2, 1); 
			CreateInvItems (slf,ITWr_Addon_Piratentod, 1); 

			BaltramSellRecipe = TRUE;
		};

	if ((Kapitel >= 1)
	&& (Baltram_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItFo_Water, 8);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Bread, 5);
		CreateInvItems (slf, ItFo_Cheese, 3);
		Baltram_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Baltram_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItFo_Water, 8);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Booze, 2);
		CreateInvItems (slf, ItFo_Bread, 5);
		CreateInvItems (slf, ItFo_Cheese, 4);
		Baltram_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Baltram_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		CreateInvItems (slf, ItFo_Water, 6);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ItFo_Cheese, 4);
		Baltram_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Baltram_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItFo_Water, 6);
		CreateInvItems (slf, ItFo_Beer, 7);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItFo_Bread, 4);
		Baltram_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Baltram_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItFo_Water, 6);
		CreateInvItems (slf, ItFo_Beer, 8);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Wine, 3);
		CreateInvItems (slf, ItFo_Bread, 3);
		Baltram_ItemsGiven_Chapter_5 = TRUE;
	};
};
