 
instance Pal_212_Schiffswache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Schiffswache;
	guild 		= GIL_PAL;
	id 			= 212;
	voice 		= 8;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_L_Hum_Bald2, Body_L_Hum_Naked, Body_Latino, Teeth_Broken, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_212;
};

FUNC VOID Rtn_Start_212 ()
{
	TA_Stand_Guarding	(08,00,23,00,"NW_CITY_SHIP_GUARD_02");
    TA_Stand_Guarding	(23,00,08,00,"NW_CITY_SHIP_GUARD_02");	
};

FUNC VOID Rtn_ShipFree_212 ()
{
	TA_Smalltalk	(08,00,23,00,"NW_CITY_PALCAMP_01");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_PALCAMP_01");	
};
