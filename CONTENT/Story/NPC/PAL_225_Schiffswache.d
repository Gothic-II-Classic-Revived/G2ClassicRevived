
instance Pal_225_Schiffswache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Schiffswache;
	guild 		= GIL_PAL;
	id 			= 225;
	voice 		= 12;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Beard5, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_225;
};

FUNC VOID Rtn_Start_225 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"SHIP_DECK_13");
    TA_Stand_Guarding	(23,00,08,00,"SHIP_DECK_13");
};

FUNC VOID Rtn_ShipFree_225 ()
{
	TA_Stand_WP	(08,00,23,00,"NW_CITY_UPTOWNPARADE_06");
    TA_Stand_WP	(23,00,08,00,"NW_CITY_UPTOWNPARADE_06");	
};
