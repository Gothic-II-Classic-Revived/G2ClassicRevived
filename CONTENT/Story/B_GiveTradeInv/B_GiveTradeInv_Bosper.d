
var int Bosper_ItemsGiven_Chapter_1;
var int Bosper_ItemsGiven_Chapter_2;
var int Bosper_ItemsGiven_Chapter_3;
var int Bosper_ItemsGiven_Chapter_4;
var int Bosper_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Bosper (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Bosper_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItRw_Arrow, 30); 
		
		// ------ Waffen ------
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_01, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_02, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_03, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_04, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_SMALL_05, 1); 
			
		// ------ Ringe / Amulette -------
		CreateInvItems (slf, ItBE_Addon_Leather_01, 1); 
		CreateInvItems (slf, ITRI_REVIVED_DEX_02, 1); 
		
		
		Bosper_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Bosper_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItRw_Arrow, 50); 
		CreateInvItems (slf, ItRw_Bolt, 50); 
		CreateInvItems (slf, ItBe_Addon_DEX_5, 1); 
		
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_01, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_02, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_03, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_04, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_05, 1); 
		
		Bosper_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Bosper_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ItRw_Arrow, 100); 
		CreateInvItems (slf, ItRw_Bolt, 100); 
		CreateInvItems (slf, ItBe_Addon_DEX_10, 1);

		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_06, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_07, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_08, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_LONG_09, 1); 
		Bosper_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Bosper_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItRw_Arrow, 180); 
		CreateInvItems (slf, ItRw_Bolt, 160); 
		
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_01, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_02, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_03, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_04, 1); 
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_05, 1); 
		
		Bosper_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Bosper_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItRw_Arrow, 200); 
		CreateInvItems (slf, ItRw_Bolt, 170); 
		
		Bosper_ItemsGiven_Chapter_5 = TRUE;
	};
};

