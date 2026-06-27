INSTANCE KDF_509_Isgaroth (Npc_Default)
{
	// ------ NSC ------
	name 		= "Isgaroth";
	guild 		= GIL_KDF;
	id 			= 509;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Isgaroth, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_KDF_L);			
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_509;
};

FUNC VOID Rtn_Start_509 ()
{	
	TA_Pray_Innos_FP		(06,00,21,00,"NW_MONASTERY_SHRINE_04");
    TA_Sit_Bench 		 	(21,00,06,00,"NW_MONASTERY_SHRINE_05");
};
