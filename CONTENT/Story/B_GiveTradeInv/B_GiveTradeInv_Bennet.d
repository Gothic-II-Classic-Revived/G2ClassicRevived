var int Bennet_ItemsGiven_Chapter_1;
var int Bennet_ItemsGiven_Chapter_2;
var int Bennet_ItemsGiven_Chapter_3;
var int Bennet_ItemsGiven_Chapter_4;
var int Bennet_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Bennet (var C_NPC slf)
{
	if ((Kapitel >= 1) 
	&& (Bennet_ItemsGiven_Chapter_1 == FALSE))
	{		 
		CreateInvItems (slf, ItMi_Gold, 120);
		CreateInvItems (slf, ItMiSwordraw, 5);
		CreateInvItems (slf, ItMi_Nugget, 8);
		CreateInvItems (slf, ItMi_Coal, 6);

		CreateInvItems (slf, ItMi_Hammer, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_PICKAXE, 1);
		CreateInvItems (slf, ItBE_Addon_SLD_01, 1); 
		
		Bennet_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2) 
	&& (Bennet_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 180);
		CreateInvItems (slf, ItMiSwordraw, 8);
		CreateInvItems (slf, ItMi_Nugget, 12);
		CreateInvItems (slf, ItMi_Coal, 8);
		CreateInvItems (slf, ItBE_Addon_MC, 1); 

		Bennet_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3) 
	&& (Bennet_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 260);
		CreateInvItems (slf, ItMiSwordraw, 10);
		CreateInvItems (slf, ItMi_Nugget, 14);
		CreateInvItems (slf, ItMi_Coal, 10);

		Bennet_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4) 
	&& (Bennet_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 360);
		CreateInvItems (slf, ItMiSwordraw, 12);
		CreateInvItems (slf, ItMi_Nugget, 18);
		CreateInvItems (slf, ItMi_Coal, 12);

		Bennet_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5) 
	&& (Bennet_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItMiSwordraw, 15);
		CreateInvItems (slf, ItMi_Nugget, 22);
		CreateInvItems (slf, ItMi_Coal, 14);
		
		Bennet_ItemsGiven_Chapter_5 = TRUE;
	};
};
