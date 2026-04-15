var int Isgaroth_ItemsGiven_Chapter_1;
var int Isgaroth_ItemsGiven_Chapter_2;
var int Isgaroth_ItemsGiven_Chapter_3;
var int Isgaroth_ItemsGiven_Chapter_4;
var int Isgaroth_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Isgaroth (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Isgaroth_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 6);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 5);

		Isgaroth_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Isgaroth_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 6);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 5);

		CreateInvItems (slf, ITRI_REVIVED_PROT_MAGIC_FIRE, 1);
		CreateInvItems (slf, ITAM_REVIVED_PROT_FIRE_01, 1);

		Isgaroth_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Isgaroth_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_01, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 6);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 5);

		CreateInvItems (slf, ITRI_REVIVED_MP_01, 1);
		CreateInvItems (slf, ITAM_REVIVED_MP_01, 1);

		Isgaroth_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Isgaroth_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ITPO_REVIVED_HEALTH_02, 6);
		CreateInvItems (slf, ITPO_REVIVED_HEALTH_03, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_02, 6);
		CreateInvItems (slf, ITPO_REVIVED_MANA_03, 6);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 5);

		CreateInvItems (slf, ITRI_REVIVED_PROT_TOTAL_01, 1);
		CreateInvItems (slf, ITAM_REVIVED_PROT_WEAPON_01, 1);

		Isgaroth_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Isgaroth_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItPo_Health_Addon_04, 4);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 4);

		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_Firebolt, 5);

		CreateInvItems (slf, ITRI_REVIVED_STR_DEX_01, 1);
		CreateInvItems (slf, ITAM_REVIVED_HP_MP_01, 1);

		Isgaroth_ItemsGiven_Chapter_5 = TRUE;
	};
};