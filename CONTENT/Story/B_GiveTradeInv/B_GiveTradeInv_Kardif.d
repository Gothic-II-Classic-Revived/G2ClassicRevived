var int Kardif_ItemsGiven_Chapter_1;
var int Kardif_ItemsGiven_Chapter_2;
var int Kardif_ItemsGiven_Chapter_3;
var int Kardif_ItemsGiven_Chapter_4;
var int Kardif_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Kardif (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Kardif_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItFo_Water, 5);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_FishSoup, 3); 
		CreateInvItems (slf, ItFoMutton, 1); 
		CreateInvItems (slf, ItFo_Fish, 4); 

		Kardif_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Kardif_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Water, 4);
		CreateInvItems (slf, ItFo_Beer, 7);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Sausage, 2); 
		CreateInvItems (slf, ItFo_Fish, 4); 

		Kardif_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Kardif_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItFo_Water, 3);
		CreateInvItems (slf, ItFo_Beer, 8);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Sausage, 2); 
		CreateInvItems (slf, ItFo_FishSoup, 3); 
		CreateInvItems (slf, ItFoMutton, 1); 

		Kardif_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Kardif_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItFo_Water, 3);
		CreateInvItems (slf, ItFo_Beer, 9);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Sausage, 2); 
		CreateInvItems (slf, ItFo_FishSoup, 3); 
		CreateInvItems (slf, ItFoMutton, 1); 
		CreateInvItems (slf, ItFo_Fish, 4); 
		CreateInvItems (slf, ItFo_Wine, 1); 

		Kardif_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Kardif_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItFo_Water, 3);
		CreateInvItems (slf, ItFo_Beer, 10);
		CreateInvItems (slf, ItFo_Booze, 6);
		CreateInvItems (slf, ItFo_Sausage, 3); 
		CreateInvItems (slf, ItFo_FishSoup, 5); 
		CreateInvItems (slf, ItFoMutton, 7); 
		CreateInvItems (slf, ItFo_Fish, 8); 
		CreateInvItems (slf, ItFo_Wine, 3); 

		Kardif_ItemsGiven_Chapter_5 = TRUE;
	};
};
