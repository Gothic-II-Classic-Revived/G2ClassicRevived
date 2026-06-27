
instance VLK_430_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	//Frau vom 'Säger' 453
	guild 		= GIL_VLK;
	id 			= 430;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe8", Face_W_Babe_Normal1, Body_W_Babe_Naked, Body_White, Teeth_Yellow, ITAR_VlkBabe_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_430;
};

FUNC VOID Rtn_Start_430 ()
{	
	TA_Smalltalk		(05,07,12,07,"NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Cook_Stove		(12,07,16,00,"NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
	TA_Smalltalk		(16,07,19,07,"NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sweep_FP 		(19,07,22,07,"NW_CITY_HABOUR_POOR_AREA_HUT_04_IN_B");
	TA_Smalltalk		(22,07,00,07,"NW_CITY_HABOUR_POOR_AREA_PATH_07");
    TA_Sleep	 		(00,07,05,07,"NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
};
