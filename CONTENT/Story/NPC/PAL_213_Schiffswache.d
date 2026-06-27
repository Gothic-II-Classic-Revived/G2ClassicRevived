 
instance Pal_213_Schiffswache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Schiffswache;
	guild 		= GIL_PAL;
	id 			= 213;
	voice 		= 1;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_NAILED;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Hum_Normal3, Body_B_Hum_Naked, Body_Black, Teeth_Yellow, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_213;
};

FUNC VOID Rtn_Start_213 ()
{
	TA_Guard_Passage	(08,00,23,00,"NW_CITY_SHIP_GUARD_01");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_SHIP_GUARD_01");	
};

FUNC VOID Rtn_ShipFree_213 ()
{
	TA_Smalltalk	(08,00,23,00,"NW_CITY_PALCAMP_01");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_PALCAMP_01");	
};
