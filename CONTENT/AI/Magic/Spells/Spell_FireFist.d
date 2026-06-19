// ************
// SPL_FireFist
// ************

const int SPL_Cost_FireFist      = 80; //4*20
const int STEP_FireFist          = 20;
const int SPL_Damage_FireFist    = 50;

INSTANCE Spell_FireFist (C_Spell_Proto)
{
	time_per_mana          = 30;
	damage_per_level      = SPL_Damage_FireFist;
	damageType            = DAM_FIRE|DAM_FLY;
	canTurnDuringInvest   = TRUE;

	targetCollectAlgo     = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange    = 1000;
	targetCollectType     = TARGET_TYPE_NPCS;
};

func int Spell_Logic_FireFist(var int manaInvested)
{
	if (self.attribute[ATR_MANA] < STEP_FireFist)
	{
		return SPL_DONTINVEST;
	};

	if (manaInvested <= STEP_FireFist * 1)
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if (manaInvested > (STEP_FireFist * 1))
	&& (self.aivar[AIV_SpellLevel] <= 1)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - STEP_FireFist;

		if (self.attribute[ATR_MANA] < 0)
		{
			self.attribute[ATR_MANA] = 0;
		};

		self.aivar[AIV_SpellLevel] = 2;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_FireFist * 2))
	&& (self.aivar[AIV_SpellLevel] <= 2)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - STEP_FireFist;

		if (self.attribute[ATR_MANA] < 0)
		{
			self.attribute[ATR_MANA] = 0;
		};

		self.aivar[AIV_SpellLevel] = 3;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_FireFist * 3))
	&& (self.aivar[AIV_SpellLevel] <= 3)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - STEP_FireFist;

		if (self.attribute[ATR_MANA] < 0)
		{
			self.attribute[ATR_MANA] = 0;
		};

		self.aivar[AIV_SpellLevel] = 4;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_FireFist * 3))
	&& (self.aivar[AIV_SpellLevel] == 4)
	{
		return SPL_DONTINVEST;
	};

	return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_FireFist(var int spellLevel)
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - STEP_FireFist;

	if (self.attribute[ATR_MANA] < 0)
	{
		self.attribute[ATR_MANA] = 0;
	};

	self.aivar[AIV_SelectSpell] += 1;
};
