
instance VLK_476_Fenia (Npc_Default)
{
	// ------ NSC ------
	name 		= "Fenia";	//Halvors Frau
	guild 		= GIL_VLK;
	id 			= 476;
	voice 		= 17;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Fenia, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_476;
};

FUNC VOID Rtn_Start_476 ()
{	
	TA_Stand_Guarding		(04,55,20,05,"NW_CITY_PATH_HABOUR_03_01");
    TA_Stomp_Herb 			(20,05,22,05,"NW_CITY_HABOUR_POOR_AREA_PATH_01");
    TA_Sleep	 			(22,05,04,55,"NW_CITY_BED_HALVOR_WEIB");
};
