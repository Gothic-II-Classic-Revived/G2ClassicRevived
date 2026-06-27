
instance OUT_1033_FLUECHTLING (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Fluechtling; 
	guild 		= GIL_OUT;
	id 			= 1033;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	//aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG ;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_01); 
	CreateInvItems 	(self, ItWr_MorgahardTip, 1 );
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal34, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1033;
};

FUNC VOID Rtn_Start_1033 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"NW_TAVERNE_IN_05"); 
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_TAVERNE_IN_05");
};
