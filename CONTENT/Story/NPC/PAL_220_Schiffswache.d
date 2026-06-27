
instance Pal_220_Schiffswache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Schiffswache;
	guild 		= GIL_PAL;
	id 			= 220;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Beard1, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_220;
};

FUNC VOID Rtn_Start_220 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"SHIP_DECK_05");
    TA_Stand_Guarding	(23,00,08,00,"SHIP_DECK_05");
};

FUNC VOID Rtn_ShipFree_220 ()
{
	TA_Stand_WP	(08,00,23,00,"NW_CITY_UPTOWNPARADE_01");
    TA_Stand_WP	(23,00,08,00,"NW_CITY_UPTOWNPARADE_01");	
};

