
//*********************************************************************
//	Info EXIT 
//*********************************************************************
INSTANCE DIA_DJG_715_Ferros_EXIT   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 999;
	condition   = DIA_DJG_715_Ferros_EXIT_Condition;
	information = DIA_DJG_715_Ferros_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_DJG_715_Ferros_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_DJG_715_Ferros_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//*********************************************************************
//	Info Hello 
//*********************************************************************
INSTANCE DIA_DJG_715_Ferros_Hello   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 4;
	condition   = DIA_DJG_715_Ferros_Hello_Condition;
	information = DIA_DJG_715_Ferros_Hello_Info;
	permanent   = FALSE;
	description = "Wo kommt ihr her?";
};

FUNC INT DIA_DJG_715_Ferros_Hello_Condition()
{
	return TRUE;
};

FUNC VOID DIA_DJG_715_Ferros_Hello_Info()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_Hello_15_00"); //Where do you come from?
	AI_Output (self ,other,"DIA_DJG_715_Ferros_Hello_01_01"); //From the mainland. My people and I fled here.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_Hello_01_02"); //The situation there is getting worse. The orcs leave nothing but burned-out villages behind.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_Hello_01_03"); //The king has lost control of his realm.

	if (hero.guild == GIL_PAL)
	{
		AI_Output (self ,other,"DIA_DJG_715_Ferros_Hello_01_04"); //You paladins have failed, if you ask me.
	};	
};

//*********************************************************************
//	Info War 
//*********************************************************************
INSTANCE DIA_DJG_715_Ferros_War   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 6;
	condition   = DIA_DJG_715_Ferros_War_Condition;
	information = DIA_DJG_715_Ferros_War_Info;
	permanent   = FALSE;
	description = "Weißt du noch mehr über den Krieg?";
};

FUNC INT DIA_DJG_715_Ferros_War_Condition()
{
	if (Npc_KnowsInfo (other,DIA_DJG_715_Ferros_Hello))
	{
		return TRUE;
	};
};

FUNC VOID DIA_DJG_715_Ferros_War_Info()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_War_15_00"); //What else do you know about the war?

	if (hero.guild == GIL_PAL)
	{
		AI_Output (self ,other,"DIA_DJG_715_Ferros_War_01_01"); //You haven't been to see your king in a long time, huh?
	};
	
	AI_Output (self ,other,"DIA_DJG_715_Ferros_War_01_02"); //The orcs are outside the capital. But whether it's fallen yet, I don't know.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_War_01_03"); //The last thing I heard was that the king is dead. But I don't believe that.

	AI_Output (other,self ,"DIA_DJG_715_Ferros_Friends_15_00"); //Where are your people now?
	AI_Output (self ,other,"DIA_DJG_715_Ferros_Friends_01_01"); //I left them.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_Friends_01_02"); //They thought they could take everything they wanted, even if it doesn't belong to them. Count me out.
};

//*********************************************************************
//	Was machst du hier in der Burg? 
//*********************************************************************
INSTANCE DIA_DJG_715_Ferros_OldCamp   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 7;
	condition   = DIA_DJG_715_Ferros_OldCamp_Condition;
	information = DIA_DJG_715_Ferros_OldCamp_Info;
	permanent   = FALSE;
	description = "Was machst du hier in der Burg?";
};

FUNC INT DIA_DJG_715_Ferros_OldCamp_Condition()
{
	return TRUE;
};

FUNC VOID DIA_DJG_715_Ferros_OldCamp_Info()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_OldCamp_15_00"); //What are you doing here in the castle?
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_01_01"); //I heard about the dragons and wanted to help fight them.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_01_02"); //Unfortunately, I lost my sword when I was sneaking past the orcs. Now I'm stuck here.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_01_03"); //Without a sword, I can't get out of here, and the swords I can buy here are the worst junk.

	Info_ClearChoices (DIA_DJG_715_Ferros_OldCamp);
	Info_AddChoice (DIA_DJG_715_Ferros_OldCamp,"Viel Glück bei der Suche.",DIA_DJG_715_Ferros_OldCamp_No);
	Info_AddChoice (DIA_DJG_715_Ferros_OldCamp,"Was kriege ich, wenn ich dir ein gutes Schwert besorge?",DIA_DJG_715_Ferros_OldCamp_Price);
	Info_AddChoice (DIA_DJG_715_Ferros_OldCamp,"Ich werde dein Schwert finden.",DIA_DJG_715_Ferros_OldCamp_Yes);
	Wld_InsertItem		(ItMW_1H_FerrosSword_Mis , "FP_OW_ITEM_08"); 
	MIS_FerrosSword = LOG_RUNNING; 
	
	Log_CreateTopic (TOPIC_FerrosSword, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_FerrosSword, LOG_RUNNING);
	B_LogEntry (TOPIC_FerrosSword,"Feros hat sein Schwert bei den Orks liegen lassen. Sehr leichtsinnig."); 
};

FUNC VOID DIA_DJG_715_Ferros_OldCamp_No ()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_OldCamp_No_15_00"); //I wish you luck with your search.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_No_01_01"); //I really have to ask myself why I ever came here.
	
	Info_ClearChoices (DIA_DJG_715_Ferros_OldCamp);
};

FUNC VOID DIA_DJG_715_Ferros_OldCamp_Price ()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_OldCamp_Price_15_00"); //What will you give me if I find you a good sword?
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_Price_01_01"); //Alas, I can't give you anything. I spent my last gold on the sword.

	Info_ClearChoices (DIA_DJG_715_Ferros_OldCamp);
};

FUNC VOID DIA_DJG_715_Ferros_OldCamp_Yes ()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_OldCamp_Yes_15_00"); //I shall find your sword.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_Yes_01_01"); //That would be great. You should look for it on the high cliff to the south.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_OldCamp_Yes_01_02"); //I probably lost it there, near the orc tents.
	B_LogEntry (TOPIC_FerrosSword,"Auf der hohen Klippe im Süden, wo die Orkzelte stehen, hat Feros sein Schwert angeblich verloren."); 
	
	Info_ClearChoices (DIA_DJG_715_Ferros_OldCamp);
};

//*********************************************************************
//	Info FerrosAnySword
//*********************************************************************
INSTANCE DIA_DJG_715_Ferros_FerrosAnySword   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 6;
	condition   = DIA_DJG_715_Ferros_FerrosAnySword_Condition;
	information = DIA_DJG_715_Ferros_FerrosAnySword_Info;
	permanent   = FALSE;
	description = "Vielleicht hab ich ein anderes Schwert für dich.";
};

FUNC INT DIA_DJG_715_Ferros_FerrosAnySword_Condition()
{
	IF 	(	(MIS_FerrosSword == LOG_RUNNING) 
	&&	(	(Npc_HasItems (other,ItMW_1H_Special_01) >= 1)
	|| 		(Npc_HasItems (other,ItMW_1H_Special_02) >= 1)))
	{
		return TRUE;
	};
};

var int Give1HSpecial01Feros;
var int Give1HSpecial02Feros;

FUNC VOID DIA_DJG_715_Ferros_FerrosAnySword_Info()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_FerrosAnySword_Silverblade_15_00"); //Maybe I've got another sword for you.


	Info_ClearChoices (DIA_DJG_715_Ferros_FerrosAnySword);
	
	Info_AddChoice (DIA_DJG_715_Ferros_FerrosAnySword,DIALOG_BACK,DIA_DJG_715_Ferros_FerrosAnySword_Back);
	
	if (Npc_HasItems (other,ItMW_1H_Special_01) >= 1)
	{
		Info_AddChoice (DIA_DJG_715_Ferros_FerrosAnySword,ItMW_1H_Special_01.name,B_Ferros_FerrosAnySword_Give);
		Give1HSpecial01Feros = TRUE;
	};
	if (Npc_HasItems (other,ItMW_1H_Special_02) >= 1)
	{
		Info_AddChoice (DIA_DJG_715_Ferros_FerrosAnySword,ItMW_1H_Special_02.name,B_Ferros_FerrosAnySword_Give);
		Give1HSpecial02Feros = TRUE;
	};
};

FUNC VOID DIA_DJG_715_Ferros_FerrosAnySword_Back ()
{
	Info_ClearChoices (DIA_DJG_715_Ferros_FerrosAnySword);
};

FUNC VOID B_Ferros_FerrosAnySword_Give ()
{
	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Give_01_00"); //That's a good blade. Really excellent work.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Give_01_01"); //Are you sure you want to give it to me just like that?

	Info_ClearChoices (DIA_DJG_715_Ferros_FerrosAnySword);
	Info_AddChoice (DIA_DJG_715_Ferros_FerrosAnySword,"Nein, die brauche ich selbst.",B_Ferros_FerrosAnySword_No);
	Info_AddChoice (DIA_DJG_715_Ferros_FerrosAnySword,"Ja, nimm sie!",B_Ferros_FerrosAnySword_Yes);
};

FUNC VOID B_Ferros_FerrosAnySword_Yes ()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_Yes_15_00"); //Yes, take it.

	if (Give1HSpecial01Feros == TRUE)
	{
		B_GiveInvItems (other,self ,ItMW_1H_Special_01,1);
	}
	else if (Give1HSpecial02Feros == TRUE)
	{
		B_GiveInvItems (other,self ,ItMW_1H_Special_02,1);
	};

	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_Yes2_01_00"); //Thanks, I owe you.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_Yes2_01_01"); //In return, I'll show you a couple of tricks that will allow you to use your strength and dexterity better in combat.

	Log_CreateTopic	(TOPIC_Teacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher, "Ferros kann mir beibringen wie ich meine Stärke und Geschicklichkeit steigern kann.");

	Info_ClearChoices (DIA_DJG_715_Ferros_FerrosAnySword);
	MIS_FerrosSword = LOG_SUCCESS;
	B_GivePlayerXP (XP_FerrosSword);
};

FUNC VOID B_Ferros_FerrosAnySword_No ()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_No_15_00");	//No, I need it myself.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_No_01_01");	//I can understand.

	Give1HSpecial01Feros = FALSE;
	Give1HSpecial02Feros = FALSE;
};

//*********************************************************************
//	Info FerrosHisSword
//*********************************************************************
INSTANCE DIA_DJG_715_Ferros_FerrosHisSword   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 6;
	condition   = DIA_DJG_715_Ferros_FerrosHisSword_Condition;
	information = DIA_DJG_715_Ferros_FerrosHisSword_Info;
	permanent   = FALSE;
	description = "Ich hab dein Schwert gefunden.";
};

FUNC INT DIA_DJG_715_Ferros_FerrosHisSword_Condition()
{
	IF 	(	(MIS_FerrosSword == LOG_RUNNING) 
	&&	(Npc_HasItems (other,ItMW_1H_FerrosSword_Mis) >= 1))
	{
		return TRUE;
	};
};

FUNC VOID DIA_DJG_715_Ferros_FerrosHisSword_Info()
{
	AI_Output (other,self ,"DIA_DJG_715_Ferros_FerrosHisSword_15_00"); //I found your sword.
	B_GiveInvItems (other,self,ItMw_1h_FerrosSword_Mis,1);
	
	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_Yes2_01_00"); //Thanks, I owe you.
	AI_Output (self ,other,"DIA_DJG_715_Ferros_FerrosAnySword_Blade_Yes2_01_01"); //In return, I'll show you a couple of tricks that will allow you to use your strength and dexterity better in combat.

	Log_CreateTopic	(TOPIC_Teacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher, "Ferros kann mir beibringen wie ich meine Stärke und Geschicklichkeit steigern kann.");

	MIS_FerrosSword = LOG_SUCCESS;	
	B_GivePlayerXP (XP_FerrosSword + XP_Ambient);
};

//*******************************************
//	TechPlayer
//*******************************************

INSTANCE DIA_Ferros_Teach(C_INFO)
{
	npc			= DJG_715_Ferros;
	nr			= 1;
	condition	= DIA_Ferros_Teach_Condition;
	information	= DIA_Ferros_Teach_Info;
	permanent	= TRUE;
	description = "Zeig mir, wie ich meine Fähigkeiten verbessere.";
};                       

FUNC INT DIA_Ferros_Teach_Condition()
{
	if (MIS_FerrosSword == LOG_SUCCESS)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Ferros_Teach_Info()
{	
	AI_Output (other,self ,"DIA_Ferros_Teach_15_00"); //Show me how to improve my abilities.

	if (MIS_OCGateOpen == TRUE)
	{
		AI_Output (self ,other,"DIA_Ferros_Teach_01_01"); //After these orc attacks, I quit. I'm just glad to still be alive, man.
	}
	else
	{
		AI_Output (self ,other,"DIA_Ferros_Teach_01_02"); //A good fighter has to learn to transfer his abilities directly to his weapon.
		
		Info_ClearChoices (DIA_Ferros_Teach);
		Info_AddChoice		(DIA_Ferros_Teach, DIALOG_BACK, DIA_Ferros_Teach_Back);
		Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnSTR1			, B_GetLearnCostAttribute(other, ATR_STRENGTH))			,DIA_Ferros_Teach_STR_1);
		Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnSTR5			, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)		,DIA_Ferros_Teach_STR_5);
		Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Ferros_Teach_DEX_1);
		Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Ferros_Teach_DEX_5);
	};

};

FUNC VOID DIA_Ferros_Teach_Back ()
{
	Info_ClearChoices (DIA_Ferros_Teach);
};

FUNC VOID DIA_Ferros_Teach_STR_1 ()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, T_MED);
	Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnSTR1			, B_GetLearnCostAttribute(other, ATR_STRENGTH))			,DIA_Ferros_Teach_STR_1);
};

FUNC VOID DIA_Ferros_Teach_STR_5 ()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 5, T_MED);
	Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnSTR5		, B_GetLearnCostAttribute(other, ATR_STRENGTH)*5)		,DIA_Ferros_Teach_STR_5);
};

FUNC VOID DIA_Ferros_Teach_DEX_1 ()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1, T_MED);
	Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(other, ATR_DEXTERITY))		,DIA_Ferros_Teach_DEX_1);
};

FUNC VOID DIA_Ferros_Teach_DEX_5 ()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5, T_MED);
	Info_AddChoice		(DIA_Ferros_Teach, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)		,DIA_Ferros_Teach_DEX_5);
};

//*********************************************************************
//	AllDragonsDead 
//*********************************************************************
INSTANCE DIA_Ferros_AllDragonsDead   (C_INFO)
{
	npc         = DJG_715_Ferros;
	nr          = 5;
	condition   = DIA_Ferros_AllDragonsDead_Condition;
	information = DIA_Ferros_AllDragonsDead_Info;
	permanent   = FALSE;
	description	= "Alle Drachen sind tot.";
				
};

FUNC INT DIA_Ferros_AllDragonsDead_Condition()
{
	if (MIS_AllDragonsDead == TRUE)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Ferros_AllDragonsDead_Info()
{
	AI_Output	(other,self ,"DIA_Ferros_AllDragonsDead_15_00"); //All the dragons are dead.
	AI_Output 	(self ,other,"DIA_Ferros_AllDragonsDead_01_01"); //Well done! If we had more people like you, then it would probably never have gone this far.
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Ferros_PICKPOCKET (C_INFO)
{
	npc			= DJG_715_Ferros;
	nr			= 900;
	condition	= DIA_Ferros_PICKPOCKET_Condition;
	information	= DIA_Ferros_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_Ferros_PICKPOCKET_Condition()
{
	C_Beklauen (56, 75);
};
 
FUNC VOID DIA_Ferros_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Ferros_PICKPOCKET);
	Info_AddChoice		(DIA_Ferros_PICKPOCKET, DIALOG_BACK 		,DIA_Ferros_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Ferros_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Ferros_PICKPOCKET_DoIt);
};

func void DIA_Ferros_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Ferros_PICKPOCKET);
};
	
func void DIA_Ferros_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Ferros_PICKPOCKET);
};


