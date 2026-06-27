

instance DJG_701_Bullco (Npc_Default)
{
	// ------ NSC ------
	name 		= "Bullco";
	guild 		= GIL_DJG;
	id 			= 701;
	voice 		= 6;
	flags       = 0;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ITMW_REVIVED_1H_SWORD_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem	(self, ITHE_REVIVED_DJG_M);

	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Bullco, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_DJG_L);		
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_701;
};

FUNC VOID Rtn_Start_701 ()
{
	TA_Sit_Chair						(08,00,23,00,"NC_TAVERN_SIT");
    TA_Sit_Chair						(23,00,08,00,"NC_TAVERN_SIT");		
};

FUNC VOID Rtn_IceWait1_701 ()
{
	TA_Stand_ArmsCrossed					(00,00,	23,00,"OW_PATH_075_GUARD4");    
	TA_Stand_ArmsCrossed					(23,00,	24,00,"OW_PATH_075_GUARD4");     
};

FUNC VOID Rtn_IceWait2_701 ()
{
	TA_Stand_ArmsCrossed					(00,00,	23,00,"OW_DJG_ICEREGION_WAIT2_02");    
	TA_Stand_ArmsCrossed					(23,00,	24,00,"OW_DJG_ICEREGION_WAIT2_02");     
};

FUNC VOID Rtn_IceDragon_701 ()
{
	TA_Stand_ArmsCrossed					(00,00,	23,00,"OW_ICEDRAGON_02");    
	TA_Stand_ArmsCrossed					(23,00,	24,00,"OW_ICEDRAGON_02");     
};

FUNC VOID Rtn_DJGVorposten_701 ()
{
	TA_Sit_Campfire		(00,00,	23,00,"OW_DJG_VORPOSTEN_02");    
	TA_Sit_Campfire		(23,00,	24,00,"OW_DJG_VORPOSTEN_02");     
};

FUNC VOID Rtn_Follow_701 ()
{
	TA_Follow_Player 		(00,00,	23,00,"OW_PATH_07_21_GUARD_MIDDLE");    
	TA_Follow_Player		(23,00,	24,00,"OW_PATH_07_21_GUARD_MIDDLE");     
};