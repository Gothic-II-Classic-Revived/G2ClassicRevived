// *************************
// SPL_HealOther
// *************************

INSTANCE Spell_HealOther (C_Spell_Proto)
{
	time_per_mana			= 0;
	spelltype				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_HealOther(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self))
	&& (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_HealOther)
	{
		return SPL_SENDCAST;
	};

	return SPL_SENDSTOP;
};

func void Spell_Cast_HealOther()
{
	Npc_ChangeAttribute(other, ATR_HITPOINTS, +SPL_Heal_HealOther);
	Wld_PlayEffect("spellFX_HealOther_TARGET", other, other, 0, 0, 0, 0);

	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_HealOther;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
