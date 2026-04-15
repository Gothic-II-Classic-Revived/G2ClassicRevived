var int Sengrath_ItemsGiven_Chapter_1;
var int Sengrath_ItemsGiven_Chapter_2;
var int Sengrath_ItemsGiven_Chapter_3;
var int Sengrath_ItemsGiven_Chapter_4;
var int Sengrath_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Sengrath (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Sengrath_ItemsGiven_Chapter_1 == FALSE))
	{
		Sengrath_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)		//Joly: wird eh erst ab 2. Kapitel vom SC erreicht.
	&& (Sengrath_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 10);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,  5);
		
		// ------ Scrolls -------
		CreateInvItems (slf, ITSc_Zap, 3);
		CreateInvItems (slf, ITSc_Sleep, 2);
		CreateInvItems (slf, ITSc_IceCube, 2);
		CreateInvItems (slf, ITSc_Windfist, 3);
		CreateInvItems (slf, ITSc_MediumHeal, 5);
		CreateInvItems (slf, ITSc_LightningFlash, 2);
		
		CreateInvItems (slf,ITRI_REVIVED_PROT_MAGIC_FIRE, 1); 
		CreateInvItems (slf,ItBe_Addon_STR_10,  1);
		CreateInvItems (slf,ItBe_Addon_Prot_FIRE,  1);
		
		Sengrath_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Sengrath_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 10);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,  5);
		Sengrath_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Sengrath_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 150); 
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 10);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,  5);

		Sengrath_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Sengrath_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 10);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02,  5);
	
		Sengrath_ItemsGiven_Chapter_5 = TRUE;
	};
};
