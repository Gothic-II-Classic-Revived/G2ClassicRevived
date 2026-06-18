// *************************
// SPL_Explode
// *************************

INSTANCE Spell_Explode (C_Spell_Proto)
{
	time_per_mana			= 0;
	damage_per_level		= SPL_Damage_Explode;
	damageType				= DAM_MAGIC;
};

func int Spell_Logic_Explode(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self))
	&& (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Explode)
	{
		return SPL_SENDCAST;
	};

	return SPL_SENDSTOP;
};

func void Spell_Cast_Explode()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Explode;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
