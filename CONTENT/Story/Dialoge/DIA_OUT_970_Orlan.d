///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Orlan_EXIT   (C_INFO)
{
	npc         = OUT_970_ORLAN;
	nr          = 999;
	condition   = DIA_Orlan_EXIT_Condition;
	information = DIA_Orlan_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Orlan_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Orlan_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Wein
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_Wein		(C_INFO)
{
	npc			 = 	OUT_970_ORLAN;
	nr			 = 	3;
	condition	 = 	DIA_Orlan_Wein_Condition;
	information	 = 	DIA_Orlan_Wein_Info;
	permanent 	 =  FALSE;
	description	 = 	"I'm bringing the wine from the monastery.";
};
func int DIA_Orlan_Wein_Condition ()
{	
	if (MIS_GoraxWein == LOG_RUNNING)
	&& (Npc_HasItems (other, ITFO_REVIVED_MAGEWINE) >= 12)
	{
		return TRUE;
	};
};
func void DIA_Orlan_Wein_Info ()
{
	AI_Output (other, self, "DIA_Orlan_Wein_15_00"); //I'm bringing the wine from the monastery.
	AI_Output (self, other, "DIA_Orlan_Wein_05_01"); //Excellent. That's what I've been waiting for.
	AI_Output (self, other, "DIA_Orlan_Wein_05_02"); //I have already agreed on the price with Master Gorax. I'll give you the 100 gold coins straightaway.
	
	Info_ClearChoices (DIA_Orlan_Wein);
	
	Info_AddChoice (DIA_Orlan_Wein,"All right, give me the gold, then.",DIA_Orlan_Wein_JA);
	Info_AddChoice (DIA_Orlan_Wein,"Are you trying to pull a fast one? The price is 240 gold coins.",DIA_Orlan_Wein_NEIN);
};
FUNC VOID DIA_Orlan_Wein_JA()
{
	AI_Output (other, self, "DIA_Orlan_Wein_JA_15_00"); //All right, give me the gold, then.
	AI_Output (self, other, "DIA_Orlan_Wein_JA_05_01"); //Here you go. It was a pleasure doing business with you.
	
	B_GiveInvItems (self, other, ItmI_Gold, 100);
	B_GiveInvItems (other, self, ITFO_REVIVED_MAGEWINE, 12);

	OrlanWine_Scam = TRUE;
	
	Info_ClearChoices (DIA_Orlan_Wein);
};
FUNC VOID DIA_Orlan_Wein_NEIN()
{
	AI_Output (other, self, "DIA_Orlan_Wein_NEIN_15_00"); //Are you trying to pull a fast one? The price is 240 gold coins.
	AI_Output (self, other, "DIA_Orlan_Wein_NEIN_05_01"); //So, Gorax warned you, did he? All right, maybe the two of us can do a bit of business. Look - I'll give you 100 gold pieces for the wine.
	AI_Output (self, other, "DIA_Orlan_Wein_NEIN_05_02"); //You tell Gorax that I pulled the wool over your eyes and you'll get FOUR spell scrolls from me.
	AI_Output (other, self, "DIA_Orlan_Wein_Was_15_00"); //What kind of spell scrolls are they?
	AI_Output (self, other, "DIA_Orlan_Wein_Was_05_01"); //No idea - I don't know anything about that. They're from a guest who... eh... forgot them here, yeah.

	Info_ClearChoices (DIA_Orlan_Wein);
	Info_AddChoice (DIA_Orlan_Wein,"Hey, just give me the 240 gold coins.",DIA_Orlan_Wein_Nie);
	Info_AddChoice (DIA_Orlan_Wein,"All right, sounds fair enough. Give me those spell scrolls.",DIA_Orlan_Wein_Okay);
};
FUNC VOID DIA_Orlan_Wein_Nie()
{
	AI_Output (other, self, "DIA_Orlan_Wein_Nie_15_00"); //Hey, just give me the 240 gold coins.
	AI_Output (self, other, "DIA_Orlan_Wein_Nie_05_01"); //You don't want to do business, eh? -sigh- All right, here's the gold.
	
	B_GiveInvItems (self, other, ItmI_Gold, 240);
	B_GiveInvItems (other, self, ITFO_REVIVED_MAGEWINE, 12);

	OrlanWine_Scam = FALSE;
	
	Info_ClearChoices (DIA_Orlan_Wein);
};
FUNC VOID DIA_Orlan_Wein_Okay()
{
	var string Text;
		
	Text = ConcatStrings( "4" , PRINT_ItemsErhalten);		
	PrintScreen	(Text, -1, -1, FONT_ScreenSmall, 2);
	
	B_GiveInvItems (self, other, ItmI_Gold, 100);
	
	AI_Output (other, self, "DIA_Orlan_Wein_Okay_15_00"); //All right, sounds fair enough. Give me those spell scrolls.
	AI_Output (self, other, "DIA_Orlan_Wein_Okay_05_01"); //Here are the spell scrolls and the gold.
	
	B_GiveInvItems (other, self, ITFO_REVIVED_MAGEWINE, 12);
	
	B_GiveInvItems  (self, other,ItSc_InstantFireball,2);
	B_GiveInvItems  (self, other,ItSc_FullHeal,1);
	B_GiveInvItems  (self, other,ItSc_SumGobSkel,1);

	OrlanWine_Scam = TRUE;
	
	Info_ClearChoices (DIA_Orlan_Wein);
};
///////////////////////////////////////////////////////////////////////
//	Info WerBistDu
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_WERBISTDU		(C_INFO)
{
	npc		 = 	OUT_970_ORLAN;
	nr		 = 	2;
	condition	 = 	DIA_Orlan_WERBISTDU_Condition;
	information	 = 	DIA_Orlan_WERBISTDU_Info;

	description	 = 	"Who are you?";
};

func int DIA_Orlan_WERBISTDU_Condition ()
{
	return TRUE;
};

func void DIA_Orlan_WERBISTDU_Info ()
{
	AI_Output			(other, self, "DIA_Orlan_WERBISTDU_15_00"); //Who are you?
	AI_Output			(self, other, "DIA_Orlan_WERBISTDU_05_01"); //I'm Orlan, the keeper of this modest tavern.
	AI_Output			(self, other, "DIA_Orlan_WERBISTDU_05_02"); //What are you looking for, stranger? Maybe a decent sword, or a good piece of armor?
	AI_Output			(self, other, "DIA_Orlan_WERBISTDU_05_03"); //A good swig from the country stills, or just some information?
	AI_Output			(self, other, "DIA_Orlan_WERBISTDU_05_04"); //I can give you all that and more, if your coins ring.

};

//-----------------------------------------------------
// BESSERE RÜSTUNG
//-----------------------------------------------------

instance DIA_Orlan_RUESTUNG		(C_INFO)
{
	npc		= 	OUT_970_ORLAN;
	nr		= 	5;
	condition	 = 	DIA_Orlan_RUESTUNG_Condition;
	information	 = 	DIA_Orlan_RUESTUNG_Info;
	permanent	 = 	TRUE;

	description	 = 	"What kind of armor can you offer me?";
};

var int DIA_Orlan_RUESTUNG_noPerm;

func int DIA_Orlan_RUESTUNG_Condition ()
{
	if 	(
		(Npc_KnowsInfo(other, DIA_Orlan_WERBISTDU))
		&& (DIA_Orlan_RUESTUNG_noPerm == FALSE)
		//&& (hero.guild == GIL_NONE)
		)
		{
				return TRUE;
		};
};

func void DIA_Orlan_RUESTUNG_Info ()
{
	AI_Output			(other, self, "DIA_Orlan_RUESTUNG_15_00"); //What kind of armor can you offer me?
	AI_Output			(self, other, "DIA_Orlan_RUESTUNG_05_01"); //I have here a very nice piece that is sure to please you.

	Info_ClearChoices		(DIA_Orlan_RUESTUNG);

	Info_AddChoice			(DIA_Orlan_RUESTUNG, "I'll think about it."	,	DIA_Orlan_RUESTUNG_BACK);	
	Info_AddChoice			(DIA_Orlan_RUESTUNG, REV_BuildTradeString(ITAR_REVIVED_ARCHER), DIA_Orlan_RUESTUNG_Buy);	
};  

func void DIA_Orlan_RUESTUNG_Buy ()
{
	AI_Output				(other, self, "DIA_Orlan_HotelZimmer_ja_15_00"); //All right. Here's the dough.

	if (B_GiveInvItems		(other, self, ITMI_GOLD, REV_Value_ARCHER))
		{
			AI_Output			(self, other,"DIA_Orlan_RUESTUNG_Buy_05_01"); //A wise decision.

			CreateInvItems 		(self, ITAR_REVIVED_ARCHER, 1);
			B_GiveInvItems		(self, other, ITAR_REVIVED_ARCHER, 1);
			AI_EquipArmor (other, ITAR_REVIVED_ARCHER);
			DIA_Orlan_RUESTUNG_noPerm = TRUE;
		}
	else
		{
			AI_Output			(self, other,"DIA_Orlan_RUESTUNG_Buy_05_02"); //Sorry. Once you have the wherewithal, we can do business.
		};

	Info_ClearChoices		(DIA_Orlan_RUESTUNG);
};

func void DIA_Orlan_RUESTUNG_BACK ()
{
	AI_Output				(other, self,"DIA_Orlan_RUESTUNG_BACK_15_00"); //I'll think about it.
	AI_Output				(self, other,"DIA_Orlan_RUESTUNG_BACK_05_01"); //As you like. But don't wait too long.

	Info_ClearChoices		(DIA_Orlan_RUESTUNG);
};


///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_TRADE		(C_INFO)
{
	npc		 = 	OUT_970_ORLAN;
	nr		 = 	70;
	condition	 = 	DIA_Orlan_TRADE_Condition;
	information	 = 	DIA_Orlan_TRADE_Info;
	trade		 = 	TRUE;
	permanent	 = 	TRUE;

	description	 = 	"Show me your wares.";
};

func int DIA_Orlan_TRADE_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Orlan_WERBISTDU))
		{
				return TRUE;
		};
};

func void DIA_Orlan_TRADE_Info ()
{
	AI_Output			(other, self, "DIA_Orlan_TRADE_15_00"); //Show me your wares.
	B_GiveTradeInv (self);
	
		if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
			{
				AI_Output			(self, other, "DIA_Orlan_TRADE_05_01"); //Of course. It is an honor for me to receive such an important guest.
			}
		else if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG) || (hero.guild == GIL_MIL))
			{
				AI_Output			(self, other, "DIA_Orlan_TRADE_05_02"); //Of course, sir.
			}
		else
			{
				AI_Output			(self, other, "DIA_Orlan_TRADE_05_03"); //If you can pay.
			};
};


///////////////////////////////////////////////////////////////////////
//	Info HotelZimmer
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_HotelZimmer		(C_INFO)
{
	npc		 = 	OUT_970_ORLAN;
	nr		 = 	6;
	condition	 = 	DIA_Orlan_HotelZimmer_Condition;
	information	 = 	DIA_Orlan_HotelZimmer_Info;
	permanent	 = 	TRUE;

	description	 = 	"How much do you charge for a room?";
};
var int Orlan_SCGotHotelZimmer;
var int Orlan_SCGotHotelZimmerDay;
func int DIA_Orlan_HotelZimmer_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Orlan_WERBISTDU))
	&& (Orlan_SCGotHotelZimmer == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Orlan_HotelZimmer_Info ()
{
	AI_Output			(other, self, "DIA_Orlan_HotelZimmer_15_00"); //How much do you charge for a room?
	
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
		{
			if (hero.guild == GIL_PAL)
			{
				AI_Output			(self, other, "DIA_Orlan_HotelZimmer_05_01"); //For a knight of the King, I always have a room available. Free of charge, of course.
			}
			else
			{
				AI_Output			(self, other, "DIA_Orlan_HotelZimmer_05_02"); //I would never dare to take money from one of Innos' earthly representatives for my services .
			};
			
			AI_Output			(self, other, "DIA_Orlan_HotelZimmer_05_03"); //Here's the key to the upper rooms. Pick one for yourself.
			CreateInvItems (self, ITKE_ORLAN_HOTELZIMMER, 1);									
			B_GiveInvItems (self, other, ITKE_ORLAN_HOTELZIMMER, 1);					
			Orlan_SCGotHotelZimmer = TRUE;
			Orlan_SCGotHotelZimmerDay = Wld_GetDay();
		}
		else
		{
			AI_Output			(self, other, "DIA_Orlan_HotelZimmer_05_04"); //Give me 50 gold coins for a week, and you can choose a room.
		
			Info_ClearChoices	(DIA_Orlan_HotelZimmer);
			Info_AddChoice	(DIA_Orlan_HotelZimmer, "Damn expensive.", DIA_Orlan_HotelZimmer_nein );
			Info_AddChoice	(DIA_Orlan_HotelZimmer, "All right. Here's the dough.", DIA_Orlan_HotelZimmer_ja );
		};	
};
func void DIA_Orlan_HotelZimmer_ja ()
{
		if (B_GiveInvItems (other, self, ItMi_Gold,50))
		{
			AI_Output			(other, self, "DIA_Orlan_HotelZimmer_ja_15_00"); //All right. Here's the dough.
			AI_Output			(self, other, "DIA_Orlan_HotelZimmer_ja_05_01"); //Here's the key. The rooms are upstairs. But don't get everything dirty and pay your rent on time, understand?
			CreateInvItems (self, ITKE_ORLAN_HOTELZIMMER, 1);									
			B_GiveInvItems (self, other, ITKE_ORLAN_HOTELZIMMER, 1);					
			Orlan_SCGotHotelZimmerDay = Wld_GetDay(); 
			Orlan_SCGotHotelZimmer = TRUE;
		}
		else
		{
			AI_Output			(self, other, "DIA_Orlan_HotelZimmer_ja_05_02"); //You don't have 50. Money first, then pleasure.
		};
	Info_ClearChoices	(DIA_Orlan_HotelZimmer);
};

func void DIA_Orlan_HotelZimmer_nein ()
{
	AI_Output			(other, self, "DIA_Orlan_HotelZimmer_nein_15_00"); //Damn expensive.
	AI_Output			(self, other, "DIA_Orlan_HotelZimmer_nein_05_01"); //Then you'll have to look elsewhere, my friend.
	Info_ClearChoices	(DIA_Orlan_HotelZimmer);
};

///////////////////////////////////////////////////////////////////////
//	Info MieteFaellig
///////////////////////////////////////////////////////////////////////

var int Orlan_AngriffWegenMiete;
////////////////////////////////

instance DIA_Orlan_MieteFaellig		(C_INFO)
{
	npc		 = 	OUT_970_ORLAN;
	nr		 = 	10;
	condition	 = 	DIA_Orlan_MieteFaellig_Condition;
	information	 = 	DIA_Orlan_MieteFaellig_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;

};

var int DIA_Orlan_MieteFaellig_NoMore;
func int DIA_Orlan_MieteFaellig_Condition ()
{
	
	// GEFRUDEL wegen kein Labern nach Kampf!
	
	if (Orlan_AngriffWegenMiete == TRUE)
	&& (DIA_Orlan_MieteFaellig_NoMore == FALSE)
	{	
		// ------ keine Miete, wenn Kampf verloren ------
		if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
		{
			return FALSE;
		};
		
		// ------ wenn gewonnen, Gold genommen --> Miete in 7 Tagen ------
		if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
		{
			Orlan_SCGotHotelZimmerDay = Wld_GetDay();
			Orlan_AngriffWegenMiete = FALSE;
			return FALSE;
		};
	};
	
	// CONDITION
	
	if (Orlan_SCGotHotelZimmer == TRUE)
	&& (Orlan_SCGotHotelZimmerDay <= (Wld_GetDay()-7))
	&& (DIA_Orlan_MieteFaellig_NoMore == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Orlan_MieteFaellig_Info ()
{
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output	(self, other, "DIA_Orlan_MieteFaellig_05_00"); //(slimily) I am delighted with your distinguished visit. Stay as long as you like. It is an honor.
		DIA_Orlan_MieteFaellig_NoMore = TRUE;
	}
	else
	{
		AI_Output	(self, other, "DIA_Orlan_MieteFaellig_05_01"); //When will I finally get my rent?
	
		Info_ClearChoices	(DIA_Orlan_MieteFaellig);
		Info_AddChoice	(DIA_Orlan_MieteFaellig, "Forget it. I'm not paying any more.", DIA_Orlan_MieteFaellig_nein );
		Info_AddChoice	(DIA_Orlan_MieteFaellig, "Here's your 50 gold coins.", DIA_Orlan_MieteFaellig_ja );
	};
};

var int DIA_Orlan_MieteFaellig_OneTime;
func void DIA_Orlan_MieteFaellig_ja ()
{
		AI_Output			(other, self, "DIA_Orlan_MieteFaellig_ja_15_00"); //Here's your 50 gold coins.
	
		if (B_GiveInvItems (other, self, ItMi_Gold,50))
		{
			AI_Output			(self, other, "DIA_Orlan_MieteFaellig_ja_05_01"); //Well, it's about time.

			if (DIA_Orlan_MieteFaellig_OneTime == FALSE)
			{
				AI_Output			(self, other, "DIA_Orlan_MieteFaellig_ja_05_02"); //Where are you hanging around all day?
				AI_Output			(other, self, "DIA_Orlan_MieteFaellig_ja_15_03"); //You don't want to know.
				AI_Output			(self, other, "DIA_Orlan_MieteFaellig_ja_05_04"); //Mmh. Well, it's none of my business anyway.
				DIA_Orlan_MieteFaellig_OneTime = TRUE;
			};
			
			Orlan_SCGotHotelZimmerDay = Wld_GetDay(); 
			Info_ClearChoices	(DIA_Orlan_MieteFaellig);
		}
		else
		{
			AI_Output			(self, other, "DIA_Orlan_MieteFaellig_ja_05_05"); //Say, are you trying to trick me? You don't even have enough money to pay for that meal. I'll teach you, you...
			AI_StopProcessInfos (self);
			B_Attack (self, other, AR_NONE, 1);
		};
};

func void DIA_Orlan_MieteFaellig_nein ()
{
	AI_Output			(other, self, "DIA_Orlan_MieteFaellig_nein_15_00"); //Forget it. I'm not paying any more.
	AI_Output			(self, other, "DIA_Orlan_MieteFaellig_nein_05_01"); //Well, I'll teach you, you miserable cheat.
	Orlan_AngriffWegenMiete = TRUE;
	
	Info_ClearChoices	(DIA_Orlan_MieteFaellig);
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_NONE, 1);
};

///////////////////////////////////////////////////////////////////////
//	Info WettkampfLaeuft
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_WETTKAMPFLAEUFT		(C_INFO)
{
	npc		 = 	OUT_970_ORLAN;
	nr		 = 	7;
	condition	 = 	DIA_Orlan_WETTKAMPFLAEUFT_Condition;
	information	 = 	DIA_Orlan_WETTKAMPFLAEUFT_Info;
	important	 = 	TRUE;
	 
};

func int DIA_Orlan_WETTKAMPFLAEUFT_Condition ()
{
	if 	(
		(DIA_Randolph_ICHGEBEDIRGELD_noPerm == TRUE)
		&& (MIS_Rukhar_Wettkampf_Day <= (Wld_GetDay()-2))
		)
			{
					return TRUE;
			};
};

func void DIA_Orlan_WETTKAMPFLAEUFT_Info ()
{
			AI_Output			(self, other, "DIA_Orlan_WETTKAMPFLAEUFT_05_00"); //There you are, finally. I've been waiting for you.
			AI_Output			(other, self, "DIA_Orlan_WETTKAMPFLAEUFT_15_01"); //What happened?
			AI_Output			(self, other, "DIA_Orlan_WETTKAMPFLAEUFT_05_02"); //The drinking contest is finally over.
			AI_Output			(other, self, "DIA_Orlan_WETTKAMPFLAEUFT_15_03"); //Who won?
	
			if 	(
				((Mob_HasItems	("CHEST_RUKHAR", ItFo_Booze)) == FALSE)
				&& ((Mob_HasItems	("CHEST_RUKHAR", ItFo_Water)) == TRUE)
				)
					{
						AI_Output			(self, other, "DIA_Orlan_WETTKAMPFLAEUFT_05_04"); //This time Randolph has won. Rukhar must have been having a bad day.
					}
				else
				{
					AI_Output			(self, other, "DIA_Orlan_WETTKAMPFLAEUFT_05_05"); //Once again, Rukhar has gotten Randolph pickled. It was only to be expected.
					Rukhar_Won_Wettkampf = TRUE;
				};
			
			if ((hero.guild != GIL_PAL) && (hero.guild != GIL_KDF))
				{
					AI_Output			(self, other, "DIA_Orlan_WETTKAMPFLAEUFT_05_06"); //So, well, I hope that was the last time. I don't want that kind of to-do in my house ever again, remember that.
				};
			
			B_GivePlayerXP (XP_Rukhar_WettkampfVorbei);	

			AI_StopProcessInfos (self);
		
			Npc_ExchangeRoutine	(self,"Start"); 
			B_StartotherRoutine	(Randolph,"Start");

			if (Hlp_IsValidNpc (Rukhar))
				{
				 if (Rukhar_Won_Wettkampf == TRUE)
				 	{
						B_StartotherRoutine (Rukhar,"WettkampfRukharWon");
					}
					else
					{
						B_StartotherRoutine (Rukhar,"WettkampfRukharLost");
					};
				};		
			
			MIS_Rukhar_Wettkampf = LOG_SUCCESS;
			B_GivePlayerXP (XP_Ambient);
};

///////////////////////////////////////////////////////////////////////
//	Info Eingebrockt
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_EINGEBROCKT		(C_INFO)
{
	npc		 = 	OUT_970_ORLAN;
	nr		 = 	8;
	condition	 = 	DIA_Orlan_EINGEBROCKT_Condition;
	information	 = 	DIA_Orlan_EINGEBROCKT_Info;
	important	 = 	TRUE;
};

func int DIA_Orlan_EINGEBROCKT_Condition ()
{
	if 	(
		(DIA_Randolph_ICHGEBEDIRGELD_noPerm == TRUE)
		&& (MIS_Rukhar_Wettkampf == LOG_RUNNING)
		)
			{
					return TRUE;
			};
};

func void DIA_Orlan_EINGEBROCKT_Info ()
{
			AI_Output	(self, other, "DIA_Orlan_EINGEBROCKT_05_00"); //That was a fine mess you got me into. Now I can play lookout for Rukhar again.
			AI_Output	(other, self, "DIA_Orlan_EINGEBROCKT_15_01"); //Why?
			AI_Output	(self, other, "DIA_Orlan_EINGEBROCKT_05_02"); //As long as he's holding his little contests in there, it's better if no outsider learns about it. It's not good for business, you see?
};

///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
instance DIA_Orlan_Perm		(C_INFO)
{
	npc			 = 	OUT_970_ORLAN;
	nr			 = 	99;
	condition	 = 	DIA_Orlan_Perm_Condition;
	information	 = 	DIA_Orlan_Perm_Info;
	permanent	 = 	TRUE;
	description	 = 	"How's it going with your tavern?";
};

func int DIA_Orlan_Perm_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Orlan_WERBISTDU))
		{
				return TRUE;
		};
};

func void DIA_Orlan_Perm_Info ()
{
	AI_Output (other, self, "DIA_Orlan_Perm_15_00"); //How's it going with your tavern?
	
	if (Kapitel <= 2)
	{
		AI_Output (self, other, "DIA_Orlan_Perm_05_01"); //Times have been better, you know?
		AI_Output (self, other, "DIA_Orlan_Perm_05_02"); //People's purses aren't as open as they used to be.
	}
	else if (Kapitel >= 3)
	{
		AI_Output (self, other, "DIA_Orlan_Perm_05_03"); //Hopefully these black magicians will move on soon, otherwise I can close the tavern.
		AI_Output (self, other, "DIA_Orlan_Perm_05_04"); //Almost nobody dares to come here anymore.
	};
};

// ************************************************************
// 		Minenanteil
// ************************************************************
INSTANCE DIA_Orlan_Minenanteil (C_INFO)
{
	npc			= OUT_970_ORLAN;
	nr			= 3;
	condition	= DIA_Orlan_Minenanteil_Condition;
	information	= DIA_Orlan_Minenanteil_Info;

	description = "You're selling mine shares?";
};   
                    
FUNC INT DIA_Orlan_Minenanteil_Condition()
{	
	if (hero.guild == GIL_KDF)
	&& (MIS_Serpentes_MinenAnteil_KDF == LOG_RUNNING)
	&& (Npc_KnowsInfo(other, DIA_Orlan_WERBISTDU))
	{
		return TRUE;
	};
};

FUNC VOID DIA_Orlan_Minenanteil_Info()
{	
	AI_Output (other, self, "DIA_Orlan_Minenanteil_15_00"); //You're selling mine shares?
	AI_Output (self, other, "DIA_Orlan_Minenanteil_05_01"); //Sure. You can get anything from me, if the price is right.
	B_GivePlayerXP (XP_Ambient);
};	

 
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Orlan_PICKPOCKET (C_INFO)
{
	npc			= OUT_970_ORLAN;
	nr			= 900;
	condition	= DIA_Orlan_PICKPOCKET_Condition;
	information	= DIA_Orlan_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_100;
};                       

FUNC INT DIA_Orlan_PICKPOCKET_Condition()
{
	C_Beklauen (89, 260);
};
 
FUNC VOID DIA_Orlan_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Orlan_PICKPOCKET);
	Info_AddChoice		(DIA_Orlan_PICKPOCKET, DIALOG_BACK 		,DIA_Orlan_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Orlan_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Orlan_PICKPOCKET_DoIt);
};

func void DIA_Orlan_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Orlan_PICKPOCKET);
};
	
func void DIA_Orlan_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Orlan_PICKPOCKET);
};








			

























