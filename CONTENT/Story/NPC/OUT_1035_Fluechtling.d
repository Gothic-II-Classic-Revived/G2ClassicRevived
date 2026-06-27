
instance OUT_1035_FLUECHTLING (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Fluechtling; 
	guild 		= GIL_OUT;
	id 			= 1035;
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
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_B_Hum_Bald3, Body_B_Hum_Naked, Body_Black, Teeth_Normal, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1035;
};

FUNC VOID Rtn_Start_1035 ()
{	
	TA_Smalltalk	(08,00,23,00,"NW_BIGFARM_HOUSE_OUT_04"); 
    TA_Smalltalk	(23,00,08,00,"NW_BIGFARM_HOUSE_OUT_04");
};
