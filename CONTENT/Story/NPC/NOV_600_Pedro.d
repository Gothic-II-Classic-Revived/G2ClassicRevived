INSTANCE NOV_600_Pedro (Npc_Default) 
{
	// ------ NSC ------
	name 		= "Pedro";
	guild 		= GIL_NOV;
	id 			= 600;
	voice 		= 9;
	flags       = NPC_FLAG_IMMORTAL;	//Joly: HAUPTSTORY: NOV_600_Pedro ist erst noch immortel -> Pedro klaut das Auge Innos im Kapitel 3, ist später Knacki auf der Dracheninsel																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesForLevel(self, 20);		
	Npc_SetTalentSkill (self, NPC_TALENT_MAGE, 1);
	
	// ------ Aivars ------
	aivar[AIV_NewsOverride] 	= TRUE; //damit du noch ins Kloster kommst, wenn du ihn geschlagen hast
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ITMW_REVIVED_2H_STAFF_NOVICE_01); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
			
	// ------ visuals ------																			
	B_SetNpcFullVisual (self, MALE, "Hum_Head_PSIONIC", Face_L_Pedro, Body_L_Hum_Naked, Body_Latino, Teeth_Rotten, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_600;
};

FUNC VOID Rtn_Start_600 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_MONASTERY_MILTEN");
    TA_Guard_Passage 	(23,00,08,00,"NW_MONASTERY_MILTEN");
};


FUNC VOID Rtn_Tot_600 ()
{	
	TA_Stand_Guarding	(08,00,23,00,"TOT");
    TA_Stand_Guarding 	(23,00,08,00,"TOT");
};
