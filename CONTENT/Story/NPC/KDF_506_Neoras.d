INSTANCE KDF_506_Neoras (Npc_Default)
{
	// ------ NSC ------
	name 		= "Neoras";
	guild 		= GIL_KDF;
	id 			= 506;
	voice 		= 1;
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
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Neoras, Body_P_Hum_Naked, Body_Pale, Teeth_Rotten, ITAR_REVIVED_KDF_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_506;
};

FUNC VOID Rtn_Start_506 ()
{	
	TA_Potion_Alchemy	(08,00,23,00,"NW_MONASTERY_ALCHEMY_01");
	TA_Sleep			(23,00,08,00,"NW_MONASTERY_MAGE02_BED_02");
};
