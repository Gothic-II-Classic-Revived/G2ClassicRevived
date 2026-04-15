var int Salandril_ItemsGiven_Chapter_1;
var int Salandril_ItemsGiven_Chapter_2;
var int Salandril_ItemsGiven_Chapter_3;
var int Salandril_ItemsGiven_Chapter_4;
var int Salandril_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Salandril (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Salandril_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf, ItMi_Gold, 100); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	,5); 
		CreateInvItems (slf,ITPO_REVIVED_MANA_03 	,2); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	,5);
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	,2);
		CreateInvItems (slf,ItPl_Speed_Herb_01	,2);
		
		CreateInvItems (slf,ITAM_REVIVED_PROT_FIRE_01 ,1);
				
		Salandril_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& Salandril_ItemsGiven_Chapter_2 == FALSE)
	{
		CreateInvItems (slf, ItMi_Gold, 100); 

		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	,5); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	,5);
		
		CreateInvItems (slf,ITPO_REVIVED_MANA_03 	,2); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	,2);
		
		Salandril_ItemsGiven_Chapter_2 = TRUE;
	};	
	
	if ((Kapitel >= 3)
	&& (Salandril_ItemsGiven_Chapter_3 == FALSE))
	{
	
		CreateInvItems (slf, ItMi_Gold, 100); 

		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	,5); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	,5);
		
		CreateInvItems (slf,ITPO_REVIVED_MANA_03 	,2); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	,2);

	
		Salandril_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Salandril_ItemsGiven_Chapter_4 == FALSE))
	{
	
		CreateInvItems (slf, ItMi_Gold, 200); 

		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	,2); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	,2);
		
		CreateInvItems (slf,ITPO_REVIVED_MANA_03 	,5); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	,5);


		Salandril_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Salandril_ItemsGiven_Chapter_5 == FALSE))
	{
	
		CreateInvItems (slf, ItMi_Gold, 300); 
		
		CreateInvItems (slf,ITPO_REVIVED_MANA_02 	,2); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_02	,2);
		
		CreateInvItems (slf,ITPO_REVIVED_MANA_03 	,5); 
		CreateInvItems (slf,ITPO_REVIVED_HEALTH_03	,5);

		Salandril_ItemsGiven_Chapter_5 = TRUE;
	};
};
