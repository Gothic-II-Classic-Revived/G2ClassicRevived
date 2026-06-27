instance MIL_2000_Thorus (Npc_Default)
{
	// ------ NSC ------
	name 		= NAME_Stadtwache; //"Thorus";
	guild 		= GIL_MIL;
	id 			= 2000;
	voice 		= 7;
	flags       = NPC_FLAG_IMMORTAL;									//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;
	
	// ------ AIVARS ------
/* 	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE; */
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 70);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_THORUS);
	EquipItem	(self, ITHE_REVIVED_SPECTACLES_03); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	//CreateInvItems		(self, ItFo_Potion_Health_02, 	1);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Thorus, Body_B_Hum_Naked, Body_Black, Teeth_Yellow, ITAR_REVIVED_GRD_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_2000;
};

FUNC VOID Rtn_Start_2000 ()
{	
	TA_Stand_ArmsCrossed	(08,00,22,00,"NW_CITY_UPTOWN_PATH_22");
	TA_Stand_ArmsCrossed	(22,00,08,00,"NW_CITY_UPTOWN_PATH_22");
};

