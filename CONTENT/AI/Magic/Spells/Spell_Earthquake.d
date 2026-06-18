// *************************
// SPL_Earthquake
// *************************

INSTANCE Spell_Earthquake (C_Spell_Proto)
{
	time_per_mana			= 0;
	damage_per_level		= SPL_Damage_Earthquake;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
};

func int Spell_Logic_Earthquake(var int manaInvested)
{
	if (manaInvested >= 1)
	{
		return SPL_SENDCAST;
	};

	if (Npc_GetActiveSpellIsScroll(self))
	&& (self.attribute[ATR_MANA] >= SPL_Cost_Scroll)
	{
		return SPL_NEXTLEVEL;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Earthquake)
	{
		return SPL_NEXTLEVEL;
	};

	return SPL_SENDSTOP;
};

func void Spell_Cast_Earthquake()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Earthquake;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
