
instance SLD_806_Sylvio (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sylvio";
	guild 		= GIL_SLD;
	id 			= 806;
	voice 		= 9;
	flags       = NPC_FLAG_IMMORTAL;	//Joly:Drachenjägeranführer. Muß leben																//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																		//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_BOW_LONG_05);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_Scar, BodyTex_N, ITAR_SLD_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_806;
};

FUNC VOID Rtn_Start_806 ()
{
	TA_Sit_Chair				(08,00,20,00,"NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee						(20,00,20,15,"NW_BIGFARM_TREE_PISS");
    TA_Sit_Chair				(20,15,08,00,"NW_BIGFARM_KITCHEN_SYLVIO");		
};



FUNC VOID Rtn_Tot_806 ()
{
	TA_Sleep		(08,00,23,00,"TOT");
    TA_Sleep		(23,00,08,00,"TOT");		
};
