
instance VLK_478_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 478;
	voice 		= 17;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Babe_Normal9, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_478;
};

FUNC VOID Rtn_Start_478 ()
{	
	TA_Pick_FP 			(05,00,17,00,"NW_CITY_PICK_01");
	TA_Stomp_Herb 		(17,00,22,00,"NW_CITY_HABOUR_STOMPER_02"); 
    TA_Sleep			(22,00,05,00,"NW_CITY_HABOUR_HUT_05_BED_02");
};
