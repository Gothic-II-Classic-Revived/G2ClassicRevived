

instance BAU_932_Balthasar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Balthasar";
	guild 		= GIL_BAU;
	id 			= 932;
	voice 		= 5;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_BAUOUT_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 5);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SICKLE_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_P_NormalBart01, BodyTex_P, ITAR_Bau_L);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_932;
};

FUNC VOID Rtn_Start_932 ()
{	
	TA_Stand_Eating		(08,00,22,00,"NW_FARM4_BALTHASAR");
    TA_Stand_Eating			(22,00,08,00,"NW_FARM4_BALTHASAR");
};

FUNC VOID Rtn_FleeDMT_932 ()
{	
	TA_Stand_Eating		(08,00,22,00,"NW_FLEEDMT_KAP3");
    TA_Stand_Eating		(22,00,08,00,"NW_FLEEDMT_KAP3");
};

FUNC VOID Rtn_BengarsWeide_932 ()
{	
	TA_Stand_Eating			(08,00,22,00,	"NW_FARM3_BALTHASAR"); 
    TA_Stand_Eating			(22,00,08,00,	"NW_FARM3_BALTHASAR");
};

FUNC VOID Rtn_Test_932 ()
{	
	TA_Stand_Eating			(08,00,22,00,	"FARM3"); 
    TA_Stand_Eating			(22,00,08,00,	"FARM3");
};
