// --------------------------------------------------------------------------------------------------------
// Mob-Benutzung
// --------------------------------------------------------------------------------------------------------
// Kein Schlüssel oder Dietrich
func void PLAYER_MOB_MISSING_KEY_OR_LOCKPICK()
{
	Print (PRINT_Picklock_or_KeyMissing);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_Say_Overlay (self, self , "$PICKLOCKORKEYMISSING");
};
// Hat keinen Schlüssel
func void PLAYER_MOB_MISSING_KEY()
{
	Print (PRINT_KeyMissing);
	AI_PlayAni	(self,"T_DONTKNOW");
		var int rnd; rnd = Hlp_Random(100);
		if (rnd <= 50)
		{
			B_Say_Overlay (self, self , "$NEEDKEY");
		}
		else
		{
			B_Say_Overlay (self, self , "$KEYMISSING");
		};
};
// Hat keinen Dietrich
func void PLAYER_MOB_MISSING_LOCKPICK()
{
	if (Npc_GetTalentSkill (hero,NPC_TALENT_PICKLOCK) == FALSE)
	{
		Print (PRINT_NoPicklockTalent);
		AI_PlayAni	(self,"T_DONTKNOW");
		B_Say_Overlay (self, self , "$NOPICKLOCKTALENT");
	}
	else
	{
		AI_PlayAni(self,"T_DONTKNOW");
		var int rnd; rnd = Hlp_Random(100);
		if(rnd == 0)
		{
			Print(PRINT_PicklockMissing);
			B_Say_Overlay(self,self,"$PICKLOCKMISSING");
		};
		if(rnd == 1)
		{
			Print(PRINT_NoMorePicklocks);
			B_Say_Overlay(self,self,"$NOMOREPICKS");
		};
	};
};
// Krieg ich niemals auf
func void PLAYER_MOB_NEVER_OPEN()
{
	Print (PRINT_NeverOpen);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_Say_Overlay (self, self , "$NEVEROPEN");
};
// Passendes Interact Item fehlt
func void PLAYER_MOB_MISSING_ITEM()
{
	Print (PRINT_MissingItem);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_Say_Overlay (self, self , "$MISSINGITEM");
};
// Wird bereits vom NSC benutzt
func void PLAYER_MOB_ANOTHER_IS_USING()
{
	Print (PRINT_AnotherUser);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_Say_Overlay (self, self , "$DONTKNOW");
};
// Bin zu weit weg, um den MOB zu benutzen
func void PLAYER_MOB_TOO_FAR_AWAY()
{
	Print (PRINT_Toofar_Away);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_Say_Overlay (self, self , "$DONTKNOW");
};
// Falsche Seite für Benutzung
func void PLAYER_MOB_WRONG_SIDE()
{
	Print (PRINT_WrongSide);
	AI_PlayAni	(self,"T_DONTKNOW");
	B_Say_Overlay (self, self , "$DONTKNOW");
};

// --------------------------------------------------------------------------------------------------------
// Trade
// --------------------------------------------------------------------------------------------------------
// Nicht genug Gold um den Gegenstand zu kaufen.
func void PLAYER_TRADE_NOT_ENOUGH_GOLD()
{
	Print (PRINT_Trade_Not_Enough_Gold);
	AI_PlayAni	(other,"R_SCRATCHHEAD");
	AI_PlayAni	(self,"T_NO");
};

// --------------------------------------------------------------------------------------------------------
// Ammo
// --------------------------------------------------------------------------------------------------------
func void PLAYER_RANGED_NO_AMMO()
{
	var C_Item rangedWeapon;
	if(Npc_IsPlayer(self))
	{
		if(Npc_HasEquippedRangedWeapon(self))
		{
			rangedWeapon = Npc_GetEquippedRangedWeapon(self);
			if(rangedWeapon.flags & ITEM_CROSSBOW)
			{
				Print(PRINT_Ranged_No_Ammo_Crossbow);
				B_Say_Overlay (self, self , "$MISSINGITEM");
			}
			else if(rangedWeapon.flags & ITEM_BOW)
			{
				Print(PRINT_Ranged_No_Ammo_Bow);
				B_Say_Overlay (self, self , "$MISSINGITEM");
			};
		};
	};
};