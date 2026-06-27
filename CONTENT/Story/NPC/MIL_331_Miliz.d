
instance Mil_331_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 331;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal19, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_331;
};

FUNC VOID Rtn_Start_331()
{	
	TA_Practice_Sword	(07,02,21,02,"NW_CITY_HABOUR_KASERN_CENTRE_04");
    TA_Read_Bookstand 	(21,02,00,02,"NW_CITY_KASERN_BARRACK02_04");
    TA_Sleep			(00,02,07,02,"NW_CITY_BARRACK01_BED_01");
};
