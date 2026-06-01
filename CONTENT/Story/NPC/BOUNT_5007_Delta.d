
instance BOUNT_5007_Delta (Npc_Default)
{
	// ------ NSC ------
	name 		= "Delta 'The Warlock'"; 
	guild 		= GIL_BDT;
	id 			= 5007;
	voice 		= 8;
	flags       = 0;
	npctype		= NPCTYPE_AMBIENT;
	
	aivar[AIV_MM_REAL_ID] = GIL_BOUNT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 3);	

	// ------ Kampf-Taktik ------
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------
	EquipItem			(self, ITMW_REVIVED_2H_STAFF_03);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems 		(self, ItSc_FullHeal, 5);
	CreateInvItems 		(self, ItSc_InstantFireball, 5);
	CreateInvItems 		(self, ItSc_Firestorm, 5);
	CreateInvItems 		(self, ItSc_Firebolt, 5);
	CreateInvItems 		(self, ItSc_Firerain, 1);
	CreateInvItems 		(self, ItSc_SumSkel, 3);

	// ------ visuals ------
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_P_Tough_Rodriguez, BodyTex_P, ITAR_REVIVED_SHM_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA ------
	start_aistate = ZS_Bandit;
};