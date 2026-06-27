INSTANCE KDF_503_Karras (Npc_Default)
{
	// ------ NSC ------
	name 		= "Karras";
	guild 		= GIL_KDF;
	id 			= 503;
	voice 		= 10;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_L_Karras, Body_L_Hum_Naked, Body_Latino, Teeth_Normal, ITAR_REVIVED_KDF_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_503;
};

FUNC VOID Rtn_Start_503 ()
{	
	TA_Read_Bookstand 		(08,00,23,00,"NW_MONASTERY_RUNEMAKER_02");
	TA_Read_Bookstand 		(08,00,23,00,"NW_MONASTERY_RUNEMAKER_02");
};
