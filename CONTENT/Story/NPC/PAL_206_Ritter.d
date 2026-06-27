
instance Pal_206_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 206;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_B_Hum_Normal2, Body_B_Hum_Naked, Body_Black, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_206;
};

FUNC VOID Rtn_Start_206 ()
{
	TA_Stand_ArmsCrossed	(07,14,19,00,"NW_CITY_UPTOWN_PATH_06_B");
	TA_Smalltalk			(19,00,23,01,"NW_CITY_UPTOWN_HUT_03_05");
	TA_Sleep				(23,01,07,14,"NW_CITY_LEOMAR_BED_01");	
};
