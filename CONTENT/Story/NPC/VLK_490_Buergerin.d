
instance VLK_490_Buergerin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Buergerin;
	guild 		= GIL_VLK;
	id 			= 490;
	voice 		= 17;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ITMW_REVIVED_1H_DAGGER_01);
		
	// ------ visuals ------						FaceBabe_N_HairAndCloth																
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe8", Face_W_Babe_Normal15, Body_W_Babe_Naked, Body_White, Teeth_Rotten, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_490;
};

FUNC VOID Rtn_Start_490 ()
{	
	TA_Smalltalk	(08,00,22,00,"NW_CITY_HABOUR_KASERN_05_01");
	TA_Smalltalk	(22,00,08,00,"NW_CITY_HABOUR_KASERN_05_01");
};
