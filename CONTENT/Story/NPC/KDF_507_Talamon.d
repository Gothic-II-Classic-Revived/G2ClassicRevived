INSTANCE KDF_507_Talamon (Npc_Default)
{
	// ------ NSC ------
	name 		= "Talamon";
	guild 		= GIL_KDF;
	id 			= 507;
	voice 		= 4;
	flags       = NPC_FLAG_IMMORTAL;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivars ------
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 200);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 6);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_BLADES_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_B_Talamon, Body_B_Hum_Naked, Body_Black, Teeth_Yellow, ITAR_REVIVED_KDF_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_507;
};

FUNC VOID Rtn_Start_507 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_MONASTERY_CELLAR_15");
    TA_Guard_Passage	(23,00,08,00,"NW_MONASTERY_CELLAR_15");
};
