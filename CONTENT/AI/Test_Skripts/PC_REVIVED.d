INSTANCE PC_REVIVED(NPC_DEFAULT)
{
	//-------- primary data --------
	name 			= "Mr. Revived";
	Npctype			= NPCTYPE_MAIN;
	guild			= GIL_NONE;
	voice			= 15;
	id				= 0;
	
	//--------- abilities --------
	B_SetAttributesForLevel(self, 500);	

	//-------- visuals --------
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_SetVisualBody 	(self,"HUM_BODY_NAKED0", BodyTex_Player, 0, "Hum_Head_Pony", FACE_N_Player, 0, ITAR_Fake_RANGER);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_MAGE, 			6);
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK, 		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SNEAK, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ACROBAT, 			1);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKPOCKET, 		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SMITH, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_RUNES, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ALCHEMY, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TAKEANIMALTROPHY,	1);

	Npc_SetTalentSkill	(self, NPC_TALENT_BOWMAKING,		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_COOKING,			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_BOOZE,			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TOBACCO,			1);

	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws]			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] 				= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonScale] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonBlood] 		= TRUE;

	PLAYER_TALENT_ALCHEMY[CHARGE_Innoseye] = TRUE;

	PLAYER_TALENT_ALCHEMY[POTION_Health_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Health_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Health_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Speed] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] = TRUE;

	PLAYER_TALENT_ALCHEMY[POTION_Special_Experience] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Special_DragonDrink] = TRUE;

	PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_HEALTH_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MANA_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_SPEED_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_SPEED_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_SPEED_03] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_01] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_02] = TRUE;
	PLAYER_TALENT_ALCHEMY[POTION_Perm_MASTER_03] = TRUE;

//---------------------------------------------------------------------

	PLAYER_TALENT_COOKING[COOKING_MeatStew] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_FishSoup] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_MeatbugRagout] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_RootSoup] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_MinecrawlerSoup] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_Marmalade] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_RiceBowl] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_FruitSalad] = TRUE;
	PLAYER_TALENT_COOKING[COOKING_ConvictStew] = TRUE;

	PLAYER_TALENT_BOOZE[BOOZE_LouHammer] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_LouHammerDouble] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_FastHerring] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_TurnipBooze] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_VinoBooze] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_MonsterDrink] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_MageWine] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_RiceSchnaps] = TRUE;
	PLAYER_TALENT_BOOZE[BOOZE_Mead] = TRUE;

	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Regular] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Apple] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Honey] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Mushroom] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_GreenNovice] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_NorthernDark] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_Dreamcall] = TRUE;
	PLAYER_TALENT_TOBACCO[TOBACCO_Weed_DreamcallStrong] = TRUE;

//---------------------------------------------------------------------

	PLAYER_TALENT_SMITH[WEAPON_Common] 				= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02]		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 		= TRUE;

	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_02] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_04] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_05] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_01] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_02] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_03] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_04] 		= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_05] 		= TRUE;

	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_02] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_04] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_REVIVED_ORE_05] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_02] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_04] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_REVIVED_ORE_05] 	= TRUE;

	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_01] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_02] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_03] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_BOW_REVIVED_04] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_01] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_02] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_03] 	= TRUE;
	PLAYER_TALENT_BOWYER[WEAPON_CBOW_REVIVED_04] 	= TRUE;

//---------------------------------------------------------------------

	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws]			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] 				= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonScale] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonBlood] 		= TRUE;

//---------------------------------------------------------------------

	PLAYER_TALENT_RUNES[SPL_LIGHT] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firebolt] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Icebolt] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_LightHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] 	= TRUE;
	PLAYER_TALENT_RUNES[SPL_InstantFireball] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Zap] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonWolf] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_WINDFIST] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Sleep] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_MediumHeal] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_LightningFlash] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_ChargeFireball] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonSkeleton] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Fear] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceCube] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ChargeZap] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonGolem] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_DestroyUndead] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Pyrokinesis] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firestorm] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceWave] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonDemon] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_FullHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firerain] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_BreathOfDeath] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_MassDeath] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ArmyOfDarkness] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Shrink] 				= TRUE;

	//******************************************************************//

	// IT_AMULETS.d
	CreateInvItems(self, ITAM_REVIVED_PROT_ARROW_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MELEE_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MELEE_02, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_WEAPON_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MAGIC_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_FIRE_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_FIRE_02, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_MAGIC_FIRE, 1);
	CreateInvItems(self, ITAM_REVIVED_PROT_TOTAL_01, 1);
	CreateInvItems(self, ITAM_REVIVED_HP_01, 1);
	CreateInvItems(self, ITAM_REVIVED_MP_01, 1);
	CreateInvItems(self, ITAM_REVIVED_HP_MP_01, 1);
	CreateInvItems(self, ITAM_REVIVED_DEX_01, 1);
	CreateInvItems(self, ITAM_REVIVED_DEX_02, 1);
	CreateInvItems(self, ITAM_REVIVED_STR_01, 1);
	CreateInvItems(self, ITAM_REVIVED_STR_02, 1);
	CreateInvItems(self, ITAM_REVIVED_STR_DEX_01, 1);
	CreateInvItems(self, ITAM_REVIVED_PSI, 1);
	CreateInvItems(self, ITAM_REVIVED_KDW, 1);
	CreateInvItems(self, ITAM_REVIVED_DEMON, 1);

	//******************************************************************//

	// IT_ARMOR.d
	CreateInvItems(self, ITAR_REVIVED_BEGGAR, 1);
	CreateInvItems(self, ITAR_REVIVED_LEATHER_L, 1);
	CreateInvItems(self, ITAR_REVIVED_LEATHER_M, 1);
	CreateInvItems(self, ITAR_REVIVED_LEATHER_H, 1);
	CreateInvItems(self, ITAR_REVIVED_ARCHER, 1);
	CreateInvItems(self, ITAR_REVIVED_KNIGHT, 1);
	CreateInvItems(self, ITAR_REVIVED_KNIGHT_02, 1);
	CreateInvItems(self, ITAR_REVIVED_DEMONHUNTER, 1);
	CreateInvItems(self, ITAR_REVIVED_DEMONHUNTER_02, 1);
	CreateInvItems(self, ITAR_REVIVED_SFB_L, 1);
	CreateInvItems(self, ITAR_REVIVED_SFB_M, 1);
	CreateInvItems(self, ITAR_REVIVED_SFB_H, 1);
	CreateInvItems(self, ITAR_REVIVED_STT_M, 1);
	CreateInvItems(self, ITAR_REVIVED_STT_H, 1);
	CreateInvItems(self, ITAR_REVIVED_ORG_L, 1);
	CreateInvItems(self, ITAR_REVIVED_ORG_M, 1);
	CreateInvItems(self, ITAR_REVIVED_ORG_H, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_L, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_M, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_H, 1);
	CreateInvItems(self, ITAR_REVIVED_GRD_S, 1);
	CreateInvItems(self, ITAR_REVIVED_EBR_L, 1);
	CreateInvItems(self, ITAR_REVIVED_EBR_M, 1);
	CreateInvItems(self, ITAR_REVIVED_EBR_H, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_L, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_M, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_H, 1);
	CreateInvItems(self, ITAR_REVIVED_PAL_H_02, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_L, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_L_02, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_M, 1);
	CreateInvItems(self, ITAR_REVIVED_SLD_H, 1);
	CreateInvItems(self, ITAR_REVIVED_DJG_L, 1);
	CreateInvItems(self, ITAR_REVIVED_DJG_M, 1);
	CreateInvItems(self, ITAR_REVIVED_DJG_H, 1);
	CreateInvItems(self, ITAR_REVIVED_KDF_L, 1);
	CreateInvItems(self, ITAR_REVIVED_KDF_M, 1);
	CreateInvItems(self, ITAR_REVIVED_KDF_H, 1);
	CreateInvItems(self, ITAR_REVIVED_KDW_L, 1);
	CreateInvItems(self, ITAR_REVIVED_KDW_M, 1);
	CreateInvItems(self, ITAR_REVIVED_KDW_H, 1);
	CreateInvItems(self, ITAR_REVIVED_PSI_NOV, 1);
	CreateInvItems(self, ITAR_REVIVED_PSI_TPL, 1);
	CreateInvItems(self, ITAR_REVIVED_PSI_TPL_02, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_L, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_M, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_H, 1);
	CreateInvItems(self, ITAR_REVIVED_DMT_S, 1);
	CreateInvItems(self, ITAR_REVIVED_BDT_L, 1);
	CreateInvItems(self, ITAR_REVIVED_BDT_M, 1);
	CreateInvItems(self, ITAR_REVIVED_BDT_H, 1);
	CreateInvItems(self, ITAR_REVIVED_GORDONRAMSAY, 1);

	//******************************************************************//

	// IT_BELTS.d
	CreateInvItems(self, ITBE_REVIVED_ARCHER, 1);

	//******************************************************************//

	// IT_FOOD.d
	CreateInvItems(self, ITFO_REVIVED_MEATBUG, 20);
	CreateInvItems(self, ITFO_REVIVED_HAM_01_RAW, 20);
	CreateInvItems(self, ITFO_REVIVED_HAM_01_COOKED, 20);
	CreateInvItems(self, ITFO_REVIVED_HAM_02, 20);
	CreateInvItems(self, ITFO_REVIVED_APPLE_01, 20);
	CreateInvItems(self, ITFO_REVIVED_APPLE_02, 20);
	CreateInvItems(self, ITFO_REVIVED_PEAR, 20);
	CreateInvItems(self, ITFO_REVIVED_HONEY, 20);
	CreateInvItems(self, ITFO_REVIVED_BREAD_01, 20);
	CreateInvItems(self, ITFO_REVIVED_BREAD_02, 20);
	CreateInvItems(self, ITFO_REVIVED_CHEESE_01, 20);
	CreateInvItems(self, ITFO_REVIVED_CHEESE_02, 20);
	CreateInvItems(self, ITFO_REVIVED_WATER, 20);
	CreateInvItems(self, ITFO_REVIVED_BEER, 20);
	CreateInvItems(self, ITFO_REVIVED_WINE, 20);
	CreateInvItems(self, ITFO_REVIVED_TURNIPBOOZE, 20);
	CreateInvItems(self, ITFO_REVIVED_VINOBOOZE, 20);
	CreateInvItems(self, ITFO_REVIVED_MAGEWINE, 20);
	CreateInvItems(self, ITFO_REVIVED_MONSTERDRINK, 20);
	CreateInvItems(self, ITFO_REVIVED_RICEBOOZE, 20);
	CreateInvItems(self, ITFO_REVIVED_MEAD, 20);
	CreateInvItems(self, ITFO_REVIVED_FISHXPSOUP, 20);
	CreateInvItems(self, ITFO_REVIVED_BUGSOUP, 20);
	CreateInvItems(self, ITFO_REVIVED_PLANTSOUP, 20);
	CreateInvItems(self, ITFO_REVIVED_CRAWLERSOUP, 20);
	CreateInvItems(self, ITFO_REVIVED_RICE, 20);
	CreateInvItems(self, ITFO_REVIVED_MARMALADE, 20);
	CreateInvItems(self, ITFO_REVIVED_FRUITSALAD, 20);
	CreateInvItems(self, ITFO_REVIVED_OLDSTEW, 20);

	//******************************************************************//

	// IT_HELMET.d
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_01, 1);
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_02, 1);
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_03, 1);
	CreateInvItems(self, ITHE_REVIVED_SPECTACLES_04, 1);
	CreateInvItems(self, ITHE_REVIVED_KNIGHT, 1);
	CreateInvItems(self, ITHE_REVIVED_DJG_M, 1);
	CreateInvItems(self, ITHE_REVIVED_DJG_H, 1);
	CreateInvItems(self, ITHE_REVIVED_PIR, 1);
	CreateInvItems(self, ITHE_REVIVED_PAL, 1);
	CreateInvItems(self, ITHE_REVIVED_01, 1);

	//******************************************************************//

	// IT_KEYS.d
	CreateInvItems(self, ITKE_REVIVED_STONEFORTRESS, 1);
	CreateInvItems(self, ITKE_REVIVED_XARDAS, 1);
	CreateInvItems(self, ITKE_REVIVED_GOMEZ, 1);
	CreateInvItems(self, ITKE_REVIVED_GORDONRAMSAY, 1);

	//******************************************************************//

	// IT_MELEE\1H_AXE.d
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_OLD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_GREAT_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_HEAVY_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_HEAVY_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_HEAVY_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_ORE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_CORD, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_LARES, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_AXE_BIFF, 1);

	//******************************************************************//

	// IT_MELEE\1H_HAMMER.d
	CreateInvItems(self, ITMW_REVIVED_1H_WARHAMMER_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_WARHAMMER_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_WARHAMMER_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_HAMMER_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_HAMMER_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_HAMMER_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_HAMMER_ORE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_HAMMER_HOLY, 1);

	//******************************************************************//

	// IT_MELEE\1H_MACE.d
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_WAR_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_WAR_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_WAR_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_WAR_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_LESTER, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_NAMIB, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_MOE, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_MACE_FORTUNO, 1);

	//******************************************************************//

	// IT_MELEE\1H_MISC.d
	CreateInvItems(self, ITMW_REVIVED_1H_SICKLE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_POKER_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SCYTHE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_HATCHET_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SLEDGEHAMMER_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_CLUB_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_CLUB_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_NAILMACE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_WALKINGSTICK_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_BRANCH_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_KNIFE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_DAGGER_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_DAGGER_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_07, 1);

	//******************************************************************//

	// IT_MELEE\1H_SWORD.d
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_OLD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_OLD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SHORT_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SHORT_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SHORT_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SHORT_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SHORT_05, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_05, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_06, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_LONG_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_LONG_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_LONG_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_LONG_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_LONG_05, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BROAD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BROAD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BROAD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BROAD_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BASTARD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BASTARD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BASTARD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BASTARD_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_PALADIN_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_PALADIN_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_PALADIN_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_DEMONSLAYER, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_DEMONSLAYER_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_URIZIEL_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_URIZIEL_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BANDIT_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_BANDIT_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_HACKER_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_HACKER_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_PIRATE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_PIRATE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_ALRIK, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SCAR, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_ARTO, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_RAVEN, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_CORNELIUS, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_WHISTLER, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_KALOM, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_VALENTINO, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_CASSIA, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SMITH_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SMITH_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SMITH_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SMITH_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_SMITH_05, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_0RE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_ORE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_ORE_03, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_ORE_04, 1);
	CreateInvItems(self, ITMW_REVIVED_1H_SWORD_ORE_05, 1);

	//******************************************************************//

	// IT_MELEE\2H_AXE.d
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_OLD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_OLD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_OLD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_LIGHT_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_LIGHT_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_LIGHT_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_HEAVY_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_HEAVY_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_HEAVY_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_HEAVY_04, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_ORE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_LEE, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_SYLVIO, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_TORLOF, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_AXE_GORN, 1);

	//******************************************************************//

	// IT_MELEE\2H_HAMMER.d
	CreateInvItems(self, ITMW_REVIVED_2H_HAMMER_HOLY, 1);

	//******************************************************************//

	// IT_MELEE\2H_MISC.d
	CreateInvItems(self, ITMW_REVIVED_2H_PICKAXE, 1);

	//******************************************************************//

	// IT_MELEE\2H_SWORD.d
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_OLD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_LIGHT_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_LIGHT_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_LIGHT_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_LIGHT_04, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_LIGHT_05, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_04, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_05, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_HEAVY_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_HEAVY_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_HEAVY_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_HEAVY_04, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_HEAVY_05, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_THORUS, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ANGAR, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ROD, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_PALADIN_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_PALADIN_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_PALADIN_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_INNOS_SWORD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_INNOS_SWORD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_DEMONSLAYER, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_DEMONSLAYER_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_URIZIEL_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_URIZIEL_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_SMITH_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_SMITH_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_SMITH_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_SMITH_04, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_SMITH_05, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ORE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ORE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ORE_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ORE_04, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_SWORD_ORE_05, 1);

	//******************************************************************//

	// IT_MELEE\ORC_AXE.d
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_03, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_04, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_01_R, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_02_R, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_03_R, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_AXE_04_R, 1);

	//******************************************************************//

	// IT_MELEE\ORC_HAMMER.d
	CreateInvItems(self, ITMW_REVIVED_ORC_MACE_01, 1);

	//******************************************************************//

	// IT_MELEE\ORC_STAFF.d
	CreateInvItems(self, ITMW_REVIVED_ORC_STAFF_01, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_STAFF_02, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_ULUMULU, 1);

	//******************************************************************//

	// IT_MELEE\ORC_SWORD.d
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_KEY_01, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_KEY_02, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_KEY_03, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_KEY_04, 1);
	CreateInvItems(self, ITMW_REVIVED_ORC_SWORD_KEY_05, 1);

	//******************************************************************//

	// IT_MELEE\STAFF.d
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_NOVICE_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_NOVICE_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_YBERION, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_STAFF_JUDGE, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_NORMAL_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_BALL_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_BALL_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_BALL_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_GOOD_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_GOOD_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_GOOD_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_BLADES_01, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_BLADES_02, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_BLADES_03, 1);
	CreateInvItems(self, ITMW_REVIVED_2H_MAGESTAFF_GREAT_01, 1);

	//******************************************************************//

	// IT_MISC.d
	CreateInvItems(self, ITMI_REVIVED_JOINT_GREENNOVICE, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_NORTHDARK, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_DREAMCALL, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_DREAMCALL_02, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_REGULAR, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_APPLE, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_APPLEDOUBLE, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_HONEY, 10);
	CreateInvItems(self, ITMI_REVIVED_JOINT_MUSHROOM, 10);
	CreateInvItems(self, ITMI_REVIVED_SALT, 10);
	CreateInvItems(self, ITMI_REVIVED_SUGAR, 10);
	CreateInvItems(self, ITMI_REVIVED_SYRIANOIL, 10);
	CreateInvItems(self, ITMI_REVIVED_STONEOIL, 10);
	CreateInvItems(self, ITMI_REVIVED_PUREALCOHOL, 10);
	CreateInvItems(self, ITMI_REVIVED_VINEGAR, 10);
	CreateInvItems(self, ITMI_REVIVED_MAGICWATER, 10);
	CreateInvItems(self, ITMI_REVIVED_WARHORN, 10);
	CreateInvItems(self, ITMI_REVIVED_OLDCOIN, 10);
	CreateInvItems(self, ITMI_REVIVED_MAGICORE, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_AMPHORE, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_CUP_01, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_CUP_02, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_MUG, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_PLATE, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_SILVERWARE, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_PIPE, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_IDOL_01, 10);
	CreateInvItems(self, ITMI_REVIVED_STUFF_IDOL_02, 10);

	//******************************************************************//

	// IT_MISSION.d
	CreateInvItems(self, ITMS_REVIVED_BALTRAMPACKAGE_PIRATES, 1);

	//******************************************************************//

	// IT_PLANTS.d
	CreateInvItems(self, ITPL_REVIVED_BERRIES, 1);
	CreateInvItems(self, ITPL_REVIVED_GRAPES, 1);
	CreateInvItems(self, ITPL_REVIVED_RICEPLANT, 1);

	//******************************************************************//

	// IT_POTIONS.d
	CreateInvItems(self, ITPO_REVIVED_HEALTH_01, 20);
	CreateInvItems(self, ITPO_REVIVED_HEALTH_02, 20);
	CreateInvItems(self, ITPO_REVIVED_HEALTH_03, 20);
	CreateInvItems(self, ITPO_REVIVED_MANA_01, 20);
	CreateInvItems(self, ITPO_REVIVED_MANA_02, 20);
	CreateInvItems(self, ITPO_REVIVED_MANA_03, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_HEALTH_01, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_HEALTH_02, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_HEALTH_03, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MANA_01, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MANA_02, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MANA_03, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_STR_01, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_STR_02, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_STR_03, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_DEX_01, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_DEX_02, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_DEX_03, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MASTER_01, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MASTER_02, 20);
	CreateInvItems(self, ITPO_REVIVED_BOOST_MASTER_03, 20);
	CreateInvItems(self, ITPO_REVIVED_SPEED_01, 20);
	CreateInvItems(self, ITPO_REVIVED_SPEED_02, 20);
	CreateInvItems(self, ITPO_REVIVED_SPEED_03, 20);
	CreateInvItems(self, ITPO_REVIVED_SPECIAL_MANA_01, 20);
	CreateInvItems(self, ITPO_REVIVED_SPECIAL_MANA_02, 20);
	CreateInvItems(self, ITPO_REVIVED_SPECIAL_HEALTH_01, 20);
	CreateInvItems(self, ITPO_REVIVED_SPECIAL_HEALTH_02, 20);

	//******************************************************************//

	// IT_RANGED\BOWS.d
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_02, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_03, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_SMALL_05, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_02, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_03, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_05, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_06, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_07, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_08, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_LONG_09, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_02, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_03, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_04, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WAR_05, 1);
	CreateInvItems(self, ITRW_REVIVED_MAGICARROW, 20);
	CreateInvItems(self, ITRW_REVIVED_FIREARROW, 20);
	CreateInvItems(self, ITRW_REVIVED_BOW_MAGIC_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_FIRE_01, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_DIEGO, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_WOLF, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_CAVALORN, 1);
	CreateInvItems(self, ITRW_REVIVED_BOW_BOSPER, 1);

	//******************************************************************//

	// IT_RANGED\CROSSBOWS.d
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_LIGHT_01, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_LIGHT_02, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_01, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_02, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_03, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_04, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_HEAVY_01, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_HEAVY_02, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_HEAVY_03, 1);
	CreateInvItems(self, ITRW_REVIVED_MAGICBOLT, 20);
	CreateInvItems(self, ITRW_REVIVED_FIREBOLT, 20);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_MAGIC_01, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_FIRE_01, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_DRAGOMIR, 1);
	CreateInvItems(self, ITRW_REVIVED_CROSSBOW_SENGRATH, 1);

	//******************************************************************//

	// IT_RINGS.d
	CreateInvItems(self, ITRI_REVIVED_PROT_ARROW_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_ARROW_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MELEE_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MELEE_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_WEAPON_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_WEAPON_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_FIRE_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_FIRE_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_FIRE_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_MAGIC_FIRE_02, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_TOTAL_01, 1);
	CreateInvItems(self, ITRI_REVIVED_PROT_TOTAL_02, 1);
	CreateInvItems(self, ITRI_REVIVED_HP_01, 1);
	CreateInvItems(self, ITRI_REVIVED_HP_02, 1);
	CreateInvItems(self, ITRI_REVIVED_MP_01, 1);
	CreateInvItems(self, ITRI_REVIVED_MP_02, 1);
	CreateInvItems(self, ITRI_REVIVED_HP_MP_01, 1);
	CreateInvItems(self, ITRI_REVIVED_DEX_01, 1);
	CreateInvItems(self, ITRI_REVIVED_DEX_02, 1);
	CreateInvItems(self, ITRI_REVIVED_STR_01, 1);
	CreateInvItems(self, ITRI_REVIVED_STR_02, 1);
	CreateInvItems(self, ITRI_REVIVED_STR_DEX_01, 1);
	CreateInvItems(self, ITAM_REVIVED_MELEE_01, 1);

	//******************************************************************//

	// IT_RUNES.d
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_OC, 1);
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_NC, 1);
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_PSI, 1);
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_DT, 1);

	//******************************************************************//

	// IT_SCROLLS.d
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_CITY, 10);
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_MONASTERY, 10);
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_BIGFARM, 10);
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_XARDAS, 10);
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_TAVERNE, 10);
	CreateInvItems(self, ITSC_REVIVED_TELEPORT_ORC, 10);
	CreateInvItems(self, ITSC_REVIVED_TELEKINESIS, 10);
	CreateInvItems(self, ITSC_REVIVED_CONTROL, 10);
	CreateInvItems(self, ItSc_TrfSheep, 10);
	CreateInvItems(self, ItSc_TrfScavenger, 10);
	CreateInvItems(self, ItSc_TrfGiantRat, 10);
	CreateInvItems(self, ItSc_TrfGiantBug, 10);
	CreateInvItems(self, ItSc_TrfWolf, 10);
	CreateInvItems(self, ItSc_TrfWaran, 10);
	CreateInvItems(self, ItSc_TrfSnapper, 10);
	CreateInvItems(self, ItSc_TrfWarg, 10);
	CreateInvItems(self, ItSc_TrfFireWaran, 10);
	CreateInvItems(self, ItSc_TrfLurker, 10);
	CreateInvItems(self, ItSc_TrfShadowbeast, 10);
	CreateInvItems(self, ItSc_TrfDragonSnapper, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MEATBUG, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MOLERAT, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_BLOODFLY, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_SWAMPDRONE, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MINECRAWLER, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MANTIS, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_BOAR, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_ORCDOG, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_RAZOR, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_CHOMPER, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_BLOODHOUND, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_HELLHOUND, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_PANTHER, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_ALLIGATOR, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_SWAMPSHARK, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_HARPY, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_TROLL, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_GOBLIN, 10);

	//******************************************************************//

	// IT_SPECIAL.d
	CreateInvItems(self, REVIVED_LEARN_ALCHEMY_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_SMITHING_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_BOWMAKING_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_RUNES_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_TROPHIES_ALL, 1);
	CreateInvItems(self, REVIVED_LEARN_TALENTS_ALL, 1);

	//******************************************************************//

	// IT_TROPHY.d
	CreateInvItems(self, ITAT_REVIVED_DAMLURKER, 10);
	CreateInvItems(self, ITAT_REVIVED_CRAWLEREGG, 10);
	CreateInvItems(self, ITAT_REVIVED_SCAVENGEREGG, 10);
	CreateInvItems(self, ITAT_REVIVED_FUR_HELLHOUND, 10);
	CreateInvItems(self, ITAT_REVIVED_FUR_ORCDOG, 10);
	CreateInvItems(self, ITAT_REVIVED_FUR_ICEWOLF, 10);
	CreateInvItems(self, ITAT_REVIVED_FUR_BLACKWOLF, 10);
	CreateInvItems(self, ITAT_REVIVED_FUR_PANTHER, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_SNAPPER, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_DRAGONSNAPPER, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_RAZOR, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_BITER, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_WARAN, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_FIREWARAN, 10);
	CreateInvItems(self, ITAT_REVIVED_SKIN_ALLIGATOR, 10);
	CreateInvItems(self, ITAT_REVIVED_DEMONHEART, 10);
	CreateInvItems(self, ITAT_REVIVED_DEMONLORDHEART, 10);
	CreateInvItems(self, ITAT_REVIVED_GOLEMHEART_FIRE, 1);
	CreateInvItems(self, ITAT_REVIVED_GOLEMHEART_ICE, 1);
	CreateInvItems(self, ITAT_REVIVED_GOLEMHEART_ROCK, 1);
	CreateInvItems(self, ITAT_REVIVED_GOLEMHEART_SWAMP, 1);
	CreateInvItems(self, ITAT_REVIVED_DRAGONHEART_UNDEAD, 1);
	CreateInvItems(self, ITAT_REVIVED_DRAGONHEART_FIRE, 1);
	CreateInvItems(self, ITAT_REVIVED_DRAGONHEART_ICE, 1);
	CreateInvItems(self, ITAT_REVIVED_DRAGONHEART_ROCK, 1);
	CreateInvItems(self, ITAT_REVIVED_DRAGONHEART_SWAMP, 1);

	//******************************************************************//

	// IT_WRITTEN.d
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_01, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_02, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_03, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_04, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_05, 1);
	CreateInvItems(self, ITWR_REVIVED_CIRCLE_KDF_06, 1);
	CreateInvItems(self, ITWR_REVIVED_GIFTFROMTHEGODS, 1);
	CreateInvItems(self, ITWR_REVIVED_SECRETSOFMAGIC, 1);
	CreateInvItems(self, ITWR_REVIVED_POWERFULART, 1);
	CreateInvItems(self, ITWR_REVIVED_ELEMENTARYARCANUM, 1);
	CreateInvItems(self, ITWR_REVIVED_TRUEPOWER, 1);
	CreateInvItems(self, ITWR_REVIVED_MAGICORE, 1);
	CreateInvItems(self, ITWR_REVIVED_ASTRONOMY, 1);
	CreateInvItems(self, ITWR_REVIVED_ARCANUMGOLUM_01, 1);
	CreateInvItems(self, ITWR_REVIVED_ARCANUMGOLUM_02, 1);
	CreateInvItems(self, ITWR_REVIVED_WORDSOFGODS_01, 1);
	CreateInvItems(self, ITWR_REVIVED_WORDSOFGODS_02, 1);
	CreateInvItems(self, ITWR_REVIVED_WORDSOFGODS_03, 1);
	CreateInvItems(self, ITWR_REVIVED_VARANT_01, 1);
	CreateInvItems(self, ITWR_REVIVED_VARANT_02, 1);
	CreateInvItems(self, ITWR_REVIVED_MYRTANAPOETRY, 1);
	CreateInvItems(self, ITWR_REVIVED_HUNTANDPREY, 1);
	CreateInvItems(self, ITWR_REVIVED_BLOODFLIES, 1);
	CreateInvItems(self, ITWR_REVIVED_ARTOFFIGHTING, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPES_01, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPES_02, 1);
	CreateInvItems(self, ITWR_REVIVED_KALOMSRECIPE, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_TURNIPBOOZE, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_VINOSPECIAL, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_MONSTERDRINK, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_MAGEWINE, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_RICESCHNAPPS, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_MEAD, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_MEATSTEW, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_FISHSOUP, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_BUGSOUP, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_ROOTSOUP, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_CRAWLERSOUP, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_RICEBOWL, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_MARMALADE, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_FRUITSALAD, 1);
	CreateInvItems(self, ITWR_REVIVED_RECIPE_OLDSTEW, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_NOORC, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_GAROND, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_DRAGONS, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_VALLEY_CAVES, 1);
	CreateInvItems(self, ITWR_REVIVED_MAP_FOCUS, 1);
	CreateInvItems(self, ITWR_REVIVED_ALMANAC, 1);
	CreateInvItems(self, ITWR_REVIVED_CRYPT, 1);
	CreateInvItems(self, ITWR_REVIVED_CERTIFICATE, 1);

	//******************************************************************//

	// POCKETS.d
	CreateInvItems(self, REVIVED_POCKET_WHITE, 1);
	CreateInvItems(self, REVIVED_POCKET_BLACK, 1);
	CreateInvItems(self, REVIVED_POCKET_BLUE, 1);
	CreateInvItems(self, REVIVED_POCKET_CYAN, 1);
	CreateInvItems(self, REVIVED_POCKET_PURPLE, 1);
	CreateInvItems(self, REVIVED_POCKET_RED, 1);
	CreateInvItems(self, REVIVED_POCKET_YELLOW, 1);
};