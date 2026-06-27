INSTANCE KDF_501_Serpentes (Npc_Default)
{
	// ------ NSC ------
	name 		= "Serpentes";
	guild 		= GIL_KDF;
	id 			= 501;
	voice 		= 10;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Aivars ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_PSIONIC", Face_W_Serpentes, Body_W_Hum_Naked, Body_White, Teeth_Normal, ITAR_REVIVED_KDF_H);		
	Mdl_SetModelFatness	(self, -2);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_501;
};

FUNC VOID Rtn_Start_501 ()
{	
	TA_Sit_Throne	(08,00,23,00,"NW_MONASTERY_THRONE_02");
    TA_Sit_Throne	(23,00,08,00,"NW_MONASTERY_THRONE_02");
};
