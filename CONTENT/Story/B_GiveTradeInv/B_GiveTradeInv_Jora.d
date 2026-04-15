var int Jora_ItemsGiven_Chapter_1;
var int Jora_ItemsGiven_Chapter_2;
var int Jora_ItemsGiven_Chapter_3;
var int Jora_ItemsGiven_Chapter_4;
var int Jora_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Jora (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Jora_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 3);
		CreateInvItems (slf, ItLsTorch, 5);

		CreateInvItems (slf, ItFo_Water, 5);
		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 2);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 2);

		CreateInvItems (slf, ItMi_Scoop, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_PICKAXE, 1);

		Jora_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& (Jora_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 4);
		CreateInvItems (slf, ItLsTorch, 5);

		CreateInvItems (slf, ItFo_Fish, 3);
		CreateInvItems (slf, ItPl_Mushroom_01, 4);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 2);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 2);

		Jora_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Jora_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 5);
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItSc_Light, 3);

		CreateInvItems (slf, ItFo_Stew, 3);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 3);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 3);

		Jora_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Jora_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 5);
		CreateInvItems (slf, ItSc_Light, 3);

		CreateInvItems (slf, ItFo_Sausage, 4);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 3);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 3);

		Jora_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Jora_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItKE_Lockpick, 6);
		CreateInvItems (slf, ItSc_Light, 3);

		CreateInvItems (slf, ItFo_Bacon, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03, 4);
		CreateInvItems (slf, ITPO_REVIVED_MANA_03, 4);

		Jora_ItemsGiven_Chapter_5 = TRUE;
	};
};
