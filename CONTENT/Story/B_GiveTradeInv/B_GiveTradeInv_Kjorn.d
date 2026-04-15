var int Kjorn_ItemsGiven_Chapter_4;
var int Kjorn_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Kjorn (var C_NPC slf)
{
	if ((Kapitel >= 4)
	&& (Kjorn_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		CreateInvItems (slf, ItKE_Lockpick, 10);

		CreateInvItems (slf, ItFo_Wine, 3);
		CreateInvItems (slf, ItFo_Bacon, 5);
		
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02,6);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03,4);
		CreateInvItems (slf,ITRI_REVIVED_PROT_MAGIC_FIRE, 1); 

		Kjorn_ItemsGiven_Chapter_4 = TRUE;
	};
	if ((Kapitel >= 5)
	&& (Kjorn_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItRw_Arrow, 120);
		CreateInvItems (slf, ItRw_Bolt, 120);
		CreateInvItems (slf, ItKE_Lockpick, 12);

		CreateInvItems (slf, ItFo_Wine, 4);
		CreateInvItems (slf, ItFo_Bacon, 6);

		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02,6);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03,4);

		Kjorn_ItemsGiven_Chapter_5 = TRUE;
	};
};
