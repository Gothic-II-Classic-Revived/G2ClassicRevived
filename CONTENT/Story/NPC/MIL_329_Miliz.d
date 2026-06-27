
instance Mil_329_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 329;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal17, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_329;
};

FUNC VOID Rtn_Start_329()
{	
	TA_Practice_Sword	(07,00,20,58,"NW_CITY_HABOUR_KASERN_CENTRE_02");
    TA_Smalltalk		(20,58,00,00,"NW_CITY_KASERN_BARRACK02_03");
    TA_Sleep			(00,00,07,00,"NW_CITY_BARRACK01_BED_07");
};
