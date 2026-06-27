
instance STRF_4111_Grimes (Npc_Default)
{
	// ------ NSC ------
	name 		= "Grimes";
	guild 		= GIL_STRF;
	id 			= 4111;
	voice 		= 5;
	flags       = 0;							
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);

	// ------ Kampf-Taktik ------
	fight_tactic	= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------			
	EquipItem (self, ITMW_REVIVED_2H_PICKAXE);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------					
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_W_Grimes, Body_W_Hum_Normal3, Body_White, Teeth_Rotten, ITAR_REVIVED_SFB_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4111;
};

FUNC VOID Rtn_Start_4111 ()
{	
	TA_Pick_Ore	 			(08,00,22,00,"OW_OM_PICKSLOT_06");
    TA_Stand_Drinking		(22,00,23,00,"OW_OM_ENTRANCE03_001");
    TA_Sit_Campfire	 		(23,00,08,00,"OW_OM_ENTRANCE03_CAMPFIRE");
};
