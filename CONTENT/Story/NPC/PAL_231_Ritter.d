
instance Pal_231_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 231;
	voice 		= 12;
	flags       = 0;																	
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Beard8, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_231;
};

FUNC VOID Rtn_Start_231 ()
{
	TA_Practice_Sword	(08,00,23,00,"NW_CITY_PALCAMP_10");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_PALCAMP_14");	
};

FUNC VOID Rtn_ShipFree_231 ()
{
	TA_Stand_WP	(08,00,23,00,"NW_CITY_UPTOWNPARADE_11");
    TA_Stand_WP	(23,00,08,00,"NW_CITY_UPTOWNPARADE_11");	
};
