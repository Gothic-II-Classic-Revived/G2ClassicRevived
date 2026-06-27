instance KDW_439_Vatras_DI (Npc_Default)
{
	// ------ NSC ------
	name 		= "Vatras"; 
	guild 		= GIL_KDW;
	id 			= 4390;
	voice 		= 5;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: wird gebraucht im Kapitel 3 Hauptstory und aufs Schiff Kapitel 5	!!!!
	npctype		= NPCTYPE_FRIEND;

	// ------ aivar ------
	aivar[AIV_PARTYMEMBER] = TRUE;		
	aivar[AIV_ToughGuy] 			= TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IgnoresFakeGuild] = TRUE;
	aivar[AIV_IgnoresArmor] 	= TRUE;
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 200);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 6);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------	
	EquipItem	(self, ITMW_REVIVED_2H_MAGESTAFF_GOOD_02);														
	
	// ------ Inventory ------
		
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Psionic", Face_B_Vatras, Body_B_Hum_Naked, Body_Black, Teeth_Yellow, ITAR_REVIVED_KDW_M);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4390;
};

FUNC VOID Rtn_Start_4390	()
{	
	TA_Read_Bookstand  	(08,00,23,00,"SHIP_IN_22");
	TA_Sleep			(23,00,08,00,"SHIP_IN_04");
};
