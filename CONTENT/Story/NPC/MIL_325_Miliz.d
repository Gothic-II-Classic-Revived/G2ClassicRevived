
instance Mil_325_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Miliz;
	guild 		= GIL_MIL;
	id 			= 325;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_NewsOverride] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_B_Hum_Bald1, Body_B_Hum_Naked, Body_Black, Teeth_Normal, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_325;
};

FUNC VOID Rtn_Start_325 ()
{	
	TA_Guard_Passage 	(08,00,23,00,"NW_CITY_MERCHANT_PATH_02");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_MERCHANT_PATH_02");
};
