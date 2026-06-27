
INSTANCE NOV_600_Pedro_DI (Npc_Default)
{
	// ------ NSC ------
	name 		= "Pedro";
	guild 		= GIL_NONE;
	id 			= 6000;
	voice 		= 9;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;

	aivar[AIV_ToughGuy] 		= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;

	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	//EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_PSIONIC", Face_L_Pedro, Body_L_Hum_Naked, Body_Latino, Teeth_Normal, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_6000;
};

FUNC VOID Rtn_Start_6000 ()
{	
	TA_Sit_Bench		(08,00,23,00,"DI_ORKAREA_PEDRO");	 
    TA_Sit_Bench 		(23,00,08,00,"DI_ORKAREA_PEDRO");
};

FUNC VOID Rtn_Ship_6000 ()
{	
	TA_Sit_Bench	(08,00,23,00,"SHIP_DECK_05");	 
    TA_Sit_Bench 	(23,00,08,00,"SHIP_DECK_05");
};

FUNC VOID Rtn_FollowShip_6000 ()
{	
	TA_Follow_Player	(08,00,23,00,"SHIP");	 
    TA_Follow_Player 	(23,00,08,00,"SHIP");
};

FUNC VOID Rtn_SleepShip_6000 ()
{	
	TA_Sleep	(08,00,23,00,"SHIP_IN_06");	 
    TA_Sleep 	(23,00,08,00,"SHIP_IN_06");
};



