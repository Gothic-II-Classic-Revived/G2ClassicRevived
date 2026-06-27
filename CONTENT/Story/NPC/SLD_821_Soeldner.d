
instance SLD_821_Soeldner (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_SOELDNER; 
	guild 		= GIL_SLD;
	id 			= 821;
	voice 		= 6;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 40);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_04);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Hum_Normal11, Body_W_Hum_Naked, Body_White, Teeth_Yellow, ITAR_SLD_M);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_821;
};

FUNC VOID Rtn_Start_821 ()
{
	TA_Smalltalk		(07,30,23,30,"NW_BIGFARM_PATH_04_1A");
	TA_Sleep			(23,30,07,30,"NW_BIGFARM_MERCHUT_SLEEP_01");
};

func void Rtn_RodWeg_821 ()
{
	TA_Smalltalk	(07,55,22,55,"NW_BIGFARM_BIGTREE_SMALLTALK_STABLE_01");
    TA_Sleep		(22,55,07,55,"NW_BIGFARM_MERCHUT_SLEEP_01");
};
