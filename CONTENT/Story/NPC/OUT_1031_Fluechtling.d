

instance OUT_1031_FLUECHTLING (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Fluechtling; 
	guild 		= GIL_OUT;
	id 			= 1031;
	voice 		= 7;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;
		
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG ;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ITMW_REVIVED_1H_SWORD_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 	(self, ItWr_MorgahardTip, 1 );
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Hum_Bald2, Body_B_Hum_Naked, Body_Black, Teeth_Yellow, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1031;
};

FUNC VOID Rtn_Start_1031 ()
{	
	TA_Sit_Chair		(08,00,23,00,"NW_XARDAS_BANDITS_LEFT");
    TA_Sit_Chair		(23,00,08,00,"NW_XARDAS_BANDITS_LEFT");
};
