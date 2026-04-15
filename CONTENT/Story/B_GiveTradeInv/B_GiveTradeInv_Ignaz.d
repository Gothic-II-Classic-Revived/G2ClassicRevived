var int Ignaz_ItemsGiven_Chapter_1;
var int Ignaz_ItemsGiven_Chapter_2;
var int Ignaz_ItemsGiven_Chapter_3;
var int Ignaz_ItemsGiven_Chapter_4;
var int Ignaz_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Ignaz (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Ignaz_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItSc_Shrink, 1);
		CreateInvItems (slf, ItSc_Sleep, 2);
		CreateInvItems (slf, ITSC_Charm, 4);

		CreateInvItems (slf, ITSC_REVIVED_TELEKINESIS, 1);

		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MEATBUG, 1);

		Ignaz_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Ignaz_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItSc_Shrink, 1);
		CreateInvItems (slf, ItSc_Sleep, 2);
		CreateInvItems (slf, ITSC_Charm, 4);

		CreateInvItems (slf, ITSC_REVIVED_TELEKINESIS, 1);
		CreateInvItems (slf, ITSC_REVIVED_CONTROL, 1);

		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MEATBUG, 2);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_BOAR, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_CHOMPER, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_BLOODFLY, 1);

		Ignaz_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Ignaz_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItSc_Shrink, 1);
		CreateInvItems (slf, ItSc_Sleep, 2);
		CreateInvItems (slf, ITSC_Charm, 4);

		CreateInvItems (slf, ITSC_REVIVED_TELEKINESIS, 2);
		CreateInvItems (slf, ITSC_REVIVED_CONTROL, 2);

		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MEATBUG, 2);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MANTIS, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_GOBLIN, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_SWAMPDRONE, 1);

		Ignaz_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Ignaz_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItSc_Shrink, 1);
		CreateInvItems (slf, ItSc_Sleep, 2);
		CreateInvItems (slf, ITSC_Charm, 4);

		CreateInvItems (slf, ITSC_REVIVED_TELEKINESIS, 2);
		CreateInvItems (slf, ITSC_REVIVED_CONTROL, 2);

		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MEATBUG, 2);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_ALLIGATOR, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_BLOODHOUND, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MINECRAWLER, 1);

		Ignaz_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Ignaz_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItSc_Shrink, 2);
		CreateInvItems (slf, ItSc_Sleep, 4);
		CreateInvItems (slf, ITSC_Charm, 6);

		CreateInvItems (slf, ITSC_REVIVED_TELEKINESIS, 2);
		CreateInvItems (slf, ITSC_REVIVED_CONTROL, 2);

		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_MEATBUG, 2);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_HARPY, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_PANTHER, 1);
		CreateInvItems (slf, ITSC_REVIVED_TRANSFORM_TROLL, 1);

		Ignaz_ItemsGiven_Chapter_5 = TRUE;
	};
};