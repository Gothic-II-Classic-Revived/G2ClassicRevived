
instance VLK_473_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;
	guild 		= GIL_VLK;
	id 			= 473;
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
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------						FaceBabe_N_HairAndCloth																
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe8", Face_W_Babe_Normal8, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_473;
};

FUNC VOID Rtn_Start_473 ()
{	
	TA_Smalltalk		(05,05,12,30,"NW_CITY_HABOUR_PUFF_02");
    TA_Smalltalk		(12,30,18,05,"NW_CITY_WAY_TO_SHIP_01");
    TA_Stand_Sweeping	(18,05,22,05,"NW_CITY_HABOUR_POOR_AREA_HUT_01_IN");
    TA_Sleep			(22,05,05,05,"NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_01");
};
