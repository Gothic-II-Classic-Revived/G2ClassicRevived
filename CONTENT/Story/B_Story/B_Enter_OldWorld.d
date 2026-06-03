// ***************************************************
//  			B_ENTER_OLDWORLD			
// ***************************************************


// B_ENTER_OLDWORLD_Kapitel_1
//****************************************************
	var int EnterOW_Kapitel1;
FUNC VOID B_ENTER_OLDWORLD_Kapitel_1 ()
{
	if (EnterOW_Kapitel1 == FALSE)
	{
		// ------ Gilden-Attitüden ändern ------
		
		// ------ Immortal-Flags löschen ------

		// ------ TAs ändern ------

		// ------ Respawn ------

		EnterOW_Kapitel1 = TRUE;
	};
};

// B_ENTER_OLDWORLD_Kapitel_2
//****************************************************
	var int EnterOW_Kapitel2;
var int ENTER_OLDWORLD_FIRSTTIME_TRIGGER_ONETIME;
FUNC VOID B_ENTER_OLDWORLD_Kapitel_2 ()
{
	if (EnterOW_Kapitel2 == FALSE)
	{
		// ------ Gilden-Attitüden ändern ------
		
		// ------ Immortal-Flags löschen ------

		// ------ TAs ändern ------
	
	// ------ Respawn ------
	if (ENTER_OLDWORLD_FIRSTTIME_TRIGGER_ONETIME == FALSE)
		{
			// ------ Tote NPCs (Leichen)------
			// Start 
			B_KillNpc (Bruder);
			B_KillNpc (VLK_Leiche3);
			//Weg von Mine2 zu Cavalorns Hütte
			B_KillNpc (VLK_Leiche2);
			B_KillNpc (STRF_Leiche1);
			B_KillNpc (STRF_Leiche2);
			B_KillNpc (STRF_Leiche3);
			//Mine 3
			B_KillNpc (STRF_Leiche4);
			B_KillNpc (STRF_Leiche5);
			B_KillNpc (STRF_Leiche6);
			B_KillNpc (STRF_Leiche7);
			B_KillNpc (STRF_Leiche8);
			
			B_KillNpc (PAL_Leiche1);
			B_KillNpc (PAL_Leiche2);
			B_KillNpc (PAL_Leiche3);
			
			B_KillNpc (VLK_Leiche1);
			
			//bei Diegos Versteck- seine Leibgarde
			B_KillNpc (PAL_Leiche4);
			B_KillNpc (PAL_Leiche5);
			
			//in der Wolfshöhle gemauerter Raum
			B_KillNpc (Olav);
	
			// ------ VOBTREES ------
				Ext_InsertVobTree("VOBTREE/OW_ABANDONEDMINE_MOLERATS.ZEN");
				Ext_InsertVobTree("VOBTREE/OW_BANDITS_ERPRESSER.ZEN");
				
			ENTER_OLDWORLD_FIRSTTIME_TRIGGER_ONETIME = TRUE;
		};
		
	if (TschuessBilgot == TRUE)
	{
		B_RemoveNpc (Bilgot);
	};	
	
	EnterOW_Kapitel2 = TRUE;
	};
};

// B_ENTER_OLDWORLD_Kapitel_3
//****************************************************
	var int EnterOW_Kapitel3;
FUNC VOID B_ENTER_OLDWORLD_Kapitel_3 ()
{
	if (EnterOW_Kapitel3 == FALSE)
	{
		// ------ Gilden-Attitüden ändern ------
		
		// ------ Immortal-Flags löschen ------
		
		// ------ Tote NSCs -----
		B_RemoveNpc		(PC_Mage_OW); //Milten ist in der NW!!!
		B_RemoveNpc		(PC_Fighter_OW); //Milten ist in der NW!!!
		B_RemoveNpc		(PC_Thief_OW); //Milten ist in der NW!!!
		
		// ------ TAs ändern ------

		// ------ SPAWN ------
		
		//------------------------ Snapper bei Mine2 ----------------------------------------
		
		Wld_InsertNpc		(Snapper,"SPAWN_OW_MOLERATS_WOOD_OM");
		Wld_InsertNpc		(Snapper,"SPAWN_OW_MOLERATS_WOOD_OM");
		Wld_InsertNpc		(Snapper,"SPAWN_OW_MOLERATS_WOOD_OM");
		
		//-------------------- Drakonier vor dem NC (von Kap2 hierher verschoben) --------------------
		
		Wld_InsertNpc	(Draconian,"SPAWN_OW_MOLERAT_A_6_NC4");
		Wld_InsertNpc	(Draconian,"SPAWN_OW_MOLERAT_A_6_NC4");
		Wld_InsertNpc	(Draconian,"SPAWN_OW_MOLERAT_A_6_NC4");
		Wld_InsertNpc	(Draconian,"SPAWN_OW_MOLERAT_A_6_NC4");	

		Wld_InsertNpc		(Draconian,"SPAWN_OW_BLOODFLYS_152");	
		Wld_InsertNpc		(Draconian,"SPAWN_OW_BLOODFLYS_152");
		Wld_InsertNpc		(Draconian,"SPAWN_OW_BLOODFLYS_152");	
		Wld_InsertNpc		(Draconian,"SPAWN_OW_BLOODFLYS_152");	
		Wld_InsertNpc		(Draconian,"SPAWN_OW_BLOODFLYS_152");	
		
		//--------------------Snapper vor dem NC (von Kap2 hierher verschoben) --------------------
		Wld_InsertNpc	(Snapper,"OW_PATH_SCAVENGER13_SPAWN01");
		Wld_InsertNpc	(Snapper,"OW_PATH_SCAVENGER13_SPAWN01");
		Wld_InsertNpc	(Snapper,"OW_PATH_SCAVENGER13_SPAWN01");
		Wld_InsertNpc	(Snapper,"OW_PATH_SCAVENGER13_SPAWN01");
		
		Wld_InsertNpc	(Snapper,"OW_GOBBO_PLACE_SPAWN");
		Wld_InsertNpc	(Snapper,"OW_GOBBO_PLACE_SPAWN");
		Wld_InsertNpc	(Snapper,"OW_GOBBO_PLACE_SPAWN");
		
		//-------------BanditenLager------------------ Cavalorns hut
 		/* Wld_InsertNpc	(BDT_1006_Bandit_H,"OW_CAVALORN_01"); 
		Wld_InsertNpc	(BDT_1007_Bandit_H,"OW_SAWHUT_GREENGOBBO_SPAWN"); 

		Wld_InsertNpc	(BDT_1003_Bandit_M,"OW_SAWHUT_MOLERAT_MOVEMENT");
		Wld_InsertNpc	(BDT_1004_Bandit_M,"OW_SAWHUT_MOLERAT_SPAWN01");
		Wld_InsertNpc	(BDT_1005_Bandit_M,"OW_SAWHUT_SLEEP_01");
		Wld_InsertNpc	(BDT_1006_Bandit_H,"OW_SAWHUT_SLEEP_01");
		Wld_InsertNpc	(BDT_1005_Bandit_M,"PATH_OC_NC_4");
		Wld_InsertNpc	(BDT_1000_LOAFER,"OW_SAWHUT_MEATBUG_SPAWN");
		Wld_InsertNpc	(BDT_1003_Bandit_M,"OW_SAWHUT_GREENGOBBO_SPAWN"); */
		
		//Snapper vor Mine3 
		Wld_InsertNpc	(Snapper,"SPAWN_OW_SCAVENGER_01_DEMONT5");
		Wld_InsertNpc	(Snapper,"SPAWN_OW_SCAVENGER_01_DEMONT5");
		
		//Xardas alter DT
		Wld_InsertNpc	(DMT_DementorAmbient,"DT_E2_09");
		Wld_InsertNpc	(DMT_DementorAmbient,"DT_E2_08");
		Wld_InsertNpc	(DMT_DementorAmbient,"DT_E2_07");
		Wld_InsertNpc	(DMT_DementorAmbient,"DT_E1_05");
		Wld_InsertNpc	(DMT_DementorAmbient,"DT");
		Wld_InsertNpc	(DMT_DementorAmbient,"OW_PATH_133");
		Wld_InsertNpc	(DMT_DementorAmbient,"OW_PATH_128");
		
		Wld_InsertItem 	(ItRu_Fear,"FP_ITEM_XARDASALTERTURM_01");

		if (hero.guild == GIL_KDF)
		{
			Wld_InsertItem 	(ItMi_RuneBlank,"FP_ITEM_XARDASALTERTURM_02");
		}
		else
		{
			Wld_InsertItem 	(ItMi_Nugget,"FP_ITEM_XARDASALTERTURM_02");
		};
		
		// ------ Respawn ------
		EnterOW_Kapitel3 = TRUE;
	};
};
// B_ENTER_OLDWORLD_Kapitel_4
//****************************************************
	var int EnterOW_Kapitel4;
FUNC VOID B_ENTER_OLDWORLD_Kapitel_4 ()
{
	if (EnterOW_Kapitel4 == FALSE)	// Inserten der Drachenjäger wenn Drachenjagd eröffnet
		{
		// ------ Gilden-Attitüden ändern ------
		
		// ------ Immortal-Flags löschen ------
		if ((Npc_IsDead(Engrom)) == FALSE)
		{
			B_StartOtherRoutine (Engrom,"Obsessed");
			CreateInvItems 	(Engrom, ItAt_TalbinsLurkerSkin, 1);
				if (hero.guild == GIL_KDF){
					CreateInvItems (Engrom,ITWR_DementorObsessionBook_MIS,1);	
				} else {
					B_KillNpc  (Engrom);	
				};
			EngromIsGone = TRUE;
		};
				
				
		// ------ Tote NSCs ------ 
		//B_RemoveNpc		(STRF_1115_Geppert); 	//Joly: Platz machen im DJG Vorposten		
		//B_RemoveNpc		(STRF_1116_Kervo); 		
		B_StartOtherRoutine (GRD_4106_Dobar,"Obsessed");
			B_KillNpc		(GRD_4106_Dobar);		//Joly: Platz machen für neue DJG Schmiede	
		B_StartOtherRoutine (GRD_4107_Parlaf,"Obsessed");	
			B_KillNpc		(GRD_4107_Parlaf);		//Joly: Platz machen für neue DJG Schmiede		

		//Sengrath
		//--------
		if ((Npc_IsDead(Sengrath))== FALSE)		 //Joly: Sengrath Missing in Action auf der Suche nach seiner verlorenen Armbrust.
			{
				B_StartOtherRoutine	(Sengrath,"ORCBARRIER");							
				B_KillNpc     	(Sengrath);
				if (!(Npc_HasItems (Sengrath,ITRW_REVIVED_CROSSBOW_SENGRATH)))
				{
	 				CreateInvItems 	(Sengrath, ITRW_REVIVED_CROSSBOW_SENGRATH, 1);	
	 			};
	 			Sengrath_Missing = TRUE;	
			};

		//Tote Drachenjäger
		//-----------------
		Wld_InsertNpc		(DJG_730_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_730_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_731_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_731_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_732_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_732_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_733_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_733_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_734_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_734_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_735_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_735_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_736_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_736_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_737_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_737_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_738_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_738_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_739_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_739_ToterDrachenjaeger);
		Wld_InsertNpc		(DJG_740_ToterDrachenjaeger, "OC1"); B_KillNpc (DJG_740_ToterDrachenjaeger);	//Joly: hat schwarze Perle in der Tasche
		
		// ------ TAs ändern ------
		Npc_ExchangeRoutine	(Brutus,"Meatbugs");  
		Wld_InsertNpc		(Meatbug_Brutus1,"OCC_MERCS_DUNGEON_003");	
		Wld_InsertNpc		(Meatbug_Brutus2,"OCC_MERCS_DUNGEON_003");	
		Wld_InsertNpc		(Meatbug_Brutus3,"OCC_MERCS_DUNGEON_003");	
		Wld_InsertNpc		(Meatbug_Brutus4,"OCC_MERCS_DUNGEON_003");	
	
		Wld_InsertNpc		(DJG_700_Sylvio,		"OC1"); 

		IF (SLD_Bullco_is_alive == TRUE)
			{
			Wld_InsertNpc		(DJG_701_Bullco, 		"OC1");
			};
		IF (SLD_Rod_is_alive == TRUE)
			{
			Wld_InsertNpc		(DJG_702_Rod, 			"OC1");
			};
		IF (SLD_Cipher_is_alive == TRUE)
			{
			Wld_InsertNpc		(DJG_703_Cipher, 		"OC1");
			};
		IF (SLD_Gorn_is_alive == TRUE)
			{
			Wld_InsertNpc		(PC_Fighter_DJG, 		"OC1");
			};

		Wld_InsertNpc		(NONE_705_ANGAR, 		"OC1"); 
		Wld_InsertNpc		(DJG_708_Kurgan, 		"OC1"); 
		Wld_InsertNpc		(DJG_709_Rethon, 		"OC1"); 
		Wld_InsertNpc		(DJG_710_Kjorn,			"OC1"); 
		Wld_InsertNpc		(DJG_711_Godar, 		"OC1"); 
		Wld_InsertNpc		(DJG_712_Hokurn, 		"OC1"); 
		Wld_InsertNpc		(DJG_713_Biff, 			"OC1"); 
		Wld_InsertNpc		(DJG_714_Jan, 			"OC1"); 
		Wld_InsertNpc		(DJG_715_Ferros, 		"OC1"); 
		
		Wld_InsertNpc       (NONE_110_Urshak,"WP_INTRO_FALL");	
	
		//---------------------------------------------------------------
		//	Monster Respawn Kapitel 4
		//---------------------------------------------------------------

		//Vom OC zur Newmine
		Wld_InsertNpc		(Warg,"OC_ROUND_21");	
	
		Wld_InsertNpc		(OrcWarrior_Roam,"OW_SCAVENGER_SPAWN_TREE");
		Wld_InsertNpc		(OrcElite_Roam,"OW_SCAVENGER_SPAWN_TREE");
	
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_ROUND_033");	
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_SCAVENGER_AL_ORC");
		
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_ROUND_18");	
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_ROUND_18");	
		
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_PATH_GUARD1");
				
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_BLACKWOLF_02_01");
		
		Wld_InsertNpc		(Hellhound,"SPAWN_OW_BLACKWOLF_02_01");
		Wld_InsertNpc		(Hellhound,"SPAWN_OW_BLACKWOLF_02_01");
		
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_ORC_09");
		Wld_InsertNpc		(OrcShaman_Sit,"FP_ROAM_ORC_08");
		
		Wld_InsertNpc		(OrcWarrior_Roam,"OW_PATH_103"); 
		
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_OW_WARAN_ORC_01");
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_OW_WARAN_ORC_04");
	
		//Fajeth Mine
		Wld_InsertNpc		(OrcElite_Roam, 		"OW_PATH_159");
		Wld_InsertNpc		(OrcWarrior_Roam, 		"OW_PATH_159");

		Wld_InsertNpc		(OrcElite_Roam, 		"OW_PATH_158");
		Wld_InsertNpc		(OrcWarrior_Roam,			"OW_PATH_158");
		Wld_InsertNpc		(OrcWarrior_Roam, 		"OW_PATH_158");
		
		Wld_InsertNpc		(OrcShaman_Sit, 	"LOCATION_23_01");

		//Umgebung Newmine
		Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCAVENGER_ORC_03"); 
		Wld_InsertNpc		(DragonSnapper,"SPAWN_OW_SCAVENGER_ORC_03");
		Wld_InsertNpc		(DragonSnapper,"OW_PATH_06_07_B");
		Wld_InsertNpc		(DragonSnapper,"OW_PATH_06_07_B");
		Wld_InsertNpc		(DragonSnapper,"OW_PATH_333");	
		Wld_InsertNpc		(Warg,"OW_PATH_099");
		Wld_InsertNpc		(Warg,"SPAWN_OW_WARAN_ORC_01");
		//Umgebung OC
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_ROUND_10");	
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_ROUND_10");	
		Wld_InsertNpc		(OrcElite_Roam,"OC2");	
		Wld_InsertNpc		(Warg,"OC2");	

		Wld_InsertNpc		(OrcElite_Roam,"OC_ROUND_13");	
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_ROUND_13");	
		Wld_InsertNpc		(Warg,"OC_ROUND_13");	
		Wld_InsertNpc		(OrcElite_Roam,"PATH_OC_PSI_01");	
		Wld_InsertNpc		(OrcElite_Roam,"PATH_OC_PSI_01");	
		Wld_InsertNpc		(OrcElite_Roam,"OCR_HUT_15_OUTSIDE");	
		Wld_InsertNpc		(OrcElite_Roam,"OCR_HUT_15_OUTSIDE");	
		Wld_InsertNpc		(OrcWarrior_Sit,"FP_CAMPFIRE_OCROUND_000");	
		
		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_SCAVENGER_06_03");
		Wld_InsertNpc		(OrcShaman_Sit,"FP_ROAM_OW_SCAVENGER_06_05");
		Wld_InsertNpc		(Warg,"FP_ROAM_OW_SCAVENGER_06_06");
		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_SCAVENGER_06_04");
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_OW_SCAVENGER_06_07");
			
		Wld_InsertNpc		(OrcElite_Roam,"OC_ROUND_18");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SCAVENGER_AL_ORC");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SCAVENGER_AL_ORC");

		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_OCROUND_023");
		Wld_InsertNpc		(Warg,"FP_ROAM_OW_OCROUND_023");

		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_OCROUND_025");
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_OW_OCROUND_025");

		Wld_InsertNpc		(OrcElite_Roam,"OC1");
		Wld_InsertNpc		(OrcWarrior_Roam,"OC_MOAT_18");

		Wld_InsertNpc		(OrcElite_Roam,"OW_PATH_1");
		Wld_InsertNpc		(Warg,"OW_PATH_1");

		Wld_InsertNpc		(OrcShaman_Sit,"FP_CAMPFIRE_OCROUND_001");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_ORCBRIDGE");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_ORCBRIDGE");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_ORCBRIDGE");
		Wld_InsertNpc		(Warg,"SPAWN_OW_ORCBRIDGE");

		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_OCROUND_031");
		Wld_InsertNpc		(Warg,"FP_ROAM_OW_OCROUND_031");
		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_OCROUND_039");
		Wld_InsertNpc		(Warg,"FP_ROAM_OW_OCROUND_039");
		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_OW_OCROUND_043");
		Wld_InsertNpc		(Warg,"FP_ROAM_OW_OCROUND_043");
		
		Wld_InsertNpc		(Warg,"SPAWN_OW_SMALLCAVE01_MOLERAT");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SMALLCAVE01_MOLERAT");
		Wld_InsertNpc		(OrcElite_Roam,"SPAWN_OW_SMALLCAVE01_MOLERAT");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SMALLCAVE01_MOLERAT");
	
		Wld_InsertNpc		(OrcElite_Roam,"OC_MOAT_23");
		Wld_InsertNpc		(Warg,"OC_MOAT_23");

		Wld_InsertNpc		(OrcElite_Roam,"FP_ROAM_ORK_OC_06");
		Wld_InsertNpc		(Warg,"FP_ROAM_ORK_OC_05");

		Wld_InsertNpc		(OrcElite_Roam,"OC_MOAT_07");
		Wld_InsertNpc		(Warg,"OC_MOAT_07");

		Wld_InsertNpc		(Warg,"OC_MOAT_10");
		Wld_InsertNpc		(Warg,"OC_MOAT_10");

		Wld_InsertNpc		(Warg,"OC_MOAT_09");
		Wld_InsertNpc		(Warg,"OC_MOAT_09");

		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_ORK_OC_05");
		
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_ORK_OC_25");
		
		Wld_InsertNpc		(Warg,"FP_ROAM_ORK_OC_06");
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_ORK_OC_05");

		Wld_InsertNpc		(Warg,"FP_CAMPFIRE_ORK_OC_09");
		Wld_InsertNpc		(OrcWarrior_Roam,"FP_ROAM_ORK_OC_26");

		Wld_InsertNpc		(OrcElite_Roam,"OCR_ARENABATTLE");

		Wld_InsertNpc		(Warg,"OCR_LAKE_OUTSIDE");
		Wld_InsertNpc		(OrcWarrior_Roam,"OCR_LAKE_OUTSIDE");

		Wld_InsertNpc		(OrcWarrior_Roam,"OCR_LAKE_OUTSIDE");
		Wld_InsertNpc		(Warg,"OCR_LAKE_OUTSIDE");

		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_SCAVENGER_06_04");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SCAVENGER_06_04");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SCAVENGER_06_04");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_OW_SCAVENGER_06_04");

		// Hosh Pak
		
		Wld_InsertNpc   (OrcWarrior_Roam,"FP_ROAM_HOSHPAK_004");	
		Wld_InsertNpc   (OrcWarrior_Roam,"FP_ROAM_HOSHPAK_006");	
		Wld_InsertNpc   (OrcWarrior_Roam,"FP_ROAM_HOSHPAK_008");	
		Wld_InsertNpc   (OrcWarrior_Roam,"FP_ROAM_HOSHPAK_010");	
		
		//Ehemaliger Kapitel 2 Korridor 
		//-------------------------------
		// am Fluss
		Wld_InsertNpc		(Warg,"SPAWN_O_SCAVENGER_OCWOODL2");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_O_SCAVENGER_OCWOODL2");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_O_SCAVENGER_OCWOODL2");

		Wld_InsertNpc		(Lurker,"OW_PATH_OW_PATH_WARAN05_SPAWN01");
		Wld_InsertNpc		(Lurker,"OW_PATH_OW_PATH_WARAN05_SPAWN01");
		Wld_InsertNpc		(Lurker,"OW_PATH_OW_PATH_WARAN05_SPAWN01");
	
		//der Wald
		Wld_InsertNpc		(Shadowbeast,"FP_ROAM_OW_SCAVENGER_LONE_WALD_OC3");
		Wld_InsertNpc		(Warg,"SPAWN_OW_WOLF2_WALD_OC3");
		Wld_InsertNpc		(Warg,"SPAWN_OW_WOLF2_WALD_OC3");

		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_WALD_OC_BLOODFLY01");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_WALD_OC_BLOODFLY01");
		Wld_InsertNpc		(OrcWarrior_Roam,"SPAWN_WALD_OC_BLOODFLY01");
		Wld_InsertNpc		(Shadowbeast,"SPAWN_OW_MOLERAT2_WALD_OC1");
	
		Wld_InsertNpc		(OrcWarrior_Roam,"PATH_WALD_OC_WOLFSPAWN2");
		Wld_InsertNpc		(OrcWarrior_Roam,"PATH_WALD_OC_WOLFSPAWN2");
		Wld_InsertNpc		(Warg,"PATH_WALD_OC_WOLFSPAWN2");
		
		Wld_InsertNpc		(Shadowbeast,"PATH_WALD_OC_MOLERATSPAWN");

		Wld_InsertNpc		(Warg,"SPAWN_OW_WOLF2_WALD_OC2");
		Wld_InsertNpc		(Warg,"SPAWN_OW_WOLF2_WALD_OC2");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SCAVENGER_INWALD_OC2");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SCAVENGER_INWALD_OC2");

		// vor OC2
		Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1");
		Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1");
		Wld_InsertNpc		(Snapper,"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1");

		Wld_InsertNpc		(Snapper,"SPAWN_OW_WARAN_OC_PSI3");
		Wld_InsertNpc		(Snapper,"SPAWN_OW_WARAN_OC_PSI3");

	// Kapitel2 Canyon "Gilbert´s Höhle"
		
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_SNAPPER_OW_ORC5"); 
		Wld_InsertNpc	(OrcShaman_Sit,"FP_ROAM_OW_SNAPPER_OW_ORC_MOVE");
		Wld_InsertNpc	(OrcShaman_Sit,"LOCATION_16_IN");	//Gilberts ehem. Höhle
	
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_SNAPPER_OW_ORC3");
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_SNAPPER_OW_ORC3");
		Wld_InsertNpc	(Warg,"FP_ROAM_OW_SNAPPER_OW_ORC");
		Wld_InsertNpc	(Warg,"FP_ROAM_OW_SNAPPER_OW_ORC");
	
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_SNAPPER_OW_ORC");
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_SNAPPER_OW_ORC");
		Wld_InsertNpc	(Warg,"FP_ROAM_OW_SNAPPER_OW_ORC");
	
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_ORCBARRIER_003");
		Wld_InsertNpc	(OrcWarrior_Roam,"FP_ROAM_OW_ORCBARRIER_003");
		Wld_InsertNpc	(OrcShaman_Sit,"FP_CAMPFIRE_OW_ORCBARRIER_000");
		
		Wld_InsertNpc	(Warg,"CASTLE_2"); 
	
		Wld_InsertNpc	(Firewaran,"OW_PATH_104");
		Wld_InsertNpc	(Firewaran,"OW_PATH_104");
		Wld_InsertNpc	(Firewaran,"OW_PATH_104");
			
		Wld_InsertNpc	(Warg,"OW_PATH_BLACKWOLF07_SPAWN01");
		Wld_InsertNpc	(Warg,"OW_PATH_BLACKWOLF07_SPAWN01");
		
		Wld_InsertNpc	(OrcWarrior_Roam,"CASTLE_3"); 
		Wld_InsertNpc	(Warg,"CASTLE_3");
		Wld_InsertNpc	(Warg,"CASTLE_4");
		Wld_InsertNpc	(Warg,"CASTLE_4");
		Wld_InsertNpc	(OrcWarrior_Roam,"OW_PATH_109");
		
		// Nähe alter DT
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SNAPPER_02_06");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SNAPPER_02_11");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SNAPPER_02_05");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SNAPPER_02_08");
		
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_303");
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_303");

		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SCAVENGER_01_DEMONT5");
		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SCAVENGER_01_DEMONT5");
		
		Wld_InsertNpc	(Minecrawlerwarrior,"OW_SILVESTROMINE_004");
		Wld_InsertNpc	(DragonSnapper,"OW_SILVESTROMINE_ENTRANCE");
		
		Wld_InsertItem 	(ItMi_GoldChalice,"FP_OW_ITEM_10");
	
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_117");

		Wld_InsertNpc	(Harpie,"DT_E1_07");
		Wld_InsertNpc	(Harpie,"DT_E1_08");
		Wld_InsertNpc	(Harpie,"DT_E1_09");
		
		Wld_InsertNpc	(DMT_DementorAmbient,"OW_PATH_093");
		
		//Nähe Newmine
		
		Wld_InsertNpc	(Warg,"OW_PATH_195");
		Wld_InsertNpc	(Warg,"OW_PATH_195");
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_210");
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_210");
		Wld_InsertNpc	(Waran,"MT05_003");
		
		Wld_InsertNpc	(DragonSnapper,"OW_ORC_LOOKOUT_2_02");
		Wld_InsertNpc	(DragonSnapper,"OW_ORC_LOOKOUT_2_02");
		Wld_InsertNpc	(DragonSnapper,"OW_ORC_LOOKOUT_2_02");

		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SHADOWBEAST_10_03");
		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SHADOWBEAST_10_03");
		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SHADOWBEAST_10_03");
		
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_SCAVENGER13_SPAWN01");
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_SCAVENGER13_SPAWN01");
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_SCAVENGER13_SPAWN01");

		Wld_InsertItem 	(ITRW_REVIVED_BOW_WAR_01,"FP_OW_ITEM_11");
		
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_07_19");
		
		Wld_InsertNpc	(DragonSnapper,"OW_PATH_146");

		Wld_InsertNpc	(Firewaran,"FP_ROAM_OW_SCA_01_BADITS4");
		Wld_InsertNpc	(Firewaran,"FP_ROAM_OW_SCA_01_BADITS7");

		Wld_InsertNpc	(Firewaran,"FP_ROAM_OW_SCA_01_BADITS2");
		Wld_InsertNpc	(Firewaran,"FP_ROAM_OW_SCA_01_BADITS");

		Wld_InsertNpc	(Gobbo_Elite,"FP_ROAM_OW_GOBBO_07_04");
		Wld_InsertNpc	(Gobbo_Elite,"FP_ROAM_OW_GOBBO_07_03");

		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SNAPPER_WOOD05_02");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SNAPPER_WOOD05_02");
		
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SCAVENGER_01_07");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SCAVENGER_01_05");

		Wld_InsertNpc	(Warg,"SPAWN_OW_BLOODFLY_06_01");
		Wld_InsertNpc	(Warg,"SPAWN_OW_BLOODFLY_06_01");

		Wld_InsertNpc	(Lurker,"SPAWN_OW_BLOODFLY_12");
		Wld_InsertNpc	(Lurker,"SPAWN_OW_BLOODFLY_12");

		Wld_InsertNpc	(Lurker,"FP_ROAM_OW_LURKER_NC_LAKE_02");
		Wld_InsertNpc	(Lurker,"FP_ROAM_OW_LURKER_NC_LAKE_01");

		Wld_InsertNpc	(Lurker,"OW_LAKE_NC_BLOODFLY_SPAWN01");
		Wld_InsertNpc	(Lurker,"OW_LAKE_NC_BLOODFLY_SPAWN01");

		Wld_InsertNpc	(Troll,"SPAWN_OW_GOBBO_01_01");
		Wld_InsertNpc	(Troll,"LOCATION_11_017");
		Wld_InsertNpc	(Troll,"OW_PATH_2_08");
		
		
		//Plateau Felsenfestung
		Wld_InsertNpc	(Draconian,"PLATEAU_ROUND02_CAVE");
		Wld_InsertNpc	(Draconian,"PLATEAU_ROUND02_CAVE_MOVE");
		Wld_InsertNpc	(Draconian,"PLATEAU_ROUND02_CAVE_MOVE");

		Wld_InsertItem 	(ItMi_GoldChest,"FP_OW_ITEM_12");
		
		Wld_InsertNpc	(Draconian,"PATH_TO_PLATEAU04_B");
		Wld_InsertNpc	(Draconian,"PATH_TO_PLATEAU04_B");
		Wld_InsertNpc	(Draconian,"PATH_TO_PLATEAU04_B");
		Wld_InsertItem 	(ItSc_Firestorm,"FP_OW_ITEM_13");
	
		//Orkbarriere
		
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SCAVENGER_03_04");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SCAVENGER_03_02");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SCAVENGER_03_03");
		Wld_InsertNpc	(DragonSnapper,"FP_ROAM_OW_SCAVENGER_03_01");
		
		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");
		Wld_InsertNpc	(DragonSnapper,"SPAWN_OW_SNAPPER_OCWOOD1_05_02");


		Wld_InsertNpc	(OrcElite_Roam,"FP_ROAM_OW_ORCBARRIER_006");
		Wld_InsertNpc	(OrcElite_Roam,"FP_ROAM_OW_ORCBARRIER_006");

		Wld_InsertNpc	(OrcElite_Roam,"LOCATION_29_04");
		Wld_InsertNpc	(OrcElite_Roam,"OW_PATH_166");
		
		Wld_InsertNpc	(OrcWarrior_Roam,"PATH_TO_PLATEAU01_001");
		Wld_InsertNpc	(OrcWarrior_Roam,"PATH_TO_PLATEAU01_001");

		Wld_InsertNpc		(Warg,"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4");
		Wld_InsertNpc		(Warg,"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4");
	
		Wld_InsertItem (ItMi_KerolothsGeldbeutel_MIS, "FP_OC_KEROLOTHS_GELDBEUTEL");
		
		IntroduceChapter (KapWechsel_4,KapWechsel_4_Text,"chapter4.tga","chapter_01.wav", 6000);
		
		EnterOW_Kapitel4 = TRUE;
		};
	
		//Talbin
		//--------
			if (Talbin_FollowsThroughPass == LOG_OBSOLETE)
				{
					B_KillNpc 		(OUT_4130_TALBIN);
					Wld_InsertNpc	(Dragonsnapper, "WP_INTRO06_TREES");
					Talbin_FollowsThroughPass = LOG_FAILED;
				}
			else if (Talbin_FollowsThroughPass == LOG_SUCCESS)
				{
					B_RemoveNpc 	(OUT_4130_TALBIN);
					//Talbin_FollowsThroughPass = LOG_FAILED;	//Joly: absoluter Schluß
				};
};

//****************************************************
// B_ENTER_OLDWORLD_Kapitel_5
//****************************************************
	var int EnterOW_Kapitel5;
FUNC VOID B_ENTER_OLDWORLD_Kapitel_5 ()
{
	if  (EnterOW_Kapitel5 == FALSE)
	 	{
		// ------ Gilden-Attitüden ändern ------
		
		// ------ Respawn ------						

		if (Npc_IsDead(Brutus)==FALSE)
		{
			CreateInvItems (GRD_4100_Brutus, ITWR_DementorObsessionBook_MIS, 1 );	
		};
		// ------ TAs ändern ------
		B_StartOtherRoutine(PAL_259_Wache, "KAP5");
		B_StartOtherRoutine(PAL_265_Wache, "KAP5");
		B_StartOtherRoutine(GRD_4143_HaupttorWache, "KAP5");

		
		if 	(TschuessBilgot == TRUE) // Bilgots (NewMine) Flucht aus der OW 
			{
				B_RemoveNpc	(GRD_4120_Bilgot);
			};
		
		EnterOW_Kapitel5 = TRUE;
		};

	if (Biff_FollowsThroughPass == LOG_SUCCESS)
				{
					B_RemoveNpc 	(DJG_713_Biff);
				};
};

//****************************************************
// B_ENTER_OLDWORLD_Kapitel_6
//****************************************************
	var int EnterOW_Kapitel6;
FUNC VOID B_ENTER_OLDWORLD_Kapitel_6 ()
{
	if (EnterOW_Kapitel6 == FALSE)
	{
		// ------ Gilden-Attitüden ändern ------
		
		// ------ Immortal-Flags löschen ------

		// ------ TAs ändern ------

		// ------ Respawn ------

		EnterOW_Kapitel6 = TRUE;
	};
};
// ******************************************************************************************************************************************************************
// B_ENTER_OLDWORLD			 (wird über INIT_OLDWORLD in der OW beim Betreten aufgerufen (Beispiel: für DJG, die erst nach dem 1.Betreten der OW eingesetzt werden))
// ******************************************************************************************************************************************************************

FUNC VOID B_ENTER_OLDWORLD ()	
{
	B_InitNpcGlobals (); 
	if (Kapitel >= 1)	{B_ENTER_OLDWORLD_Kapitel_1 ();	};
	if (Kapitel >= 2)	{B_ENTER_OLDWORLD_Kapitel_2 ();	};
	if (Kapitel >= 3)	{B_ENTER_OLDWORLD_Kapitel_3 ();	};
	if (Kapitel >= 4)	{B_ENTER_OLDWORLD_Kapitel_4 ();	};
	if (Kapitel >= 5)	{B_ENTER_OLDWORLD_Kapitel_5 ();	};
	if (Kapitel >= 6)	{B_ENTER_OLDWORLD_Kapitel_6 ();	};
	CurrentLevel = OLDWORLD_ZEN;
	B_InitNpcGlobals (); 
	
	if (DJG_BiffParty == TRUE)	//Joly:nach Load nicht nach Kohle fragen!
	&& 	(Npc_IsDead(Biff)==FALSE)
	{
			if (DJG_Biff_HalbeHalbe == TRUE)
			{
				Npc_SetRefuseTalk (Biff,500);//Joly:Biff stehet hier wegen INIT und setrefusetalk. SAVEGAMEFIX
			}
			else
			{
				Npc_SetRefuseTalk (Biff,300);//Joly:Biff stehet hier wegen INIT und setrefusetalk. SAVEGAMEFIX
			};
	};
	
	if (Npc_IsDead(Bilgot) == TRUE)				//Joly:Bilgot ist tot
	&& (MIS_RescueBilgot == LOG_RUNNING)		//Joly:soll aber gerettet werden
	{
		MIS_RescueBilgot = LOG_FAILED;
	};	
};

