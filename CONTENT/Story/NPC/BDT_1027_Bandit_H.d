instance BDT_1027_Bandit_H (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1027;
	voice 		= 1;
	flags       = 0;									
	npctype		= NPCTYPE_AMBIENT;
	
	//--------Aivars-----------------------
	aivar[AIV_EnemyOverride] = TRUE;  

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------							
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_02);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------									
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_W_Hum_Normal11, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
