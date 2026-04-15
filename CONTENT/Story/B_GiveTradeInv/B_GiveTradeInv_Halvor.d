var int Halvor_ItemsGiven_Chapter_1;
var int Halvor_ItemsGiven_Chapter_2;
var int Halvor_ItemsGiven_Chapter_3;
var int Halvor_ItemsGiven_Chapter_4;
var int Halvor_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Halvor (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Halvor_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Fish, 14);

		Halvor_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Halvor_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItFo_Fish, 16);

		Halvor_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Halvor_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItFo_Fish, 18);

		Halvor_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Halvor_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItFo_Fish, 20);

		Halvor_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Halvor_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItFo_Fish, 22);

		Halvor_ItemsGiven_Chapter_5 = TRUE;
	};
};
