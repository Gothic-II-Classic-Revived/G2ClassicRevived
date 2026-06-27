
instance Mil_318_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 318;
	voice 		= 6;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																		
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal12, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_318;
};

FUNC VOID Rtn_Start_318()
{	
	TA_Stand_Guarding	(06,45,21,05,"NW_CITY_HABOUR_KASERN_OFFICE");
    TA_Smalltalk		(21,05,23,59,"NW_CITY_HABOUR_KASERN_BARRACK02_IN");
    TA_Sleep			(23,59,06,45,"NW_CITY_BARRACK02_BED_WULFGAR");
};
