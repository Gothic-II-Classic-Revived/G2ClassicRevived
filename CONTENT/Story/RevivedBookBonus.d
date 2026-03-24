func void REV_ReadBook(var int bookType)
{
	if(bookType == BookType_Alchemy)
	{
		if(Read_BookstandAlchemy < Read_BookstandAlchemy_Max)
		{
			Read_BookstandAlchemy += 1;

			if(Read_BookstandAlchemy == Read_BookstandAlchemy_Max)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
				B_LogEntry(TOPIC_TalentAlchemy, LOGENTRY_RECIPE_HEALTH_04);
				
				PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
				B_LogEntry(TOPIC_TalentAlchemy, LOGENTRY_RECIPE_MANA_04);

				PrintScreen (Print_TalentFromBookstand, -1, 65, FONT_Screen, 2);
				Snd_Play ("MFX_Light_Cast");

				B_Say(hero, hero, "$VERSTEHE");
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandAlchemy);
			};
		};
	}
	else if(bookType == BookType_Runemaking)
	{
		if(Read_BookstandRunemaking < Read_BookstandRunemaking_Max)
		{
			Read_BookstandRunemaking += 1;

			if(Read_BookstandRunemaking == Read_BookstandRunemaking_Max)
			{
				// Runemaking Bonus
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandRunemaking);
			};
		};
	}
	else if(bookType == BookType_Runes)
	{
		if(Read_BookstandRunes < Read_BookstandRunes_Max)
		{
			Read_BookstandRunes += 1;

			if(Read_BookstandRunes == Read_BookstandRunes_Max)
			{
				var int HeroTalentMage; HeroTalentMage = Npc_GetTalentSkill(hero, NPC_TALENT_MAGE);
				if(HeroTalentMage <= 5)
				{
					Npc_SetTalentSkill	(hero, NPC_TALENT_MAGE, HeroTalentMage + 1);
					PrintScreen (Print_TalentFromBookstand, -1, 65, FONT_Screen, 2);
				}
				else
				{
					B_RaiseAttribute (hero, ATR_MANA_MAX, 30);
					PrintScreen (Print_LearnFromBookstand, -1, 65, FONT_Screen, 2);
				};
							
				Snd_Play ("MFX_Light_Cast");

				B_Say(hero, hero, "$VERSTEHE");
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandRunes);
			};
		};
	}
	else if(bookType == BookType_Astronomy)
	{
		if(Read_BookstandAstronomy < Read_BookstandAstronomy_Max)
		{
			Read_BookstandAstronomy += 1;

			if(Read_BookstandAstronomy == Read_BookstandAstronomy_Max)
			{
				// Astronomy Bonus
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandAstronomy);
			};
		};
	}
	else if(bookType == BookType_Magic)
	{
		if(Read_BookstandMagic < Read_BookstandMagic_Max)
		{
			Read_BookstandMagic += 1;

			if(Read_BookstandMagic == Read_BookstandMagic_Max)
			{
				B_RaiseAttribute (hero, ATR_MANA_MAX, 20);
							
				PrintScreen (Print_LearnFromBookstand, -1, 65, FONT_Screen, 2);
				Snd_Play ("MFX_Light_Cast");

				B_Say(hero, hero, "$VERSTEHE");
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandMagic);
			};
		};
	}
	else if(bookType == BookType_Hunting)
	{
		if(Read_BookstandHunting < Read_BookstandHunting_Max)
		{
			Read_BookstandHunting += 1;

			if(Read_BookstandHunting == Read_BookstandHunting_Max)
			{
				// Hunting Bonus
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandHunting);
			};
		};
	}
	else if(bookType == BookType_Combat)
	{
		if(Read_BookstandCombat < Read_BookstandCombat_Max)
		{
			Read_BookstandCombat += 1;

			if(Read_BookstandCombat == Read_BookstandCombat_Max)
			{
				B_RaiseFightTalent(hero, NPC_TALENT_1H, 5);
				B_RaiseFightTalent(hero, NPC_TALENT_2H, 5);
				B_RaiseFightTalent(hero, NPC_TALENT_BOW, 5);
				B_RaiseFightTalent(hero, NPC_TALENT_CROSSBOW, 5);
							
				PrintScreen (Print_TalentFromBookstand, -1, 65, FONT_Screen, 2);
				Snd_Play ("MFX_Light_Cast");

				B_Say(hero, hero, "$VERSTEHE");
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandCombat);
			};
		};
	}
	else if(bookType == BookType_History)
	{
		if(Read_BookstandHistory < Read_BookstandHistory_Max)
		{
			Read_BookstandHistory += 1;

			if(Read_BookstandHistory == Read_BookstandHistory_Max)
			{
				B_GivePlayerXP (3000 * Kapitel);
							
				PrintScreen (Print_XPFromBookstand, -1, 65, FONT_Screen, 2);
				Snd_Play ("MFX_Light_Cast");

				B_Say(hero, hero, "$VERSTEHE");
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandHistory);
			};
		};
	}
	else if(bookType == BookType_Teachings)
	{
		if(Read_BookstandTeachings < Read_BookstandTeachings_Max)
		{
			Read_BookstandTeachings += 1;

			if(Read_BookstandTeachings == Read_BookstandTeachings_Max)
			{
				// Teachings Bonus
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandTeachings);
			};
		};
	}
	else if(bookType == BookType_Special)
	{
		if(Read_BookstandSpecial < Read_BookstandSpecial_Max)
		{
			Read_BookstandSpecial += 1;

			if(Read_BookstandSpecial == Read_BookstandSpecial_Max)
			{
				// Special Bonus
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandSpecial);
			};
		};
	}
	else if(bookType == BookType_Personal)
	{
		if(Read_BookstandPersonal < Read_BookstandPersonal_Max)
		{
			Read_BookstandPersonal += 1;

			if(Read_BookstandPersonal == Read_BookstandPersonal_Max)
			{
				// Personal Bonus
			}
			else 
			{
				B_GivePlayerXP (XP_BookstandPersonal);
			};
		};
	};
};