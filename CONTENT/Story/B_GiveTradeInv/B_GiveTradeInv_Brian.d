var int Brian_ItemsGiven_Chapter_1;
var int Brian_ItemsGiven_Chapter_2;
var int Brian_ItemsGiven_Chapter_3;
var int Brian_ItemsGiven_Chapter_4;
var int Brian_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Brian (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Brian_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf, ItMiSwordraw, 3); 
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Pitch, 1);
		Brian_ItemsGiven_Chapter_1 = TRUE;
	};

	if ((Kapitel >= 2)
	&& (Brian_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200); 
		CreateInvItems (slf, ItMiSwordraw, 3); 
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Pitch, 2);
		Brian_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Brian_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		CreateInvItems (slf, ItMiSwordraw, 4); 
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_Pitch, 2);
		Brian_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Brian_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400); 
		CreateInvItems (slf, ItMiSwordraw, 4); 
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_Nugget, 1);
		Brian_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Brian_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500); 
		CreateInvItems (slf, ItMiSwordraw, 5); 
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_Nugget, 1);
		Brian_ItemsGiven_Chapter_5 = TRUE;
	};
};
