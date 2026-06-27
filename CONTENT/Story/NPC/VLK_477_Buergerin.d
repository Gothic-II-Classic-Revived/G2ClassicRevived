
instance VLK_477_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin; //Brahims Frau
	guild 		= GIL_VLK;
	id 			= 477;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Babe_Normal1, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_477;
};

FUNC VOID Rtn_Start_477 ()
{	
	TA_Stand_Eating			(05,05,11,55,"NW_CITY_PATH_HABOUR_03");
	TA_Stand_Eating			(11,55,14,05,"NW_CITY_WAY_TO_SHIP_01");
	TA_Stand_Eating			(14,05,15,55,"NW_CITY_PATH_HABOUR_03");
	TA_Stand_Eating			(15,55,19,05,"NW_CITY_WAY_TO_SHIP_01");
	TA_Cook_Stove			(19,05,21,05,"NW_CITY_BED_BRAHIM");
    TA_Sleep				(21,05,05,05,"NW_CITY_BED_BRAHIM");
};
