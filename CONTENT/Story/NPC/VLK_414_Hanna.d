
instance VLK_414_Hanna (Npc_Default)
{
	// ------ NSC ------
	name 		= "Hanna";
	guild 		= GIL_VLK;
	id 			= 414;
	voice 		= 17;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_1H_DAGGER_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------						FaceBabe_N_HairAndCloth																
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Hanna, Body_W_Babe_Naked, Body_White, Teeth_Normal, ITAR_VlkBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_414;
};

FUNC VOID Rtn_Start_414 ()
{	
	TA_Stand_ArmsCrossed	(08,00,22,00,"NW_CITY_HANNA");
    TA_Stand_ArmsCrossed	(22,00,08,00,"NW_CITY_HANNA");
};
