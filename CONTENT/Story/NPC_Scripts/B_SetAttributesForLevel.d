// *************************************
// B_SetAttributesForLevel
// -------------------------------------
// Sets the attributes appropriate for the given level.
// This should act as a more balanced idea than B_SetAttributesToChapter.
// *************************************

func void B_SetAttributesForLevel (var C_NPC slf, var int level)
{
	slf.level = level;
		
	slf.attribute[ATR_STRENGTH] 		= level * 3;
	slf.aivar[REAL_STRENGTH]			= slf.attribute[ATR_STRENGTH];
	slf.attribute[ATR_DEXTERITY] 		= level * 3;
	slf.aivar[REAL_DEXTERITY]			= slf.attribute[ATR_DEXTERITY];
	slf.attribute[ATR_MANA_MAX] 		= level * 12;
	slf.aivar[REAL_MANA_MAX]			= slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_MANA] 			= level * 12;
	slf.attribute[ATR_HITPOINTS_MAX] 	= level * 12;
	slf.attribute[ATR_HITPOINTS] 		= level * 12;
	
	if (level <= 5) {
		B_SetFightSkills (self, 10);
	}
	else if (level > 5 && level < 15) {
		B_SetFightSkills (self, 20);
	}
	else if (level >= 15 && level < 25) {
		B_SetFightSkills (self, 30);
	}
	else if (level >= 25 && level < 35) {
		B_SetFightSkills (self, 40);
	}
	else if (level >= 35 && level < 45) {
		B_SetFightSkills (self, 50);
	}
	else if (level >= 45 && level < 55) {
		B_SetFightSkills (self, 60);
	}
	else if (level >= 55 && level < 65) {
		B_SetFightSkills (self, 70);
	}
	else if (level >= 65 && level < 75) {
		B_SetFightSkills (self, 80);
	}
	else if (level >= 75 && level < 85) {
		B_SetFightSkills (self, 90);
	}
	else if (level >= 85) {
		B_SetFightSkills (self, 100);
	};

	slf.exp				= (500*((slf.level+1)/2)*(slf.level+1));
	slf.exp_next		= (500*((slf.level+2)/2)*(slf.level+1));
};

// *************************************
// B_SetMonsterAttributesForLevel
// -------------------------------------
// Sets the attributes appropriate for the given level.
// Different math than the function used for human NPCs.
// *************************************

func void B_SetMonsterAttributesForLevel (var C_NPC slf, var int level)
{
	slf.level = level;
		
	slf.attribute[ATR_STRENGTH] 		= level * 5;
	slf.aivar[REAL_STRENGTH]			= slf.attribute[ATR_STRENGTH];
	slf.attribute[ATR_DEXTERITY] 		= level * 5;
	slf.aivar[REAL_DEXTERITY]			= slf.attribute[ATR_DEXTERITY];
	slf.attribute[ATR_MANA_MAX] 		= level * 15;
	slf.aivar[REAL_MANA_MAX]			= slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_MANA] 			= level * 15;
	slf.attribute[ATR_HITPOINTS_MAX] 	= level * 10;
	slf.attribute[ATR_HITPOINTS] 		= level * 10;
	
		B_SetFightSkills (self, 100);

	slf.exp				= (500*((slf.level+1)/2)*(slf.level+1));
	slf.exp_next		= (500*((slf.level+2)/2)*(slf.level+1));
};
