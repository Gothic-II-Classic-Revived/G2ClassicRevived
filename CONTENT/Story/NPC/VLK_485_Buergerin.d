
instance VLK_485_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 485;
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
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Normal12, Body_W_Babe_Naked, Body_White, Teeth_Rotten, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_485;
};

FUNC VOID Rtn_Start_485 ()
{	
	TA_Sit_Bench			(05,10,10,10,"NW_CITY_HABOUR_BENCH_02");
	TA_Stand_Sweeping		(10,10,12,10,"NW_CITY_HABOUR_POOR_AREA_HUT_05_IN");
	TA_Stomp_Herb 			(12,10,16,05,"NW_CITY_HABOUR_POOR_AREA_PATH_06_B");
	TA_Smalltalk			(16,05,19,05,"NW_CITY_HABOUR_POOR_AREA_PATH_06");
    TA_Sit_Bench			(19,05,22,55,"NW_CITY_HABOUR_BENCH_02");
    TA_Sleep				(22,55,05,10,"NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
