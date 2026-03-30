
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
		CreateInvItems (slf, ItMi_Gold, 80); 
		CreateInvItems (slf, ItMiSwordraw, 3); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02,  5);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03,  5);
		CreateInvItems (slf, ItFo_Stew, 5); 
		CreateInvItems (slf, ItFo_Water, 4); 
		// - Map -
		CreateInvItems (slf, ItWr_Map_Oldworld, 1); 
		
		CreateInvItems (slf, ITRI_REVIVED_PROT_TOTAL_01, 1);
		CreateInvItems (slf, ITAM_REVIVED_PROT_FIRE_01, 1);		
		
		// ------ Scrolls ------
		CreateInvItems (slf, ItSc_Firebolt, 3); 
		CreateInvItems (slf, ItSc_Icebolt, 3); 
		CreateInvItems (slf, ItSc_MediumHeal, 2); 
		CreateInvItems (slf, ItSc_Firestorm, 3); 
		CreateInvItems (slf, ItSc_LightningFlash, 1); 
		CreateInvItems (slf, ItSc_SumGol, 2); 
		CreateInvItems (slf, ItSc_Pyrokinesis, 1); 
		CreateInvItems (slf, ItSc_SumDemon, 1); 
		
		// ------ Armbrüste -------
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_LIGHT_01, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_LIGHT_02, 1);  
		
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_03, 1); 

		CreateInvItems (slf, ITWR_REVIVED_RECIPE_OLDSTEW, 1); 
		
		Engor_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)		//Joly: wird eh erst ab 2. Kapitel vom SC erreicht.
	&& (Engor_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 90); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 1); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02,  5);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03,  5);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01,	25);//Joly:hab ich schon eingefügt nach version 1.26e
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,	25);
		CreateInvItems (slf, ItFo_Sausage, 1); 
		CreateInvItems (slf, ItFo_Booze, 5); 
		CreateInvItems (slf, ItFo_Wine, 	2); 
		CreateInvItems (slf, ItFo_Bread, 1); 
		CreateInvItems (slf, ItRw_Arrow, 55);
		CreateInvItems (slf, ItRw_Bolt,  50);
		CreateInvItems (slf, ItMi_Sulfur, 1); 
		CreateInvItems (slf, ItMi_Quartz, 2);
		CreateInvItems (slf, ItKE_Lockpick,6); 
		
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_01, 1); 
		
		Engor_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Engor_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItFo_Wine, 4); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02,  5);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03,  5);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01,	25);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,	25);
		CreateInvItems (slf, ItMi_Pitch, 2); 
		CreateInvItems (slf, ItMi_Rockcrystal, 1); 
		CreateInvItems (slf, ItMi_Coal, 2); 
		CreateInvItems (slf, ItRw_Arrow, 70);
		CreateInvItems (slf, ItRw_Bolt,  70);
		CreateInvItems (slf, ItKE_Lockpick,6);
		
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_02, 1); 

		Engor_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Engor_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 150); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02,  5);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03,  5);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01,	25);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,	25);
		CreateInvItems (slf, ItMi_Pitch, 2); 
		CreateInvItems (slf, ItMi_Rockcrystal, 1); 
		CreateInvItems (slf, ItMi_Coal, 1); 
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt,  110);
		CreateInvItems (slf, ItKE_Lockpick,12);
		
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_HEAVY_01, 1); 

		Engor_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Engor_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10); 
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02,  5);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03,  5);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01,	35);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,	35);
		CreateInvItems (slf, ItMi_Aquamarine, 1); 
		CreateInvItems (slf, ItMi_DarkPearl, 1); 
		CreateInvItems (slf, ItMi_Coal, 4); 
		CreateInvItems (slf, ItRw_Arrow, 125);
		CreateInvItems (slf, ItRw_Bolt,  125);
	
		Engor_ItemsGiven_Chapter_5 = TRUE;
	};
};
