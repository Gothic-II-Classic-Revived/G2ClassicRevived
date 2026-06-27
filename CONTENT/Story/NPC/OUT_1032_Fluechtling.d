
instance OUT_1032_FLUECHTLING (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Fluechtling; 
	guild 		= GIL_OUT;
	id 			= 1032;
	voice 		= 6;
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

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal33, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_Leather_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1032;
};

FUNC VOID Rtn_Start_1032 ()
{	
   TA_Sleep			(08,00,23,00,"NW_XARDAS_BANDITS_LEFT");
   TA_Sleep			(23,00,08,00,"NW_XARDAS_BANDITS_LEFT");
};
