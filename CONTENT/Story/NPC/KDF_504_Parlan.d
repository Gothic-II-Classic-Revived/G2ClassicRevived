INSTANCE KDF_504_Parlan (Npc_Default)
{
	// ------ NSC ------
	name 		= "Parlan";
	guild 		= GIL_KDF;
	id 			= 504;
	voice 		= 5;
	flags       = NPC_FLAG_IMMORTAL;		//Joly:  IMMORTAL wegen Petzmaster
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
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_03);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 		(self, ItKe_KlosterBibliothek,1);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Parlan, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_KDF_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_504;
};

FUNC VOID Rtn_Start_504 ()
{	
	TA_Stand_ArmsCrossed		(08,00,23,00,"NW_MONASTERY_PLACE_03");
    TA_Sleep					(23,00,08,00,"NW_MONASTERY_MAGE01_BED_02");
};
