// *************************
// REV_GetUndeadWeaponBonus
// *************************
func int REV_GetUndeadWeaponBonus(var C_ITEM weap)
{
	if (Hlp_IsItem(weap, ITMW_REVIVED_1H_SWORD_PALADIN_02) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_2H_SWORD_PALADIN_02) == TRUE)
	{
		return REV_Damage_Undead_Blessed;
	};

	if (Hlp_IsItem(weap, ITMW_REVIVED_1H_SWORD_PALADIN_03) == TRUE)
	|| (Hlp_IsItem(weap, ITMW_REVIVED_2H_SWORD_PALADIN_03) == TRUE)
	{
		return REV_Damage_Undead_Holy;
	};

	return 0;
};

// *************************
// REV_PalWeaponUndeadDamage
// *************************
func void REV_PalWeaponUndeadDamage(var C_NPC oth, var C_NPC slf)
{
	if (slf.flags == NPC_FLAG_IMMORTAL)
	{
		return;
	};

    if (slf.guild != GIL_GOBBO_SKELETON)
    && (slf.guild != GIL_SKELETON)
    && (slf.guild != GIL_SKELETON_MAGE)
    && (slf.guild != GIL_ZOMBIE)
    && (slf.guild != GIL_SHADOWBEAST_SKELETON)
    && (slf.guild != GIL_UNDEADORC)
    && (slf.guild != GIL_FANATIC)
	{
		return;
	};

	var C_ITEM readyWeap; readyWeap = Npc_GetReadiedWeapon(oth);
	var int bonusDamage; bonusDamage = REV_GetUndeadWeaponBonus(readyWeap);

	if (bonusDamage > 0)
	{
		Wld_PlayEffect("spellFX_PalRepelEvil_COLLIDE", slf, slf, 0, 0, 0, FALSE );
		B_MagicHurtNpc(oth, slf, bonusDamage);
	};
};