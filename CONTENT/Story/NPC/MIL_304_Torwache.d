
instance Mil_304_Torwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_TORWACHE; 	
	guild 		= GIL_MIL;
	id 			= 304;
	voice 		= 8;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_06);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal7, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_GRD_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_304;
};

FUNC VOID Rtn_Start_304 ()
{	
	TA_Stand_WP			(08,00,22,00,"NW_CITY_UPTOWN_GUARD_01");
    TA_Stand_WP			(22,00,08,00,"NW_CITY_UPTOWN_GUARD_01");
};
