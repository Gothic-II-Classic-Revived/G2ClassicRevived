
instance VLK_420_Coragon (Npc_Default)
{
	// ------ NSC ------
	name 		= "Coragon"; 
	guild 		= GIL_VLK;
	id 			= 420;
	voice 		= 9;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Kampf-Talente ------	
	B_SetAttributesForLevel(self, 15);
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);
	
	// ------ Inventory ------
	//Händler

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald.", Face_W_Coragon, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_SMITH);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_420;
};

FUNC VOID Rtn_Start_420 ()
{	
	TA_Stand_ArmsCrossed	(08,00,22,00,"NW_CITY_TAVERN_IN_03");
	TA_Stand_Sweeping		(22,00,08,00,"NW_CITY_TAVERN_IN_03");
};
