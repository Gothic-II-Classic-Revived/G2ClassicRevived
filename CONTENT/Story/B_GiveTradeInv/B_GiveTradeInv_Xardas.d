var int Xardas_ItemsGiven_Chapter_2;
var int Xardas_ItemsGiven_Chapter_3;

FUNC VOID B_GiveTradeInv_Xardas (var C_NPC slf)
{
	if ((Kapitel >= 2)
	&& (Xardas_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItMi_RuneBlank, 6);
		CreateInvItems (slf, ItMi_Flask, 6);
		CreateInvItems (slf, ItMi_Sulfur, 6);
		CreateInvItems (slf, ItMi_Quartz, 6);
		CreateInvItems (slf, ItMi_Rockcrystal, 3);

		Xardas_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Xardas_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItMi_RuneBlank, 8);
		CreateInvItems (slf, ItMi_Flask, 8);
		CreateInvItems (slf, ItMi_Sulfur, 8);
		CreateInvItems (slf, ItMi_Quartz, 8);
		CreateInvItems (slf, ItMi_Rockcrystal, 5);
		CreateInvItems (slf, ItMi_DarkPearl, 2);

		Xardas_ItemsGiven_Chapter_3 = TRUE;
	};
};
