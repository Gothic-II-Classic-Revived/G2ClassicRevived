
instance VLK_429_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	//Carls Frau
	guild 		= GIL_VLK;
	id 			= 429;
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
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe4", Face_W_Babe_Normal14, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_429;
};

FUNC VOID Rtn_Start_429 ()
{	
	TA_Smalltalk		(05,05,12,05,"NW_CITY_HABOUR_POOR_AREA_PATH_06");
    TA_Stomp_Herb 		(12,05,22,05,"NW_CITY_HABOUR_POOR_AREA_PATH_08_A");
    TA_Smalltalk		(22,05,00,05,"NW_CITY_HABOUR_POOR_AREA_PATH_07");
    TA_Sleep			(00,05,05,05,"NW_CITY_HABOUR_HUT_03_BED_01");
};
