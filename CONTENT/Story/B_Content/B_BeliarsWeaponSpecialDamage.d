
// *********************
// C_IsItemBeliarsWeapon
// *********************
func int C_IsItemBeliarsWeapon(var C_ITEM Weap)
{	
	if (Hlp_IsItem(Weap, ItMw_BeliarWeapon_Raven) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_05) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_06) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_07) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_08) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_09) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_10) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_11) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_12) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_13) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_14) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_15) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_16) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_17) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_18) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_19) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_1H_20) == TRUE)

	//------------------------------------------------------

	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_01) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_02) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_03) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_04) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_05) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_06) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_07) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_08) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_09) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_10) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_11) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_12) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_13) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_14) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_15) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_16) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_17) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_18) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_19) == TRUE)
	|| (Hlp_IsItem(Weap, ItMw_BeliarWeapon_2H_20) == TRUE)


	//------------------------------------------------------

	|| (Hlp_IsItem(Weap, ItRu_BeliarsRage) 	== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_SuckEnergy) 		== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_GreenTentacle) 	== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_Swarm) 			== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_Skull) 			== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_SummonZombie) 	== TRUE)
	|| (Hlp_IsItem(Weap, ItRu_SummonGuardian) 	== TRUE)
	{
		return TRUE;
	};

	return FALSE; //DEFAULT
};	

// ***************************
// C_ScHasReadiedBeliarsWeapon
// ***************************
func int C_ScHasReadiedBeliarsWeapon ()
{	
	var C_ITEM ReadyWeap; ReadyWeap = Npc_GetReadiedWeapon(hero);
	
	if (C_IsItemBeliarsWeapon(ReadyWeap))
	{
		return TRUE;
	};
	
	return FALSE; //DEFAULT
};


// ***************************
// B_BeliarsWeaponSpecialDamage
// ***************************
var int RavenBlitz;

func void B_BeliarsWeaponSpecialDamage (var C_NPC oth, var C_NPC slf) //other ist angreifer, slf ist victim
{
	/* if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Raven)) //HACK: egal, welche Waffe Raven hat
	{
		//Ambient Pfx
		Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE", slf, slf, 0, 0, 0, FALSE );
			
			if (RavenBlitz <= 0)
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",  oth, oth, 0, 0, 0, FALSE );
								
				B_MagicHurtNpc (slf, oth, 50); //Extraschaden von Raven!
				
				RavenBlitz += 1;
			}
			else if (RavenBlitz >= 3) 
			{
				var int RavenRandy; RavenRandy = Hlp_Random(3);
				if (RavenRandy <= 50)
				{
					RavenBlitz = 0; //wieder von vorne
				};
			}
			else
			{
				RavenBlitz += 1;
			};
			
	}
	else  */if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		var int DamageRandy;
		DamageRandy = Hlp_Random (100);

		if (C_ScHasReadiedBeliarsWeapon())
		&& (DamageRandy <= BeliarDamageChance) 
			{
				if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD) //beim untoten Drachen nimmt der SC Schaden
				{
					Wld_PlayEffect("spellFX_BELIARSRAGE", oth, oth, 0, 0, 0, FALSE );
					B_MagicHurtNpc (slf, oth, 100); 
				}
				else if (slf.flags != NPC_FLAG_IMMORTAL)
				{
					Wld_PlayEffect("spellFX_BELIARSRAGE", slf, slf, 0, 0, 0, FALSE );
					B_MagicHurtNpc (oth, slf, 100);  			
				};
				//Ambient Pfx
				Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE", hero, hero, 0, 0, 0, FALSE );
			};
	
		if (C_ScHasReadiedBeliarsWeapon())
		&& (DamageRandy <= 50) // Effekt
		{
				//Ambient Pfx
				Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE", hero, hero, 0, 0, 0, FALSE );
		};
	};
};
