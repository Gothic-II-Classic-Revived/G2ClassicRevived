
instance VLK_488_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;
	guild 		= GIL_VLK;
	id 			= 488;
	voice 		= 16;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Normal14, Body_W_Babe_Naked, Body_White, Teeth_Broken, ITAR_BauBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_488;
};

FUNC VOID Rtn_Start_488 ()
{	
	TA_Cook_Stove	(05,00,08,00,"NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Smalltalk	(08,00,12,00,"NW_CITY_PATH_HABOUR_04");
	TA_Stand_Eating	(12,00,14,00,"NW_CITY_PATH_HABOUR_03");
	TA_Sweep_FP		(14,00,16,00,"NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Stand_Eating	(16,00,18,00,"NW_CITY_PATH_HABOUR_03");
	TA_Cook_Stove	(18,00,20,00,"NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Sweep_FP		(20,00,00,00,"NW_CITY_HABOUR_HUT_08_IN_B");
    TA_Sleep		(00,00,05,00,"NW_CITY_HABOUR_HUT_08_BED_01");
};

