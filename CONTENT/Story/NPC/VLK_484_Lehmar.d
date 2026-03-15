
instance VLK_484_Lehmar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lehmar"; 
	guild 		= GIL_VLK;
	id 			= 484;
	voice 		= 9;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);														
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_LONG_01); 
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self,ITHE_REVIVED_SPECTACLES_03);
	CreateInvItems (self, ItWr_Schuldenbuch, 1);

	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Whistler, BodyTex_N,ITAR_Vlk_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_484;
};

FUNC VOID Rtn_Start_484()
{	
	TA_Sit_Throne		(06,30,00,30,"NW_CITY_HABOUR_HUT_08_IN_C");
    TA_Sleep			(00,30,06,30,"NW_CITY_HABOUR_HUT_08_BED_02");
};
