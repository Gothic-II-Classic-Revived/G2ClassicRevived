
instance VLK_472_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 472;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Normal7, Body_W_Babe_Naked, Body_White, Teeth_Rotten, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_472;
};

FUNC VOID Rtn_Start_472 ()
{	
	TA_Smalltalk	(05,00,12,35,"NW_CITY_HABOUR_JACK");
    TA_Smalltalk	(12,35,18,00,"NW_CITY_HABOUR_POOR_AREA_01");
    TA_Sweep_FP		(18,00,22,00,"NW_CITY_HABOUR_POOR_AREA_HUT_07_01");
    TA_Sleep		(22,00,05,00,"NW_CITY_HABOUR_POOR_AREA_HUT_07_BED_01");
};
