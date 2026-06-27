INSTANCE PC_MageTest(NPC_DEFAULT)
// PlayerInstanz
{
	//-------- primary data --------
	name 			= "Magic Dude";
	Npctype			= NPCTYPE_MAIN;
	guild			= GIL_NONE;
	voice			= 15;
	id				= 0;
	
	self.aivar[AIV_INVINCIBLE] = true;
	
	//--------- abilities --------
	B_SetAttributesForLevel(self, 500);	
	bodyStateInterruptableOverride = TRUE;

	//-------- visuals --------
	B_SetNpcFullVisual (self, MALE, "Hum_Head_Pony", Face_Special_Hero, Body_Special_Hero2, Body_Player, Teeth_Normal, NO_ARMOR);	
	
	Npc_SetTalentSkill	(self, NPC_TALENT_MAGE, 			6);
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK, 		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SNEAK, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ACROBAT, 			1);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKPOCKET, 		1);
	Npc_SetTalentSkill	(self, NPC_TALENT_SMITH, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_RUNES, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ALCHEMY, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TAKEANIMALTROPHY,	1);

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
	PLAYER_TALENT_RUNES[SPL_LargeFireStorm] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firestorm] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceWave] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonDemon] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_FullHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firerain] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_BreathOfDeath] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_MassDeath] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ArmyOfDarkness] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Shrink] 				= TRUE;
	
	//-------- inventory --------
	EquipItem (self, ITMW_REVIVED_2H_MAGESTAFF_GREAT_01);

	//******************************************************************//

	CreateInvItems(self,ItRu_PalLight, 1);
	CreateInvItems(self,ItRu_PalLightHeal, 1);
	CreateInvItems(self,ItRu_PalHolyBolt, 1);
	CreateInvItems(self,ItRu_PalMediumHeal, 1);
	CreateInvItems(self,ItRu_PalRepelEvil, 1);
	CreateInvItems(self,ItRu_PalFullHeal, 1);
	CreateInvItems(self,ItRu_PalDestroyEvil, 1);
	
	CreateInvItems(self,ItRu_TeleportSeaport, 1);
	CreateInvItems(self,ItRu_TeleportMonastery, 1);
	CreateInvItems(self,ItRu_TeleportFarm, 1);
	CreateInvItems(self,ItRu_TeleportXardas, 1);
	CreateInvItems(self,ItRu_TeleportPassNW, 1);
	CreateInvItems(self,ItRu_TeleportPassOW, 1);
	CreateInvItems(self,ItRu_TeleportOC, 1);
	//CreateInvItems(self,ItRu_Teleport_1, 1);
	//CreateInvItems(self,ItRu_Teleport_2, 1);
	CreateInvItems(self,ItRu_Teleport_3, 1);
	CreateInvItems(self,ItRu_Light, 1);
	CreateInvItems(self,ItRu_Firebolt, 1);
	CreateInvItems(self,ItRu_Icebolt, 1);
	CreateInvItems(self,ItRu_LightHeal, 1);
	CreateInvItems(self,ItRu_SumGobSkel, 1);
	CreateInvItems(self,ItRu_InstantFireball, 1);
	CreateInvItems(self,ItRu_Zap, 1);
	CreateInvItems(self,ItRu_SumWolf, 1);
	CreateInvItems(self,ItRu_Windfist, 1);
	CreateInvItems(self,ItRu_Sleep, 1);
	CreateInvItems(self,ItRu_MediumHeal, 1);
	CreateInvItems(self,ItRu_LightningFlash, 1);
	CreateInvItems(self,ItRu_ChargeFireball, 1);
	CreateInvItems(self,ItRu_SumSkel, 1);
	CreateInvItems(self,ItRu_Fear, 1);
	CreateInvItems(self,ItRu_IceCube, 1);
	CreateInvItems(self,ItRu_ThunderBall, 1);
	CreateInvItems(self,ItRu_SumGol, 1);
	CreateInvItems(self,ItRu_HarmUndead, 1);
	CreateInvItems(self,ItRu_LargeFireStorm, 1);
	CreateInvItems(self,ItRu_Firestorm, 1);
	CreateInvItems(self,ItRu_IceWave, 1);
	CreateInvItems(self,ItRu_SumDemon, 1);
	CreateInvItems(self,ItRu_FullHeal, 1);
	CreateInvItems(self,ItRu_Firerain, 1);
	CreateInvItems(self,ItRu_BreathOfDeath, 1);
	CreateInvItems(self,ItRu_MassDeath, 1);
	CreateInvItems(self,ItRu_MasterOfDisaster, 1);
	CreateInvItems(self,ItRu_ArmyOfDarkness, 1);
	CreateInvItems(self,ItRu_Shrink, 1);

	//******************************************************************//

	CreateInvItems(self,ItSc_PalLight, 10);
	CreateInvItems(self,ItSc_PalLightHeal, 10);
	CreateInvItems(self,ItSc_PalHolyBolt, 10);
	CreateInvItems(self,ItSc_PalMediumHeal, 10);
	CreateInvItems(self,ItSc_PalRepelEvil, 10);
	CreateInvItems(self,ItSc_PalFullHeal, 10);
	CreateInvItems(self,ItSc_PalDestroyEvil, 10);
	
	CreateInvItems(self,ItSc_Charm, 10);
	CreateInvItems(self,ItSc_Light, 10);
	CreateInvItems(self,ItSc_Firebolt, 10);
	CreateInvItems(self,ItSc_Icebolt, 10);
	CreateInvItems(self,ItSc_LightHeal, 10);
	CreateInvItems(self,ItSc_SumGobSkel, 10);
	CreateInvItems(self,ItSc_InstantFireball, 10);
	CreateInvItems(self,ItSc_Zap, 10);
	CreateInvItems(self,ItSc_SumWolf, 10);
	CreateInvItems(self,ItSc_Windfist, 10);
	CreateInvItems(self,ItSc_Sleep, 10);
	CreateInvItems(self,ItSc_MediumHeal, 10);
	CreateInvItems(self,ItSc_LightningFlash, 10);
	CreateInvItems(self,ItSc_ChargeFireball, 10);
	CreateInvItems(self,ItSc_SumSkel, 10);
	CreateInvItems(self,ItSc_Fear, 10);
	CreateInvItems(self,ItSc_IceCube, 10);
	CreateInvItems(self,ItSc_ThunderBall, 10);
	CreateInvItems(self,ItSc_SumGol, 10);
	CreateInvItems(self,ItSc_HarmUndead, 10);
	CreateInvItems(self,ItSc_LargeFireStorm, 10);
	CreateInvItems(self,ItSc_Firestorm, 10);
	CreateInvItems(self,ItSc_IceWave, 10);
	CreateInvItems(self,ItSc_SumDemon, 10);
	CreateInvItems(self,ItSc_FullHeal, 10);
	CreateInvItems(self,ItSc_Firerain, 10);
	CreateInvItems(self,ItSc_BreathOfDeath, 10);
	CreateInvItems(self,ItSc_MassDeath, 10);
	CreateInvItems(self,ItSc_ArmyOfDarkness, 10);
	CreateInvItems(self,ItSc_Shrink, 10);

	//******************************************************************//

	// IT_RUNES.d
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_OC, 1);
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_NC, 1);
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_PSI, 1);
	CreateInvItems(self, ITRU_REVIVED_TELEPORT_DT, 1);
	CreateInvItems(self, ITRU_REVIVED_PYROKINESIS, 1);
	CreateInvItems(self, ITRU_REVIVED_HEALOTHER, 1);
	CreateInvItems(self, ITRU_REVIVED_EXPLODE, 1);
	CreateInvItems(self, ITRU_REVIVED_EXTRICATE, 1);
	CreateInvItems(self, ITRU_REVIVED_EARTHQUAKE, 1);
	CreateInvItems(self, ITRU_REVIVED_MANARECOVERY, 1);
	CreateInvItems(self, ITRU_REVIVED_FIREFIST, 1);
	CreateInvItems(self, ITRU_REVIVED_FIREWAVE, 1);
	CreateInvItems(self, ITRU_REVIVED_CONCUSSIONBOLT, 1);
	CreateInvItems(self, ITRU_REVIVED_INFLATE, 1);
	CreateInvItems(self, ITRU_REVIVED_SUMMONSKELETONS, 1);

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
	CreateInvItems(self, ITSC_REVIVED_PYROKINESIS, 10);
	CreateInvItems(self, ITSC_REVIVED_HEALOTHER, 10);
	CreateInvItems(self, ITSC_REVIVED_EXPLODE, 10);
	CreateInvItems(self, ITSC_REVIVED_EXTRICATE, 10);
	CreateInvItems(self, ITSC_REVIVED_EARTHQUAKE, 10);
	CreateInvItems(self, ITSC_REVIVED_MANARECOVERY, 10);
	CreateInvItems(self, ITSC_REVIVED_FIREFIST, 10);
	CreateInvItems(self, ITSC_REVIVED_FIREWAVE, 10);
	CreateInvItems(self, ITSC_REVIVED_CONCUSSIONBOLT, 10);
	CreateInvItems(self, ITSC_REVIVED_INFLATE, 10);
	CreateInvItems(self, ITSC_REVIVED_SUMMONSKELETONS, 10);
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
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MINECRAWLER, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_ORCDOG, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_SWAMPDRONE, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_MANTIS, 10);
	CreateInvItems(self, ITSC_REVIVED_TRANSFORM_BOAR, 10);
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
};