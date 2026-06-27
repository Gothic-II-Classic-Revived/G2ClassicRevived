
instance Mil_330_Miliz (Npc_Default)
{
	// ------ NSC ------
	name 		= Name_Miliz;	
	guild 		= GIL_MIL;
	id 			= 330;
	voice 		= 7;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal18, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_GRD_L);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_330;
};

FUNC VOID Rtn_Start_330()
{	
	TA_Practice_Sword		(07,00,21,01,"NW_CITY_HABOUR_KASERN_CENTRE_03");
   	TA_Smalltalk			(21,01,00,00,"NW_CITY_KASERN_BARRACK02_02");
   	TA_Sleep				(00,00,07,00,"NW_CITY_BARRACK01_BED_06");
};
