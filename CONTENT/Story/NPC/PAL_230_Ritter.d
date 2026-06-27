
instance Pal_230_Ritter (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Ritter;
	guild 		= GIL_PAL;
	id 			= 230;
	voice 		= 4;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Hum_Beard7, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_230;
};

FUNC VOID Rtn_Start_230 ()
{
	TA_Practice_Sword	(08,00,23,00,"NW_CITY_PALCAMP_14");
    TA_Smalltalk		(23,00,08,00,"NW_CITY_PALCAMP_14");	
};


FUNC VOID Rtn_ShipFree_230 ()
{
	TA_Stand_WP	(08,00,23,00,"NW_CITY_UPTOWNPARADE_08");
    TA_Stand_WP	(23,00,08,00,"NW_CITY_UPTOWNPARADE_08");	
};
