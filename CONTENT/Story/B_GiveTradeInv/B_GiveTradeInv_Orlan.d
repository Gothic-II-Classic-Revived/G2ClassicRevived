var int Orlan_ItemsGiven_Chapter_1;
var int Orlan_ItemsGiven_Chapter_2;
var int Orlan_ItemsGiven_Chapter_3;
var int Orlan_ItemsGiven_Chapter_4;
var int Orlan_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Orlan (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Orlan_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItRw_Arrow, 50); 
		CreateInvItems (slf, ItRw_Bolt, 50);
		CreateInvItems (slf, ItFo_Beer, 8);
		CreateInvItems (slf, ItFo_Bread, 5);
		CreateInvItems (slf, ItFo_Water, 5);

		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_01, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_02, 1);

		CreateInvItems (slf, ItBE_Addon_Leather_01, 1); 
		CreateInvItems (slf, ITBE_REVIVED_ARCHER, 1); 

		CreateInvItems (slf, ITSC_REVIVED_TELEPORT_TAVERNE, 5);
			
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_FRUITSALAD, 1); 
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MARMALADE, 1); 
		
		Orlan_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Orlan_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItRw_Arrow, 50); 
		CreateInvItems (slf, ItRw_Bolt, 50);
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_01, 1);
		Orlan_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Orlan_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ItRu_TeleportTaverne, 1);
		CreateInvItems (slf, ItRw_Arrow, 100); 
		CreateInvItems (slf, ItRw_Bolt, 100);

		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_LIGHT_01, 1);
		Orlan_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Orlan_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItRw_Arrow, 100); 
		CreateInvItems (slf, ItRw_Bolt, 100);

		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_05, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_02, 1);
		Orlan_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Orlan_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItRw_Arrow, 200); 
		CreateInvItems (slf, ItRw_Bolt, 200);

		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_01, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_03, 1);
		Orlan_ItemsGiven_Chapter_5 = TRUE;
	};
};
