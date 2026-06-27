
instance VLK_487_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;
	guild 		= GIL_VLK;
	id 			= 487;
	voice 		= 17;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);	
	
	// ------ visuals ------						FaceBabe_N_HairAndCloth																
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Babe_Normal13, Body_W_Babe_Naked, Body_White, Teeth_Broken, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_487;
};

FUNC VOID Rtn_Start_487 ()
{	
	TA_Stomp_Herb	(05,00,08,00,"NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Smalltalk	(08,00,12,00,"NW_CITY_PATH_HABOUR_04_01");
	TA_Cook_Stove	(12,00,12,30,"NW_CITY_PATH_HABOUR_04_01");
	TA_Smalltalk	(12,30,16,00,"NW_CITY_PATH_HABOUR_04_01");
	TA_Stomp_Herb	(16,00,19,30,"NW_CITY_PATH_HABOUR_04_STOMPER");
    TA_Cook_Stove	(19,30,22,00,"NW_CITY_HABOUR_HUT_04_IN");
    TA_Sleep		(22,00,05,00,"NW_CITY_HABOUR_HUT_04_BED_01");
};
