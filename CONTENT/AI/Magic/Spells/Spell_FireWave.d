// ************
// SPL_FireWave
// ************

const int SPL_Cost_FireWave      = 120;
const int SPL_Damage_FireWave    = 60;

INSTANCE Spell_FireWave (C_Spell_Proto)
{
	time_per_mana       = 0;
	damage_per_level   = SPL_Damage_FireWave;
	damageType         = DAM_MAGIC;
	targetCollectAlgo  = TARGET_COLLECT_NONE;
};

INSTANCE Spell_FireWave_Data(C_SPELL_DATA)
{
	spellId             = SPL_FireWave;
	spellType           = SPELL_TYPE_SPREAD;
	spellEnergyType     = ATR_MANA;
	spellIsInvestSpell  = FALSE;
};

func int Spell_Logic_FireWave(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_FireWave)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_FireWave()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_FireWave;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
