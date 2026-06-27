
instance Pal_223_Schiffswache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Schiffswache;
	guild 		= GIL_PAL;
	id 			= 223;
	voice 		= 4;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Beard4, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_223;
};

FUNC VOID Rtn_Start_223 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"SHIP_DECK_37");
    TA_Stand_Guarding	(23,00,08,00,"SHIP_DECK_37");
};

FUNC VOID Rtn_ShipFree_223 ()
{
	TA_Stand_WP	(08,00,23,00,"NW_CITY_UPTOWNPARADE_12");
    TA_Stand_WP	(23,00,08,00,"NW_CITY_UPTOWNPARADE_12");	
};
