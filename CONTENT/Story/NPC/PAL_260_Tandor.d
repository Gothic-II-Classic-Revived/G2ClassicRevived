
instance PAL_260_Tandor  (Npc_Default)
{
	// ------ NSC ------
	name 		= "Tandor";
	guild 		= GIL_PAL;
	id 			= 260;
	voice 		= 8;
	flags       = 0;																	
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);													
		
	// ------ Kampf-Taktik ------
	fight_tactic = FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_PALADIN_02);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_LIGHT_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_P_Tough_Rodriguez, BodyTex_P, ITAR_REVIVED_PAL_M);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_260;
};

FUNC VOID Rtn_Start_260 ()
{	
	TA_Stand_ArmsCrossed		(08,00,20,00,"OCC_STABLE_BACK_STORE");
    TA_Stand_ArmsCrossed		(20,00,22,00,"OCC_BARONS_GREATHALL_CENTER_MOVEMENT4");
	TA_Stand_Eating				(22,00,08,00,"OCC_STABLE_BACK_STORE");
};

FUNC VOID Rtn_PostenVerlassen_260 ()
{	
	TA_Practice_Sword		(08,00,23,00,"OCC_FIGHTTRAINING_003");
    TA_Stand_Drinking		(23,00,08,00,"OCC_STABLE_ENTRANCE_INSERT");
};