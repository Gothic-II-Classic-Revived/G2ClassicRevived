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
		CreateInvItems (slf, ItSc_Light,1); 
		CreateInvItems (slf, ItPl_Health_Herb_01 , 2);
		CreateInvItems (slf, ItPl_Mushroom_01 , 3);
		CreateInvItems (slf, ItFoMutton, 8); 
		CreateInvItems (slf, ItRw_Arrow, 30);
		CreateInvItems (slf, ItRw_Bolt,  30);
		
		// ------ Waffen ------
		CreateInvItems (slf,ItMw_ShortSword3 , 1); 
		CreateInvItems (slf,ItMw_Folteraxt , 1); 
		CreateInvItems (slf,ItMw_Morgenstern , 1); 
		CreateInvItems (slf,ItMw_Richtstab , 1); 
		
		CreateInvItems (slf,ITRW_REVIVED_BOW_SMALL_01 , 1); 
		CreateInvItems (slf,ITRW_REVIVED_BOW_LONG_01 , 1); 
		CreateInvItems (slf,ITRW_REVIVED_BOW_LONG_04 , 1); 
		CreateInvItems (slf,ITRW_REVIVED_CROSSBOW_LIGHT_02 , 1); 
		
		CreateInvItems (slf,ITAM_REVIVED_PROT_ARROW_01 , 1);

		// ------ Revived ------
		CreateInvItems (slf, ITBE_REVIVED_ARCHER, 1); 
				
		Rupert_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& (Rupert_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf,ItMiSwordraw,1); 
		CreateInvItems (slf,ItPl_Health_Herb_01 , 3);
		CreateInvItems (slf,ItPl_Mushroom_02 , 2);
		CreateInvItems (slf,ItFo_Fishsoup, 3); 
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt,  60);
			
		Rupert_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Rupert_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf,ItFo_Wine,1); 
		CreateInvItems (slf,ItPl_Mana_Herb_01 , 4);
		CreateInvItems (slf,ItPl_Health_Herb_02 , 3);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt,  60);
			
		Rupert_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Rupert_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 150); 
		CreateInvItems (slf,ItMi_Rockcrystal,1); 
		CreateInvItems (slf,ItPl_Mana_Herb_02 , 4);
		CreateInvItems (slf,ItPl_Health_Herb_03 , 5);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt,  60);	
		CreateInvItems (slf, ItBe_Addon_STR_10, 1);
		Rupert_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Rupert_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf,ItMi_Coal,3); 
		CreateInvItems (slf,ItMi_Pitch,2); 
		CreateInvItems (slf,ItPl_Health_Herb_03 , 5);
		CreateInvItems (slf,ItPl_Mana_Herb_03 , 5);
		CreateInvItems (slf, ItRw_Arrow, 160);
		CreateInvItems (slf, ItRw_Bolt,  160);	
		
		Rupert_ItemsGiven_Chapter_5 = TRUE;
	};
};
