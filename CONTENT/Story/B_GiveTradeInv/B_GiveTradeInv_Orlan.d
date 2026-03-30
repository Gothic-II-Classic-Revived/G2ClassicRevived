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
		CreateInvItems (slf, ItMi_Gold, 30); 
		
		CreateInvItems (slf, ItRw_Arrow, 21); 
		CreateInvItems (slf, ItRw_Bolt,  5);

		CreateInvItems (slf,ItFo_Water, 4);
		CreateInvItems (slf,ItFo_Beer, 10);
		CreateInvItems (slf,ItFo_Bread, 4); 
		CreateInvItems (slf,ItFo_Milk, 4); 
		CreateInvItems (slf,ItFo_Wine, 2); 
		CreateInvItems (slf,ItFo_Bacon, 2); 
		CreateInvItems (slf,ItLsTorch,3);
		
		// ------ Waffen ------
		CreateInvItems (slf, ItMw_Zweihaender1, 1);
		CreateInvItems (slf, ItMw_Bartaxt , 1); 
		CreateInvItems (slf, ItMw_Orkschlaechter, 1);
		CreateInvItems (slf, ItMw_Schlachtaxt, 1);
		
		CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_01, 1); 
		
		// ------ Ringe / Amulette ------
		CreateInvItems (slf, ItBE_Addon_Leather_01, 1); 
		CreateInvItems (slf, ITRI_REVIVED_PROT_MAGIC_02,  1);

		// ------ Revived ------
		CreateInvItems (slf, ITBE_REVIVED_ARCHER, 1); 
		CreateInvItems (slf, ITSC_REVIVED_TELEPORT_TAVERNE, 3);
			
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_FRUITSALAD, 1); 
		CreateInvItems (slf, ITWR_REVIVED_RECIPE_MARMALADE, 1); 
		
		Orlan_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Orlan_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 50); 
		CreateInvItems (slf, ItRw_Arrow, 40); 
		CreateInvItems (slf, ItRw_Bolt,  45);
		CreateInvItems (slf, ItBe_Addon_DEX_5,  1);
		
		Orlan_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Orlan_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItRu_TeleportTaverne, 1);
		CreateInvItems (slf, ItRw_Arrow, 120); 
		CreateInvItems (slf, ItRw_Bolt,  115);
		CreateInvItems (slf, ItBe_Addon_Prot_EdgPoi, 1);
		Orlan_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Orlan_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		
		CreateInvItems (slf, ItMw_Zweihaender1, 1);
		CreateInvItems (slf, ItMw_Bartaxt , 1); 
	
		Orlan_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Orlan_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
	
		CreateInvItems (slf, ItRw_Arrow, 120); 
		CreateInvItems (slf, ItRw_Bolt,  115);

		Orlan_ItemsGiven_Chapter_5 = TRUE;
	};
};
