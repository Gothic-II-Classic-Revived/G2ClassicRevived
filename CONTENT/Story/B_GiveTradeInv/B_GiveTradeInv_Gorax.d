var int Gorax_ItemsGiven_Chapter_1;
var int Gorax_ItemsGiven_Chapter_2;
var int Gorax_ItemsGiven_Chapter_3;
var int Gorax_ItemsGiven_Chapter_4;
var int Gorax_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Gorax (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Gorax_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItMi_RuneBlank, 1);
		
		CreateInvItems (slf, ItFo_Wine, 8);
		CreateInvItems (slf, ItMi_Sulfur, 3);
		CreateInvItems (slf, ItMi_Quartz, 3);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 5);
		CreateInvItems (slf, ItSc_Icebolt, 5);
		CreateInvItems (slf, ItSc_LightHeal, 3);

		CreateInvItems (slf, ItBE_Addon_NOV_01, 1);
		Gorax_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Gorax_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItMi_RuneBlank, 2);

		CreateInvItems (slf, ItFo_Wine, 10);
		CreateInvItems (slf, ItMi_Sulfur, 4);
		CreateInvItems (slf, ItMi_Quartz, 4);
		CreateInvItems (slf, ItMi_Rockcrystal, 2);

		CreateInvItems (slf, ItBE_Addon_KDF_01, 1);
		Gorax_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Gorax_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		CreateInvItems (slf, ItMi_RuneBlank, 2);

		CreateInvItems (slf, ItFo_Wine, 12);
		CreateInvItems (slf, ItMi_Sulfur, 5);
		CreateInvItems (slf, ItMi_Quartz, 5);
		CreateInvItems (slf, ItMi_Rockcrystal, 3);
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItAt_WaranFiretongue, 1);	

		CreateInvItems (slf, ItSc_MediumHeal, 5);
		CreateInvItems (slf, ItSc_Thunderball, 2);

		Gorax_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Gorax_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItMi_RuneBlank, 2);

		CreateInvItems (slf, ItFo_Wine, 14);
		CreateInvItems (slf, ItMi_Sulfur, 6);
		CreateInvItems (slf, ItMi_Quartz, 6);
		CreateInvItems (slf, ItMi_Aquamarine, 2);
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Pitch, 1);

		CreateInvItems (slf, ItSc_LightningFlash, 5);
		CreateInvItems (slf, ItSc_ChargeFireball, 3);

		Gorax_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Gorax_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItMi_RuneBlank, 2);

		CreateInvItems (slf, ItFo_Wine, 16);
		CreateInvItems (slf, ItMi_Sulfur, 7);
		CreateInvItems (slf, ItMi_Quartz, 7);
		CreateInvItems (slf, ItMi_DarkPearl, 2);
		CreateInvItems (slf, ItMi_Aquamarine, 3);
		CreateInvItems (slf, ItMi_HolyWater, 3);

		Gorax_ItemsGiven_Chapter_5 = TRUE;
	};
};
