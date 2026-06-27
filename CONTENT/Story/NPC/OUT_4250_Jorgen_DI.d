instance OUT_4250_JORGEN_DI (Npc_Default)
{
	// ------ NSC ------
	name 		= "Jorgen";
	guild 		= GIL_OUT;
	id 			= 42500;
	voice 		= 7;
	flags       = NPC_FLAG_IMMORTAL;	//Joly:letzter NSC, der stehen bleiben muß -> Letzter Dialog!!				//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ aivar ------
	aivar[AIV_PARTYMEMBER] = TRUE;	
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 30);														
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;	
	
	// ------ Equippte Waffen ------														
	EquipItem			(self, ITMW_REVIVED_1H_MACE_WAR_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Thief", Face_W_Jorgen, Body_W_Hum_Naked, Body_White, Teeth_Broken, ITAR_VLK_L);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_42500;
};

FUNC VOID Rtn_Start_42500 ()
{
	TA_Stand_WP			(08,00,23,00,"SHIP_CREW_CAPTAIN");
	TA_Sleep			(23,00,08,00,"SHIP_IN_06");
};

