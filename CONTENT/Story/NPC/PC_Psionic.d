INSTANCE PC_Psionic (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lester";
	guild 		= GIL_NONE;
	id 			= 4;
	voice 		= 13;
	flags       = NPC_FLAG_IMMORTAL;//Joly:  IMMORTAL																			
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 3);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------
	EquipItem (self,ITMW_REVIVED_1H_MACE_LESTER);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Bald", Face_P_Lester, Body_P_Hum_Tattoo, Body_Pale, Teeth_Yellow, ITAR_REVIVED_PSI_NOV);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4;
};

FUNC VOID Rtn_Start_4()
{	
	TA_Sit_Campfire	(08,00,23,00,"NW_XARDAS_TOWER_LESTER");
    TA_Sit_Campfire	(23,00,08,00,"NW_XARDAS_TOWER_LESTER");
};
FUNC VOID Rtn_Xardas_4()
{	
	TA_Sleep	(08,00,23,00,"NW_XARDAS_TOWER_IN1_31");
    TA_Sleep	(23,00,08,00,"NW_XARDAS_TOWER_IN1_31");
};

FUNC VOID Rtn_XardasLibrary_4()
{	
	TA_Read_Bookstand	(08,00,18,00,"NW_XARDAS_TOWER_IN1_02_001");
	TA_Potion_Alchemy	(18,00,22,00,"NW_XARDAS_TOWER_IN1_02_005");
    TA_Sleep			(22,00,08,00,"NW_XARDAS_TOWER_IN1_02_000");
};
FUNC VOID Rtn_XardasWeg_4()
{	
	TA_Stand_Guarding	(08,00,23,00,"NW_XARDAS_TOWER_VIEW_04");//Joly:nicht mehr verrücken
    TA_Stand_Guarding	(23,00,08,00,"NW_XARDAS_TOWER_VIEW_04");
};

FUNC VOID Rtn_XardasTowerClear_4()
{	
	TA_Sit_Chair		(08,00,23,00,"NW_XARDAS_TOWER_IN1_02_002");
    TA_Sit_Chair		(23,00,08,00,"NW_XARDAS_TOWER_IN1_02_002");
};

FUNC VOID Rtn_WaitForPlayer_4()//Übergang KAPITEL 2-3 schickt den Spieler zu Xardas 
{	
	TA_Stand_ArmsCrossed	(08,00,23,00,"LEVELCHANGE");   
    TA_Stand_ArmsCrossed	(23,00,08,00,"LEVELCHANGE");
};

FUNC VOID Rtn_WaitForShip_4()
{	
	TA_Smalltalk	(08,00,23,00,"NW_CITY_WAY_TO_SHIP_19");
    TA_Smalltalk	(23,00,08,00,"NW_CITY_WAY_TO_SHIP_19");
};

FUNC VOID Rtn_ShipOff_4()
{	
	TA_Sit_Chair		(08,00,23,00,"NW_XARDAS_TOWER_IN1_02_002");
    TA_Sit_Chair		(23,00,08,00,"NW_XARDAS_TOWER_IN1_02_002");
};

FUNC VOID Rtn_Ship_4()
{	
	TA_Smalltalk			(08,00,23,00,"SHIP_CREW_19");
	TA_Smalltalk			(23,00,08,00,"SHIP_CREW_19");
};
