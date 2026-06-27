
instance VLK_443_Arbeiter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Arbeiter; 
	guild 		= GIL_VLK;
	id 			= 443;
	voice 		= 1;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal40, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_Bau_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_443;
};

FUNC VOID Rtn_Start_443()
{	
	TA_Saw			(04,55,19,05,"NW_CITY_HABOUR_08");
    TA_Smalltalk	(19,05,04,55,"NW_CITY_HABOUR_02");
};
