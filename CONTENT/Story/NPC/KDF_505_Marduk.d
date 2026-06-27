INSTANCE KDF_505_Marduk (Npc_Default)
{
	// ------ NSC ------
	name 		= "Marduk";
	guild 		= GIL_KDF;
	id 			= 505;
	voice 		= 5;
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
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_GOOD_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Marduk, Body_P_Hum_Naked, Body_Pale, Teeth_Broken, ITAR_REVIVED_KDF_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_505;
};

FUNC VOID Rtn_Start_505 ()
{	
	TA_Stand_ArmsCrossed		(08,00,23,00,"NW_MONASTERY_CORRIDOR_05");
    TA_Sleep					(23,00,08,00,"NW_MONASTERY_MAGE01_BED_01");
};
