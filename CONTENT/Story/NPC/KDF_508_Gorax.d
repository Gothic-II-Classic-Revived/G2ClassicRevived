INSTANCE KDF_508_Gorax (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gorax";
	guild 		= GIL_KDF;
	id 			= 508;
	voice 		= 14;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivars ------
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 200);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 6);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_03);
	
	// ------ Inventory ------
	//Händler!
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Gorax, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_KDF_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_508;
};

FUNC VOID Rtn_Start_508 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"NW_MONASTERY_WINEMAKER_01");
	TA_Sleep				(23,00,08,00,"NW_MONASTERY_MAGE02_BED_01");
};
