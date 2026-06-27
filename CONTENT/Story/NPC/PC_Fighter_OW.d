INSTANCE PC_Fighter_OW (Npc_Default)	
{
	// ------ NSC ------
	name 		= "Gorn";
	guild 		= GIL_SLD;
	id 			= 3;
	voice 		= 12;
	flags       = NPC_FLAG_IMMORTAL;	//Joly:  nicht IMMORTAL																	
	npctype		= NPCTYPE_FRIEND;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 100);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Fighter", Face_B_Gorn, Body_B_Hum_Naked, Body_Black, Teeth_Broken, ITAR_REVIVED_SLD_M);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_3;
};

// sitzt in einer Zelle in der Burg im Minental
//-------------------------------------
FUNC VOID Rtn_Start_3()
{	
	TA_Sit_Campfire			(08,00,23,00,"OCC_CELLAR_BACK_RIGHT_CELL_004");
    TA_Sit_Campfire			(23,00,08,00,"OCC_CELLAR_BACK_RIGHT_CELL_004");
};

FUNC VOID Rtn_Free_3 ()
{	
	TA_Smalltalk			(08,00,23,00,"OCC_CHAPEL_LEFT_ROOM");
	TA_Sleep				(23,00,08,00,"OCC_CHAPEL_LEFT_ROOM");
};
FUNC VOID Rtn_Tot_3 ()
{	
	TA_Sit_Campfire			(08,00,23,00,"TOT");
    TA_Sit_Campfire			(23,00,08,00,"TOT");
};
