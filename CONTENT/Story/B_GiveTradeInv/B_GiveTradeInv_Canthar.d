var int Canthar_ItemsGiven_Chapter_1;
var int Canthar_ItemsGiven_Chapter_2;
var int Canthar_ItemsGiven_Chapter_3;
var int Canthar_ItemsGiven_Chapter_4;
var int Canthar_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Canthar (var C_NPC slf)
{
	if ((Kapitel >= 0)
	&& (Canthar_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItPl_Beet, 8);
		CreateInvItems (slf, ItFo_Wine, 3);
		CreateInvItems (slf, ItMi_Pan, 1);
		CreateInvItems (slf, ItMi_Flask, 4);
		CreateInvItems (slf, ItMi_Saw, 1);

		CreateInvItems (slf, ITMW_REVIVED_1H_SICKLE_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_SCYTHE_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_HATCHET_01, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_KNIFE_01, 1); 

		Canthar_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Canthar_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItPl_Beet, 10);
		CreateInvItems (slf, ItFo_Wine, 4);
		Canthar_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Canthar_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ITMW_REVIVED_1H_CLUB_02, 1); 
		CreateInvItems (slf, ITMW_REVIVED_1H_NAILMACE_01, 1); 
		Canthar_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Canthar_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItFo_Wine, 5);
		CreateInvItems (slf, ItMi_Flask, 6);
		Canthar_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Canthar_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItMi_Pan, 1);
		Canthar_ItemsGiven_Chapter_5 = TRUE;
	};
};
