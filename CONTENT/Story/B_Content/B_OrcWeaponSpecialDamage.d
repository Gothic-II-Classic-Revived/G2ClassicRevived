
// *******************************
// REV_IsOrcWeaponCreatureTarget
// *******************************
func int REV_IsOrcWeaponCreatureTarget(var C_NPC slf)
{
	if (slf.guild == GIL_SHADOWBEAST)
	|| (slf.guild == GIL_TROLL)
	|| (slf.guild == GIL_SWAMPSHARK)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
	{
		return TRUE;
	};

	return FALSE;
};

// *******************************
// REV_GetOrcWeaponCreatureBonus
// *******************************
func int REV_GetOrcWeaponCreatureBonus(var C_ITEM weap)
{
	if (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_01) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_01_R) == TRUE)
	{
		return REV_Damage_OrcWeapon_Creature_01;
	};

	if (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_02) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_02_R) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_03) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_03_R) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_MACE_01) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_01) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_03) == TRUE)
	{
		return REV_Damage_OrcWeapon_Creature_02;
	};

	if (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_04) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_AXE_04_R) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_02) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_KEY_01) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_KEY_02) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_KEY_03) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_KEY_04) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_ORC_SWORD_KEY_05) == TRUE)
	{
		return REV_Damage_OrcWeapon_Creature_03;
	};

	return 0;
};

// *******************************
// REV_OrcWeaponCreatureDamage
// *******************************
func void REV_OrcWeaponCreatureDamage(var C_NPC oth, var C_NPC slf)
{
	if (slf.flags == NPC_FLAG_IMMORTAL)
	{
		return;
	};

	if (REV_IsOrcWeaponCreatureTarget(slf) == FALSE)
	{
		return;
	};

	var C_ITEM readyWeap; readyWeap = Npc_GetReadiedWeapon(oth);
	var int bonusDamage; bonusDamage = REV_GetOrcWeaponCreatureBonus(readyWeap);

	if (bonusDamage > 0)
	{
		B_MagicHurtNpc(oth, slf, bonusDamage);
	};
};
