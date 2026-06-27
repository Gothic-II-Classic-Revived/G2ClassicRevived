
instance VLK_482_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Buergerin;	
	guild 		= GIL_VLK;
	id 			= 482;
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
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_BabeHair", Face_W_Babe_Normal10, Body_W_Babe_Naked, Body_White, Teeth_Gold, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_482;
};

FUNC VOID Rtn_Start_482 ()
{	
	TA_Smalltalk		(12,00,16,00,"NW_CITY_HABOUR_STOMPER_01");
    TA_Stomp_Herb		(16,00,20,00,"NW_CITY_HABOUR_STOMPER_01");
    TA_Smalltalk		(20,00,00,00,"NW_CITY_HABOUR_SMALLTALK_02");
    TA_Sleep			(00,00,05,00,"NW_CITY_HABOUR_HUT_06_BED_01");
};
