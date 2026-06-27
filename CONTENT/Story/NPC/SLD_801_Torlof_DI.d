instance SLD_801_Torlof_DI (Npc_Default)
{
	// ------ NSC ------
	name 		= "Torlof";
	guild 		= GIL_SLD;
	id 			= 8010;
	voice 		= 1;
	flags       = NPC_FLAG_IMMORTAL;	//Joly:letzter NSC, der stehen bleiben muß -> Letzter Dialog!!				//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;

	// ------ aivar ------
	aivar[AIV_PARTYMEMBER] = TRUE;		
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem	(self, ITMW_REVIVED_2H_AXE_TORLOF); 										
	EquipItem	(self, ITRW_REVIVED_BOW_LONG_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_W_Torlof, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_SLD_H);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_8010;
};

FUNC VOID Rtn_Start_8010 ()
{
	TA_Stand_WP			(08,00,23,00,"SHIP_CREW_CAPTAIN");
	TA_Sleep			(23,00,08,00,"SHIP_IN_06");
};

FUNC VOID Rtn_OrkSturmDI_8010 ()
{
	TA_Stand_WP			(08,00,23,00,"DI_SHIP_03");
	TA_Stand_WP			(23,00,08,00,"DI_SHIP_03");
};

