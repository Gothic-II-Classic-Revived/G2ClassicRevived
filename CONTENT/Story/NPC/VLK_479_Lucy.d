
instance VLK_479_Lucy (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lucy"; //Alwins Frau
	guild 		= GIL_VLK;
	id 			= 479;
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
	EquipItem (self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);	
	// ------ visuals ------						FaceBabe_N_HairAndCloth																
	B_SetNpcFullVisual (self, FEMALE, "Hum_Head_Babe1", Face_W_Babe_Normal2, Body_W_Babe_Naked, Body_White, Teeth_Broken, ITAR_BauBabe_L);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_479;
};

FUNC VOID Rtn_Start_479 ()
{	
	TA_Rake_FP 			(05,00,19,00,"NW_CITY_PICK_02");
	TA_Cook_Stove		(19,00,22,00,"NW_CITY_HABOUR_HUT_07_IN");
	TA_Sleep			(22,00,05,00,"NW_CITY_HABOUR_HUT_07_BED_01");
};
