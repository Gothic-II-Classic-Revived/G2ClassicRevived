instance BDT_1014_BRAGO (Npc_Default)
{
	// ------ NSC ------
	name 		= "Brago"; 
	guild 		= GIL_BDT;
	id 			= 1014;
	voice 		= 6;
	flags       = 0;									
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_EnemyOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 15);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------							
	EquipItem			(self, ITMW_REVIVED_1H_NAILMACE_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItKe_Bandit, 1);
		
	// ------ visuals ------									
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Psionic", Face_W_Brago, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_REVIVED_BDT_H);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine 	= RTN_Start_1014;
};

FUNC VOID Rtn_Start_1014 ()
{
	TA_Stand_ArmsCrossed (00,00,12,00,"NW_XARDAS_BANDITS_LEFT");  
	TA_Stand_ArmsCrossed (12,00,00,00,"NW_XARDAS_BANDITS_LEFT");
}; 
