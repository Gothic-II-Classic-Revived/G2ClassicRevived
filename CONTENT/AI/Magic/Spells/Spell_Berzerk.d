// ***************
// SPL_Berzerk
// Sequel psionic Berserk.
// ***************

instance Spell_Berzerk(C_Spell_Proto)
{
	time_per_mana			= 125.0;
	spelltype				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;
	targetCollectType		= TARGET_TYPE_NPCS;
};

INSTANCE Spell_Berzerk_Data(C_SPELL_DATA)
{
	spellId					= SPL_Berzerk;
	spellType				= SPELL_TYPE_DEFAULT;
	spellEnergyType			= ATR_MANA;
	spellIsInvestSpell		= TRUE;
};

func int Spell_Logic_Berzerk(var int manaInvested)
{
	// Sequel immunity set, mapped to the Gothic 2 guild split.
	if (other.guild == GIL_TROLL)
	|| (other.guild == GIL_DEMON)
	|| (other.guild == GIL_SUMMONED_DEMON)
	|| (other.guild == GIL_STONEGOLEM)
	|| (other.guild == GIL_ICEGOLEM)
	|| (other.guild == GIL_FIREGOLEM)
	|| (other.guild == GIL_SWAMPGOLEM)
	|| (other.guild == GIL_SUMMONED_GOLEM)
	|| (C_NpcIsUndead(other))
	{
		return SPL_SENDSTOP;
	}
	else
	{
		if (manaInvested >= SPL_SENDCAST_BERZERK)
		{
			Npc_SendSinglePerc(self, other, PERC_ASSESSMAGIC);
			return SPL_SENDCAST;
		}
		else
		{
			return SPL_RECEIVEINVEST;
		};
	};
};

func void Spell_Cast_Berzerk()
{
};
