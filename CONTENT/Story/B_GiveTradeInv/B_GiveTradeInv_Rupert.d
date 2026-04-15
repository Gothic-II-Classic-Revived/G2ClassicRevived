var int Rupert_ItemsGiven_Chapter_1;
var int Rupert_ItemsGiven_Chapter_2;
var int Rupert_ItemsGiven_Chapter_3;
var int Rupert_ItemsGiven_Chapter_4;
var int Rupert_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Rupert (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Rupert_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItFo_Water, 4);
		CreateInvItems (slf, ItFo_Bread, 3);
		CreateInvItems (slf, ItMi_Flask, 3);
		Rupert_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& (Rupert_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ITPL_REVIVED_BERRIES, 2);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Fish, 2);
		CreateInvItems (slf, ItKE_Lockpick, 3);
		Rupert_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Rupert_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ITPL_REVIVED_GRAPES, 2);
		CreateInvItems (slf, ItFo_Stew, 2);
		CreateInvItems (slf, ItMi_Pitch, 1);
		Rupert_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Rupert_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItFo_Bacon, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 2);
		CreateInvItems (slf, ItMi_Coal, 1);
		Rupert_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Rupert_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItFo_Sausage, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2);
		CreateInvItems (slf, ItMi_Quartz, 1);
		Rupert_ItemsGiven_Chapter_5 = TRUE;
	};
};
