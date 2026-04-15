var int Matteo_ItemsGiven_Chapter_1;
var int Matteo_ItemsGiven_Chapter_2;
var int Matteo_ItemsGiven_Chapter_3;
var int Matteo_ItemsGiven_Chapter_4;
var int Matteo_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Matteo (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Matteo_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 6);
		CreateInvItems (slf, ItLsTorch, 6);

		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ItFo_Water, 4);

		CreateInvItems (slf, ItMiSwordraw, 1); 
		CreateInvItems (slf, ItMi_Lute, 1);
		CreateInvItems (slf, ItMi_Scoop, 1);

		CreateInvItems (slf, ITMW_REVIVED_2H_PICKAXE, 1);

		Matteo_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Matteo_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 8);
		CreateInvItems (slf, ItLsTorch, 6);

		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ItFo_Beer, 4);

		Matteo_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Matteo_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		CreateInvItems (slf, ItRw_Arrow, 80);
		CreateInvItems (slf, ItRw_Bolt, 80);
		CreateInvItems (slf, ItKE_Lockpick, 10);
		CreateInvItems (slf, ItLsTorch, 8);

		CreateInvItems (slf, ItFo_Sausage, 4);

		Matteo_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Matteo_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItRw_Arrow, 80);
		CreateInvItems (slf, ItRw_Bolt, 80);
		CreateInvItems (slf, ItKE_Lockpick, 12);
		CreateInvItems (slf, ItLsTorch, 8);

		CreateInvItems (slf, ItFo_Bacon, 4);

		Matteo_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Matteo_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		CreateInvItems (slf, ItKE_Lockpick, 15);
		CreateInvItems (slf, ItLsTorch, 10);

		CreateInvItems (slf, ItFo_Wine, 3);

		Matteo_ItemsGiven_Chapter_5 = TRUE;
	};
};
