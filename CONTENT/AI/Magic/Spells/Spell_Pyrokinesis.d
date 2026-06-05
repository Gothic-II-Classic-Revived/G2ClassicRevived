// ***************
// SPL_Pyrokinesis
// Gothic 1 psionic Pyrokinesis, separate from G2 SPL_LargeFireStorm.
// ***************

INSTANCE Spell_Pyrokinesis(C_Spell_Proto)
{
	time_per_mana			= 250;
	damage_per_level		= 0;
	spelltype				= SPELL_BAD;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;
	targetCollectType		= TARGET_TYPE_NPCS;
};

INSTANCE Spell_Pyrokinesis_Data(C_SPELL_DATA)
{
	spellId					= SPL_Pyrokinesis;
	spellType				= SPELL_TYPE_DEFAULT;
	spellEnergyType			= ATR_MANA;
	spellIsInvestSpell		= TRUE;
};

func int Spell_Logic_Pyrokinesis(var int manaInvested)
{
	if (Npc_IsDead(other))
	|| (Npc_IsInState(other, ZS_Unconscious))
	|| (C_BodyStateContains(other, BS_SWIM))
	|| (C_BodyStateContains(other, BS_DIVE))
	|| (other.flags == NPC_FLAG_IMMORTAL)
	|| (C_NpcIsUndead(other))
	|| (other.guild == GIL_STONEGOLEM)
	|| (other.guild == GIL_ICEGOLEM)
	|| (other.guild == GIL_FIREGOLEM)
	|| (other.guild == GIL_SWAMPGOLEM)
	|| (other.guild == GIL_SUMMONED_GOLEM)
	|| (other.guild == GIL_DEMON)
	|| (other.guild == GIL_SUMMONED_DEMON)
	{
		return SPL_SENDSTOP;
	};

	return SPL_NEXTLEVEL;
};

func void Spell_Cast_Pyrokinesis()
{
};
