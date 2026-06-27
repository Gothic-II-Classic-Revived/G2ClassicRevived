
instance PAL_259_Wache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Wache;
	guild 		= GIL_PAL;
	id 			= 259;
	voice 		= 4;
	flags       = 0;																
	npctype		= NPCTYPE_OCAMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_P_Hum_Beard1, Body_P_Hum_Naked, Body_Pale, Teeth_Rotten, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_259;
};

FUNC VOID Rtn_Start_259 ()
{	
	TA_Stand_Guarding		(08,00,22,00,"OCC_RIGHT_TOWER_GANGWAY_GUARD");
    TA_Stand_Guarding		(22,00,08,00,"OCC_RIGHT_TOWER_GANGWAY_GUARD");
};

FUNC VOID Rtn_KAP5_259 ()
{	
	TA_Stand_Guarding			(08,00,18,00,"OCC_TOWER_PLATFORM_GUARD_LEFT");
    TA_Stand_Guarding			(18,00,23,00,"OCC_TOWER_PLATFORM_GUARD_RIGHT");
    TA_Stand_Guarding			(23,00,08,00,"OCC_TOWER_PLATFORM_GUARD_FRONT");
};