var int Sengrath_ItemsGiven_Chapter_1;
var int Sengrath_ItemsGiven_Chapter_2;
var int Sengrath_ItemsGiven_Chapter_3;

FUNC VOID B_GiveTradeInv_Sengrath (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Sengrath_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 4);
		CreateInvItems (slf, ItSc_Icebolt, 4);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 10);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 10);

		Sengrath_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Sengrath_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItSc_IceCube, 1);
		CreateInvItems (slf, ItSc_LightHeal, 3);
		CreateInvItems (slf, ItSc_MediumHeal, 3);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 8);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03, 4);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 8);
		CreateInvItems (slf, ITPO_REVIVED_MANA_03, 4);

		Sengrath_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Sengrath_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItSc_FullHeal, 3);
		CreateInvItems (slf, ItSc_Firestorm, 2);
		CreateInvItems (slf, ItSc_LightningFlash, 2);

		CreateInvItems (slf, ITPO_REVIVED_SPECIAL_HEALTH_01, 2);
		CreateInvItems (slf, ITPO_REVIVED_SPECIAL_MANA_01, 2);

		Sengrath_ItemsGiven_Chapter_3 = TRUE;
	};
};
