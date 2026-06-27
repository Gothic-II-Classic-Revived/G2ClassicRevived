INSTANCE KDF_500_Pyrokar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Pyrokar";
	guild 		= GIL_KDF;
	id 			= 500;
	voice 		= 11;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL																		
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
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Pyrokar, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_KDF_H);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_500;
};

FUNC VOID Rtn_Start_500 ()
{	
	TA_Sit_Throne	(08,00,23,00,"NW_MONASTERY_THRONE_01");
    TA_Sit_Throne	(23,00,08,00,"NW_MONASTERY_THRONE_01");
};

FUNC VOID Rtn_RitualInnosEyeRepair_500 ()
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"NW_TROLLAREA_RITUAL_02");
    TA_Stand_ArmsCrossed	(23,00,08,00,"NW_TROLLAREA_RITUAL_02");
};


FUNC VOID Rtn_RitualInnosEye_500 ()
{	
	TA_Circle	(08,00,23,00,"NW_TROLLAREA_RITUAL_02");
    TA_Circle	(23,00,08,00,"NW_TROLLAREA_RITUAL_02");
};
