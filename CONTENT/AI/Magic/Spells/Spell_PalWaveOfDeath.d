// ***********************
// SPL_PalWaveOfDeath
// Paladin Wave of Death variant, filtered in C_CanNpcCollideWithSpell.
// ***********************

INSTANCE Spell_PalWaveOfDeath(C_Spell_Proto)
{
	time_per_mana		= 0;
	damage_per_level	= SPL_Damage_MassDeath;
	targetCollectAlgo	= TARGET_COLLECT_NONE;
};

INSTANCE Spell_PalWaveOfDeath_Data(C_SPELL_DATA)
{
	spellId				= SPL_PalWaveOfDeath;
	spellType			= SPELL_TYPE_DEFAULT;
	spellEnergyType		= ATR_MANA;
	spellIsInvestSpell	= FALSE;
};

func int Spell_Logic_PalWaveOfDeath(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MassDeath)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalWaveOfDeath()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_MassDeath;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
