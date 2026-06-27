
instance Mil_332_Stadtwache (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Stadtwache;	
	guild 		= GIL_MIL;
	id 			= 332;
	voice 		= 4;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Hum_Normal20, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_GRD_S);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_332;
};

FUNC VOID Rtn_Start_332 ()
{	
	TA_Stand_WP		(08,00,22,00,"NW_CITY_ENTRANCE_BACK_GUARD_01");
    TA_Stand_WP		(22,00,08,00,"NW_CITY_ENTRANCE_BACK_GUARD_01");
};
