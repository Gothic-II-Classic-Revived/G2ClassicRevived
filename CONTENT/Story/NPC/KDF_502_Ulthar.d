INSTANCE KDF_502_Ulthar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Ulthar";
	guild 		= GIL_KDF;
	id 			= 502;
	voice 		= 5;
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
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_L_Ulthar, Body_L_Hum_Naked, Body_Latino, Teeth_Rotten, ITAR_REVIVED_KDF_H);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_502;
};

FUNC VOID Rtn_Start_502 ()
{	
	TA_Sit_Throne	(08,00,23,00,"NW_MONASTERY_THRONE_03");
    TA_Sit_Throne	(23,00,08,00,"NW_MONASTERY_THRONE_03");
};
