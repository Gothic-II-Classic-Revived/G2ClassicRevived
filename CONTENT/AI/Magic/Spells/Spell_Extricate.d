// *************************
// SPL_Extricate
// *************************

INSTANCE Spell_Extricate (C_Spell_Proto)
{
	time_per_mana			= 0;
	damage_per_level		= SPL_Damage_Extricate;
	damageType				= DAM_FIRE|DAM_FLY;
	canTurnDuringInvest		= 1;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
};

func int Spell_Logic_Extricate(var int manaInvested)
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
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Extricate)
	{
		return SPL_NEXTLEVEL;
	};

	return SPL_SENDSTOP;
};

func void Spell_Cast_Extricate()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Extricate;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
