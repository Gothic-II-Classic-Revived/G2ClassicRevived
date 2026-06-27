
instance Pal_201_Ingmar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Ingmar";
	guild 		= GIL_PAL;
	id 			= 201;
	voice 		= 06;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 90);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
		
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_W_Ingmar, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_201;
};

FUNC VOID Rtn_Start_201 ()
{	
	TA_Stand_WP	(08,00,23,00,"NW_CITY_CITYHALL_WARROOM_02");
    TA_Stand_WP	(23,00,08,00,"NW_CITY_CITYHALL_WARROOM_02");
};
