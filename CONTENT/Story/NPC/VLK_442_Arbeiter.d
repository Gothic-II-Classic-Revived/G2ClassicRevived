
instance VLK_442_Arbeiter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Arbeiter; 
	guild 		= GIL_VLK;
	id 			= 442;
	voice 		= 6;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
 	EquipItem	(self, ITMW_REVIVED_1H_HATCHET_01); 
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal39, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_Bau_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_442;
};

FUNC VOID Rtn_Start_442()
{	
	TA_Repair_Hut	(05,00,19,00,"NW_CITY_HABOUR_WERFT_ENTRY");
    TA_Smalltalk	(19,00,05,00,"NW_CITY_PATH_HABOUR_01");
};
