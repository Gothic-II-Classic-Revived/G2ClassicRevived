
instance Pal_209_Paladin (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 209;
	voice 		= 4;
	flags       = 0;																
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_P_Hum_Normal5, Body_P_Hum_Naked, Body_Pale, Teeth_Normal, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_209;
};

FUNC VOID Rtn_Start_209 ()
{
	TA_Practice_Sword	(07,10,19,02,"NW_CITY_TRAIN_02");
	TA_Smalltalk		(19,02,23,06,"NW_CITY_UPTOWN_HUT_03_01_B");
    TA_Sleep			(23,06,07,10,"NW_CITY_LEOMAR_BED_04");	
};
