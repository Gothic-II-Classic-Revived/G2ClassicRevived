instance BDT_1015_Bandit_L (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_BANDIT; 
	guild 		= GIL_BDT;
	id 			= 1015;
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
	EquipItem			(self, ITMW_REVIVED_1H_DAGGER_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ItWr_BanditLetter_MIS,1);
		
	// ------ visuals ------									
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Hum_Normal1, Body_B_Hum_Naked, Body_Black, Teeth_Broken, ITAR_REVIVED_BDT_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA ------
	daily_routine 	= RTN_Start_1015;
};

FUNC VOID Rtn_Start_1015 ()
{
	TA_Stand_ArmsCrossed (00,00,12,00,"NW_XARDAS_BANDITS_RIGHT");  
	TA_Stand_ArmsCrossed (12,00,00,00,"NW_XARDAS_BANDITS_RIGHT");
}; 

