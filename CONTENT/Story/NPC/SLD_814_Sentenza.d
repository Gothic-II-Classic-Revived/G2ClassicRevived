

instance SLD_814_Sentenza (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sentenza";
	guild 		= GIL_SLD;
	id 			= 814;
	voice 		= 9;
	flags       = 0;							//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivars ------	
	aivar[AIV_MM_FollowTime] = 60;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 60);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);

	// ------ Inventory ------
	CreateInvItems (self, itfo_apple, 1); //KEIN Ambient-Inv
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Sentenza, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_SLD_H);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_814;
};

FUNC VOID Rtn_Start_814 ()
{
	TA_Stand_Eating 	(08,00,22,00,"NW_BIGFARM_ALLEE_01");
    TA_Stand_Eating		(22,00,08,00,"NW_BIGFARM_ALLEE_01");		
};

func void Rtn_Follow_814 ()
{
	TA_Follow_Player	(08,00,22,00,"NW_BIGFARM_VORPOSTEN1_02");
	TA_Follow_Player	(22,00,08,00,"NW_BIGFARM_VORPOSTEN1_02");
};
