
instance SLD_810_Dar (Npc_Default)
{
	// ------ NSC ------
	name 		= "Dar";
	guild 		= GIL_SLD;
	id 			= 810;
	voice 		= 3;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivars -------
	aivar[AIV_ToughGuyNewsOverride] = TRUE; //wegen Stimme!
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);
	EquipItem			(self, ITRW_REVIVED_BOW_SMALL_03);	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	CreateInvItems (self, ITMI_REVIVED_JOINT_REGULAR, 10);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_W_Dar, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_REVIVED_SLD_L_02);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ TA anmelden ------
	daily_routine 		= Rtn_PreStart_810;
};

FUNC VOID Rtn_PreStart_810 ()
{
	TA_Smoke_Joint			(08,00,22,00,"NW_BIGFARM_KITCHEN_DAR");
 	TA_Smoke_Joint			(22,00,08,00,"NW_BIGFARM_KITCHEN_DAR");		
};

FUNC VOID Rtn_Start_810 ()
{
	TA_Smoke_Joint			(08,00,22,00,"NW_BIGFARM_KITCHEN_DAR");
    TA_Sit_Chair			(22,00,08,00,"NW_BIGFARM_HOUSE_12");			
};
