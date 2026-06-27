
instance Pal_214_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 214;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_L_Hum_Bald3, Body_L_Hum_Naked, Body_Latino, Teeth_Yellow, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_214;
};

FUNC VOID Rtn_Start_214 ()
{
	TA_Smalltalk		(07,05,19,05,"NW_CITY_UPTOWN_PATH_05");
    TA_Read_Bookstand 	(19,05,23,00,"NW_CITY_UPTOWN_HUT_03_03");
    TA_Sleep			(23,00,07,05,"NW_CITY_LEOMAR_BED_05");	
};
