var int Engor_ItemsGiven_Chapter_1;
var int Engor_ItemsGiven_Chapter_2;
var int Engor_ItemsGiven_Chapter_3;
var int Engor_ItemsGiven_Chapter_4;
var int Engor_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Engor (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Engor_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItRw_Arrow, 40);
		CreateInvItems (slf, ItRw_Bolt, 40);

		CreateInvItems (slf, ItMiSwordraw, 3); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02,  5);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03,  5);

		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Water, 5);
		CreateInvItems (slf, ItKE_Lockpick, 5);

		CreateInvItems (slf, ITWR_REVIVED_RECIPE_OLDSTEW, 1); 
		Engor_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Engor_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItRw_Arrow, 40);
		CreateInvItems (slf, ItRw_Bolt, 40);

		CreateInvItems (slf, ItFo_Sausage, 1); 
		CreateInvItems (slf, ItFo_Booze, 5); 
		CreateInvItems (slf, ItFo_Wine, 2); 
		CreateInvItems (slf, ItFo_Bread, 1); 
		CreateInvItems (slf, ItMi_Sulfur, 1); 
		CreateInvItems (slf, ItMi_Quartz, 2);
		CreateInvItems (slf, ItKE_Lockpick,6); 

		Engor_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Engor_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);

		CreateInvItems (slf, ItFo_Wine, 4); 
		CreateInvItems (slf, ItMi_Pitch, 2); 
		CreateInvItems (slf, ItMi_Rockcrystal, 1); 
		CreateInvItems (slf, ItMi_Coal, 2); 
		CreateInvItems (slf, ItKE_Lockpick,6);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Booze, 3);

		Engor_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Engor_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItRw_Arrow, 80);
		CreateInvItems (slf, ItRw_Bolt, 80);

		CreateInvItems (slf, ItMi_Pitch, 2); 
		CreateInvItems (slf, ItMi_Rockcrystal, 1); 
		CreateInvItems (slf, ItMi_Coal, 1); 
		CreateInvItems (slf, ItKE_Lockpick,12);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Wine, 4);

		Engor_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Engor_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		CreateInvItems (slf, ItMi_Aquamarine, 1); 
		CreateInvItems (slf, ItMi_DarkPearl, 1); 
		CreateInvItems (slf, ItMi_Coal, 4); 
		CreateInvItems (slf, ItFo_Bacon, 6);
		CreateInvItems (slf, ItFo_Booze, 4);

		Engor_ItemsGiven_Chapter_5 = TRUE;
	};
};
