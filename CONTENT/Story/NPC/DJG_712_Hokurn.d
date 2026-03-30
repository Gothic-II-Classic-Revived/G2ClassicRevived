
instance DJG_712_Hokurn (Npc_Default)
{
	// ------ NSC ------
	name 		= "Hokurn"; 
	guild 		= GIL_DJG;
	id 			= 712;
	voice 		= 1;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 35);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_CROSSBOW_01);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Normal_Sharky, BodyTex_B, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_712;
};

FUNC VOID Rtn_PreStart_712 ()
{
	TA_Smalltalk				(08,00,23,00,"OW_PATH_DJG_005");
    TA_Smalltalk				(23,00,08,00,"OW_PATH_DJG_005");		
};

FUNC VOID Rtn_StartPass_712()
{
	TA_Smalltalk						(08,00,23,00,"OW_PATH_ORETRAIL_2_DJGCAMP_03");
    TA_Smalltalk						(23,00,08,00,"OW_PATH_ORETRAIL_2_DJGCAMP_03");
};

FUNC VOID Rtn_Start_712 ()
{
	TA_Smalltalk 						(08,00,23,00,"PATH_AROUND_HILL04");
    TA_Smalltalk						(23,00,08,00,"PATH_AROUND_HILL04");		
};