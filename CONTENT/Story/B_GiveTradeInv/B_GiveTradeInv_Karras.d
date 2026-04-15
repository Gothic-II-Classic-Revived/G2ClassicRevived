var int Karras_ItemsGiven_Chapter_1;
var int Karras_ItemsGiven_Chapter_2;
var int Karras_ItemsGiven_Chapter_3;
var int Karras_ItemsGiven_Chapter_4;
var int Karras_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Karras (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Karras_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100);

		CreateInvItems (slf, ItSc_SumGobSkel, 2);

		Karras_ItemsGiven_Chapter_1 = TRUE;
	};
	if ((Kapitel >= 2)
	&& (Karras_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 200);

		CreateInvItems (slf, ItSc_SumGobSkel, 3);
		CreateInvItems (slf, ItSc_SumSkel, 1);

		Karras_ItemsGiven_Chapter_2 = TRUE;
	};
	if ((Kapitel >= 3)
	&& (Karras_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 300);

		CreateInvItems (slf, ItSc_SumGobSkel, 3);
		CreateInvItems (slf, ItSc_SumSkel, 2);
		CreateInvItems (slf, ItSc_SumGol, 1);

		Karras_ItemsGiven_Chapter_3 = TRUE;
	};
	if ((Kapitel >= 4)
	&& (Karras_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);

		CreateInvItems (slf, ItSc_SumSkel, 3);
		CreateInvItems (slf, ItSc_SumGol, 2);

		Karras_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Karras_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);

		CreateInvItems (slf, ItSc_SumGol, 3);
		CreateInvItems (slf, ItSc_SumDemon, 1);
		CreateInvItems (slf, ItSc_ArmyOfDarkness, 1);

		Karras_ItemsGiven_Chapter_5 = TRUE;
	};
};
