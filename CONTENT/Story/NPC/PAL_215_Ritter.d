
instance Pal_215_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 215;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_L_Hum_Bald4, Body_L_Hum_Naked, Body_Latino, Teeth_Normal, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_215;
};

FUNC VOID Rtn_Start_215 ()
{
	TA_Practice_Sword	(07,08,19,01,"NW_CITY_TRAIN_01");
	TA_Smalltalk		(19,01,23,07,"NW_CITY_UPTOWN_HUT_03_01");
    TA_Sleep			(23,07,07,08,"NW_CITY_LEOMAR_BED_03");	
};
