instance BDT_1010_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1010;
	voice 		= 13;
	flags       = 0;									
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------							
	EquipItem			(self, ITMW_REVIVED_1H_CLUB_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------									
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fatbald", Face_W_Hum_Beard22, Body_W_Hum_Normal1, Body_White, Teeth_Normal, ITAR_REVIVED_BDT_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};
