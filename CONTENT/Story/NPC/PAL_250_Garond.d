
instance PAL_250_Garond (Npc_Default)
{
	// ------ NSC ------
	name 		= "Garond";
	guild 		= GIL_PAL;
	id 			= 250;
	voice 		= 10;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: NPC_FLAG_IMMORTAL																	
	npctype		= NPCTYPE_OCMAIN;
	
	// ------ AIVARS ------
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder]		= TRUE;
	aivar[AIV_IGNORE_Theft] 		= TRUE;
	aivar[AIV_IGNORE_Sheepkiller] 	= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 80);																

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ITMW_REVIVED_2H_SWORD_PALADIN_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_FatBald", Face_W_Garond, Body_W_Hum_Naked, Body_White, Teeth_Rotten, ITAR_REVIVED_PAL_H);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	
	// ------ TA anmelden ------
	daily_routine 	= Rtn_PreStart_250;
};
FUNC VOID Rtn_PreStart_250 ()
{	
	TA_Sit_Throne  (08,00,21,00,"OCC_BARONS_GREATHALL_THRONE");
    TA_Sit_Throne  (21,00,08,00,"OCC_BARONS_GREATHALL_THRONE");
};
FUNC VOID Rtn_Start_250 ()
{	
	TA_Sit_Throne 			(08,00,20,00,"OCC_BARONS_GREATHALL_THRONE");
	TA_Sit_Chair			(20,00,22,00,"OCC_BARONS_GREATHALL_LEFT_TABLE");
    TA_Sleep				(22,00,08,00,"OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_LEFT_BACK");
};
