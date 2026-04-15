var int Rethon_ItemsGiven_Chapter_4;
var int Rethon_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Rethon (var C_NPC slf)
{
	if ((Kapitel >= 4)
	&& (Rethon_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_AXE_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_HEAVY_02, 1);

		Rethon_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Rethon_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItRw_Arrow, 120);
		CreateInvItems (slf, ItRw_Bolt, 120);

		CreateInvItems (slf, ITMW_REVIVED_1H_SWORD_BASTARD_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_1H_AXE_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_SWORD_HEAVY_02, 1);
		CreateInvItems (slf, ITMW_REVIVED_2H_AXE_HEAVY_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_BOW_WAR_03, 1);
		CreateInvItems (slf, ITRW_REVIVED_CROSSBOW_HEAVY_02, 1);

		Rethon_ItemsGiven_Chapter_5 = TRUE;
	};
};
