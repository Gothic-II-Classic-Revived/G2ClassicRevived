INSTANCE KDF_510_Hyglas (Npc_Default)
{
	// ------ NSC ------
	name 		= "Hyglas";
	guild 		= GIL_KDF;
	id 			= 510;
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
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_GOOD_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_W_Hyglas, Body_W_Hum_Naked, Body_White, Teeth_Gold, ITAR_REVIVED_KDF_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_510;
};

FUNC VOID Rtn_Start_510 ()
{	
	TA_Read_Bookstand	(08,00,23,00,"NW_MONASTERY_RUNEMAKER_08");
    TA_Read_Bookstand	(23,00,08,00,"NW_MONASTERY_RUNEMAKER_08");
};
