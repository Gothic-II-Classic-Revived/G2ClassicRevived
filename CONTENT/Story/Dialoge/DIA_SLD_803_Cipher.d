// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Cipher_EXIT(C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 999;
	condition	= DIA_Cipher_EXIT_Condition;
	information	= DIA_Cipher_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Cipher_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Cipher_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 			  					Hello 
// ************************************************************

instance DIA_Cipher_Hello (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 1;
	condition	= DIA_Cipher_Hello_Condition;
	information	= DIA_Cipher_Hello_Info;
	permanent	= FALSE;
	description = "Wie steht's?";
};                       

FUNC INT DIA_Cipher_Hello_Condition()
{
	return TRUE;
};
 
FUNC VOID DIA_Cipher_Hello_Info()
{	
	AI_Output (other, self, "DIA_Cipher_Hello_15_00"); //Wie sieht's aus?
	AI_Output (self, other, "DIA_Cipher_Hello_07_01"); //Hey, kenne ich dich nicht irgendwoher?
	AI_Output (other, self, "DIA_Cipher_Hello_15_02"); //Kann schon sein ...
	AI_Output (self, other, "DIA_Cipher_Hello_07_03"); //Ich habe damals in der Kolonie mit Sumpfkraut gehandelt, weißt du noch?
};

// ************************************************************
// 			  					TradeWhat 
// ************************************************************

instance DIA_Cipher_TradeWhat (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_TradeWhat_Condition;
	information	= DIA_Cipher_TradeWhat_Info;
	permanent	= FALSE;
	description = "Und womit handelst du jetzt?";
};                       

FUNC INT DIA_Cipher_TradeWhat_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Cipher_Hello))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_TradeWhat_Info()
{	
	AI_Output (other, self, "DIA_Cipher_TradeWhat_15_00"); //Und womit handelst du jetzt?
	AI_Output (self, other, "DIA_Cipher_TradeWhat_07_01"); //Ach, frag nicht.
	AI_Output (self, other, "DIA_Cipher_TradeWhat_07_02"); //Ich hatte ein ganzes Paket Sumpfkraut aus der Minenkolonie mitgebracht.
	AI_Output (self, other, "DIA_Cipher_TradeWhat_07_03"); //Viele von den Söldnern rauchen gerne mal einen. Ich hab 'ne hübsche Stange Geld nebenbei verdient.
	AI_Output (self, other, "DIA_Cipher_TradeWhat_07_04"); //Aber irgendein Mistkerl hat mir das ganze Kraut aus meiner Truhe gestohlen!
	
	Log_CreateTopic (Topic_CipherPaket,LOG_MISSION);
	Log_SetTopicStatus (Topic_CipherPaket,LOG_RUNNING);
	B_LogEntry (Topic_CipherPaket, "Dem Söldner Cipher ist ein Paket mit Sumpfkraut abhanden gekommen.");
	
	
	if (!Npc_IsDead (Bodo))
	{
		AI_Output (self, other, "DIA_Cipher_TradeWhat_07_05"); //Bin mir ziemlich sicher, dass es dieser Bodo war, er hat sein Bett im selben Raum wie ich und er grinst mich immer so dämlich an ...
		B_LogEntry (Topic_CipherPaket, "Er vermutet, das Bodo es gestohlen hat.");
	};
	
	MIS_Cipher_Paket = LOG_RUNNING;
};

// ************************************************************
// 			  					DoWithThief 
// ************************************************************

instance DIA_Cipher_DoWithThief (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_DoWithThief_Condition;
	information	= DIA_Cipher_DoWithThief_Info;
	permanent	= FALSE;
	description = "Was willst du jetzt mit dem Dieb machen?";
};                       

FUNC INT DIA_Cipher_DoWithThief_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Cipher_TradeWhat))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_DoWithThief_Info()
{	
	AI_Output (other, self, "DIA_Cipher_DoWithThief_15_00"); //Was willst du jetzt mit dem Dieb machen?
	AI_Output (self, other, "DIA_Cipher_DoWithThief_07_01"); //Irgendwann werd ich ihn dabei erwischen, wie er mein Kraut wegraucht.
	AI_Output (self, other, "DIA_Cipher_DoWithThief_07_02"); //Und dann werd ich mir ein ruhiges Örtchen suchen und ihn mir mal zur Brust nehmen.
	AI_Output (self, other, "DIA_Cipher_DoWithThief_07_03"); //Wenn ich ihn hier mitten auf dem Platz umhaue, kriegen's die anderen Bauern mit und ich kann mich dumm und dämlich bezahlen.
	AI_Output (other, self, "DIA_Cipher_DoWithThief_15_04"); //Warum das?
	AI_Output (self, other, "DIA_Cipher_DoWithThief_07_05"); //Ganz einfach. Wir dürfen uns nicht an den Bauern vergreifen, sonst knöpft uns Lee ein fettes Strafgeld ab. Onar will das so.
	AI_Output (self, other, "DIA_Cipher_DoWithThief_07_06"); //Und je mehr Zeugen es gibt, desto mehr Wind wird gemacht. Das macht die Sache teurer.
	AI_Output (self, other, "DIA_Cipher_DoWithThief_07_07"); //Also werd ich die Sache schön unauffällig abziehen ...
};

// ************************************************************
// 			  					WannaJoin 
// ************************************************************

instance DIA_Cipher_WannaJoin (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_WannaJoin_Condition;
	information	= DIA_Cipher_WannaJoin_Info;
	permanent	= FALSE;
	description = "Ich will mich Lees Leuten anschließen!";
};                       

FUNC INT DIA_Cipher_WannaJoin_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Cipher_Hello))
	&& (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_WannaJoin_Info()
{	
	AI_Output (other, self, "DIA_Cipher_WannaJoin_15_00"); //Ich will mich Lees Leuten anschließen!
	AI_Output (self, other, "DIA_Cipher_WannaJoin_07_01"); //LEES Leute?! Wenn Lee so weitermacht, sind das bald nicht mehr seine Leute!
	AI_Output (other, self, "DIA_Cipher_WannaJoin_15_02"); //Warum?
	AI_Output (self, other, "DIA_Cipher_WannaJoin_07_03"); //Lee war immer schon ein ruhiger Vertreter. Das war schon damals in der Kolonie so.
	AI_Output (self, other, "DIA_Cipher_WannaJoin_07_04"); //Aber in letzter Zeit übertreibt er es. Er will, dass wir hier sitzen und einfach abwarten, bis die Paladine ausgehungert sind.
	AI_Output (self, other, "DIA_Cipher_WannaJoin_07_05"); //Sylvio ist der Meinung, wir sollten mal ein bisschen auf den kleinen Höfen und vor der Stadt aufräumen.
	AI_Output (self, other, "DIA_Cipher_WannaJoin_07_06"); //Ich glaube, das wäre mal 'ne gelungene Abwechslung.
	AI_Output (self, other, "DIA_Cipher_WannaJoin_07_07"); //Zurzeit drehen die meisten von uns hier nur Däumchen - willst du dich uns trotzdem anschließen?
};

// ************************************************************
// 			  					YesJoin 
// ************************************************************

instance DIA_Cipher_YesJoin (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_YesJoin_Condition;
	information	= DIA_Cipher_YesJoin_Info;
	permanent	= FALSE;
	description = "Ich will auf jeden Fall bei euch mitmachen!";
};                       

FUNC INT DIA_Cipher_YesJoin_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Cipher_WannaJoin))
	&& (other.guild == GIL_NONE)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_YesJoin_Info()
{	
	AI_Output (other, self, "DIA_Cipher_YesJoin_15_00"); //Ich will auf jeden Fall bei euch mitmachen!
	AI_Output (self, other, "DIA_Cipher_YesJoin_07_01"); //Du weißt bestimmt schon, dass über jeden Neuen abgestimmt wird?
	AI_Output (other, self, "DIA_Cipher_YesJoin_15_02"); //Worauf willst du hinaus?
	AI_Output (self, other, "DIA_Cipher_YesJoin_07_03"); //Na ja, ich hatte lange nichts mehr zu rauchen. Bring mir ein paar Stängel Sumpfkraut und meine Stimme gehört dir.
	AI_Output (self, other, "DIA_Cipher_YesJoin_07_04"); //Du kannst bestimmt irgendwo was auftreiben.
	
	MIS_Cipher_BringWeed = LOG_RUNNING;
	
	Log_CreateTopic (Topic_CipherHerb,LOG_MISSION);
	Log_SetTopicStatus(Topic_CipherHerb,LOG_RUNNING);
	B_LogEntry (Topic_CipherHerb,"Cipher gibt mir seine Stimme, wenn ich ihm ein paar Stengel Sumpfkraut bringe.");
};

// ************************************************************
// 			  					Joints 
// ************************************************************

instance DIA_Cipher_Joints (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_Joints_Condition;
	information	= DIA_Cipher_Joints_Info;
	permanent	= TRUE;
	description = "Wegen des Sumpfkrauts ...";
};                       

FUNC INT DIA_Cipher_Joints_Condition()
{
	if (MIS_Cipher_BringWeed == LOG_RUNNING)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_Joints_Info()
{	
	AI_Output (other, self, "DIA_Cipher_Joints_15_00"); //Wegen des Sumpfkrauts ...
	
	if (MIS_Cipher_Paket == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Cipher_Joints_07_01"); //Du hast mir mein Paket zurückgebracht! Jetzt wird alles wieder gut.
		if (other.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Cipher_Joints_07_02"); //Dass ich für dich stimme ist ja wohl klar ...
			
			B_LogEntry (TOPIC_SLDRespekt,"Cipher stimmt für mich, wenn ich mich den Söldnern anschließe.");
		};
		
		MIS_Cipher_BringWeed = LOG_OBSOLETE; //Cipher ist glücklich
	}
	else //normal Running
	{
		Info_ClearChoices (DIA_Cipher_Joints);
		Info_AddChoice (DIA_Cipher_Joints, "Ich werd sehen, was ich machen kann...", DIA_Cipher_Joints_Running);
		if (Npc_HasItems (other, ITMI_REVIVED_JOINT_REGULAR) > 0)
		{
			Info_AddChoice (DIA_Cipher_Joints, "Hier hast du ein paar Stengel...", DIA_Cipher_Joints_Success);
		};
	};
};

func void DIA_Cipher_Joints_Running()
{
	AI_Output (other, self, "DIA_Cipher_Joints_Running_15_00"); //Ich werd sehen, was ich machen kann...
	Info_ClearChoices (DIA_Cipher_Joints);
};

func void DIA_Cipher_Joints_Success()
{
	AI_Output (other, self, "DIA_Cipher_Joints_Success_15_00"); //Hier hast du ein paar Stengel...
	
	if (B_GiveInvItems (other, self, ITMI_REVIVED_JOINT_REGULAR, 10))
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ah! Du bist mein Mann!
		if (other.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Cipher_Joints_Success_07_02"); //Meine Stimme gehört dir.
		};
		MIS_Cipher_BringWeed = LOG_SUCCESS;
		B_LogEntry (TOPIC_SLDRespekt,"Cipher stimmt für mich, wenn ich mich den Söldnern anschließe.");
		B_GivePlayerXP (XP_CipherWeed);
		
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_03"); //So wenig? Das hab ich doch in einem Mal weggeraucht!
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_04"); //Also 10 Stängel müssen's schon sein.
		if (other.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Cipher_Joints_Success_07_05"); //Immerhin geb ich dir meine Stimme für die Aufnahme bei uns.
		};
	};

	Info_ClearChoices (DIA_Cipher_Joints);
};


// ************************************************************
// 			  				SELL SWAMPWEED
// ************************************************************

instance DIA_Cipher_Swampweed (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_Swampweed_Condition;
	information	= DIA_Cipher_Swampweed_Info;
	permanent	= TRUE;
	description = "Brauchst du mehr Sumpfkraut?";
};                       

FUNC INT DIA_Cipher_Swampweed_Condition()
{
	if (MIS_Cipher_BringWeed == LOG_SUCCESS)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_Swampweed_Info()
{
		AI_Output (other, self, "DIA_Addon_Fortuno_Herb_15_00"); //Brauchst du mehr Sumpfkraut?
		AI_Output (self, other, "DIA_Cipher_YesJoin_07_04"); //Du kannst bestimmt irgendwo was auftreiben.

	if(CipherBuysWeed != TRUE)
	{
		Log_CreateTopic (Topic_SoldierTrader,LOG_NOTE);
		B_LogEntry (Topic_SoldierTrader,"Cipher wird mir Sumpfkrautstängel abkaufen.");
		CipherBuysWeed = TRUE;
	};


	var int SwampweedCount;
	var int SwampweedGeld;

	SwampweedCount = (Npc_HasItems(other, ITMI_REVIVED_JOINT_REGULAR)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_APPLE)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_APPLEDOUBLE)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_HONEY)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_MUSHROOM)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_GREENNOVICE)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_NORTHDARK)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_DREAMCALL)
					+ Npc_HasItems(other, ITMI_REVIVED_JOINT_DREAMCALL_02));

	if(SwampweedCount == 0)
	{
		AI_Output (other, self, "DIA_Cipher_Joints_Running_15_00"); //Werd' sehen was ich rausfinden kann.
	} 
	else
	{
		AI_Output (other, self, "DIA_Cipher_Joints_Success_15_00"); //Hier sind ein paar Stängel für dich.
		AI_Output (self, other, "DIA_Cipher_Joints_Success_07_01"); //Ah! Du bist mein Mann!
	
		
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_REGULAR, Npc_HasItems(other, ITMI_REVIVED_JOINT_REGULAR));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_APPLE, Npc_HasItems(other, ITMI_REVIVED_JOINT_APPLE));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_APPLEDOUBLE, Npc_HasItems(other, ITMI_REVIVED_JOINT_APPLEDOUBLE));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_HONEY, Npc_HasItems(other, ITMI_REVIVED_JOINT_HONEY));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_MUSHROOM, Npc_HasItems(other, ITMI_REVIVED_JOINT_MUSHROOM));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_GREENNOVICE, Npc_HasItems(other, ITMI_REVIVED_JOINT_GREENNOVICE));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_NORTHDARK, Npc_HasItems(other, ITMI_REVIVED_JOINT_NORTHDARK));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_DREAMCALL, Npc_HasItems(other, ITMI_REVIVED_JOINT_DREAMCALL));
		Npc_RemoveInvItems(other, ITMI_REVIVED_JOINT_DREAMCALL_02, Npc_HasItems(other, ITMI_REVIVED_JOINT_DREAMCALL_02));
		
				SwampweedGeld = (SwampweedCount * Value_Joint); 

			var string concatText;
			concatText = ConcatStrings(IntToString(SwampweedCount), PRINT_ItemsGegeben);
			AI_PrintScreen (concatText, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		
			B_GivePlayerXP (SwampweedGeld);

			CreateInvItems (self, ItMi_Gold, SwampweedGeld); 
			B_GiveInvItems (self, other, ItMi_Gold, SwampweedGeld);
		
	};
};

/* 
// ************************************************************
// 			  					TRADE
// ************************************************************

instance DIA_Cipher_TRADE (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_TRADE_Condition;
	information	= DIA_Cipher_TRADE_Info;
	permanent	= TRUE;
	description = "Show me your wares.";
	trade		= TRUE;
};                       

FUNC INT DIA_Cipher_TRADE_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Cipher_TradeWhat))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_TRADE_Info()
{	
	AI_Output (other, self, "DIA_Cipher_TRADE_15_00"); //Zeig mir deine Ware.
	if (Npc_HasItems(self, ITMI_REVIVED_JOINT_REGULAR) > 0)
	{
		AI_Output (self, other, "DIA_Cipher_TRADE_07_01"); //Klar. Bedien dich.
	}
	else
	{
		AI_Output (self, other, "DIA_Cipher_TRADE_07_02"); //Ich hab zurzeit kein Sumpfkraut. Willst du was anderes?
	};
};
 */
// ************************************************************
// 			  					Dar Dieb
// ************************************************************

instance DIA_Cipher_DarDieb (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_DarDieb_Condition;
	information	= DIA_Cipher_DarDieb_Info;
	permanent	= FALSE;
	description = "Ich weiß, wer dein Kraut gestohlen hat.";
};                       

FUNC INT DIA_Cipher_DarDieb_Condition()
{
	if ( (Dar_Dieb == TRUE) || (Dar_Verdacht == TRUE) )
	&& (!Npc_IsDead (Dar))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_DarDieb_Info()
{	
	AI_Output (other, self, "DIA_Cipher_DarDieb_15_00"); //Ich weiß, wer dein Kraut gestohlen hat.
	AI_Output (self, other, "DIA_Cipher_DarDieb_07_01"); //Wer? War es dieser Bodo?
	AI_Output (other, self, "DIA_Cipher_DarDieb_15_02"); //Nein - es war einer von den Söldnern - Dar.
	AI_Output (self, other, "DIA_Cipher_DarDieb_07_03"); //Dieser Dreckskerl - wo ist er?
	AI_Output (other, self, "DIA_Cipher_DarDieb_15_04"); //Du kannst dir den Weg sparen, er hat das Paket nicht mehr. Er hat es in Khorinis verkauft.
	AI_Output (self, other, "DIA_Cipher_DarDieb_07_05"); //WO IST ER!?!
	AI_Output (other, self, "DIA_Cipher_DarDieb_15_06"); //Hinterm Küchenhaus, an der Ecke ...
	AI_Output (self, other, "DIA_Cipher_DarDieb_07_07"); //ICH MACH IHN PLATT!
	
	AI_StopProcessInfos(self);
	other.aivar[AIV_INVINCIBLE] = FALSE;
	B_Attack (self, Dar, AR_NONE, 0);
};

// ************************************************************
// 			  					Dar LOST
// ************************************************************

instance DIA_Cipher_DarLOST (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_DarLOST_Condition;
	information	= DIA_Cipher_DarLOST_Info;
	permanent	= FALSE;
	description = "Du hast es Dar wohl ziemlich gezeigt ... Fühlst du dich jetzt besser?";
};                       

FUNC INT DIA_Cipher_DarLOST_Condition()
{
	if (Dar_LostAgainstCipher == TRUE)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_DarLOST_Info()
{	
	AI_Output (other, self, "DIA_Cipher_DarLOST_15_00"); //Du hast es Dar wohl ziemlich gezeigt ... Fühlst du dich jetzt besser?
	AI_Output (self, other, "DIA_Cipher_DarLOST_07_01"); //(seufzt) Ja, das tat gut.
	AI_Output (other, self, "DIA_Cipher_DarLOST_15_02"); //Ich schätze, IHM nicht so ...
	AI_Output (self, other, "DIA_Cipher_DarLOST_07_03"); //Was geht der kleine Penner auch an meine Truhe!
	
	B_GivePlayerXP ((XP_Ambient)*2);
	Npc_ExchangeRoutine(self, "Start");
};

// ************************************************************
// 			  				Kraut PAKET
// ************************************************************

instance DIA_Cipher_KrautPaket (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 2;
	condition	= DIA_Cipher_KrautPaket_Condition;
	information	= DIA_Cipher_KrautPaket_Info;
	permanent	= FALSE;
	description = "Kann es sein, dass dieses Paket Sumpfkraut dir gehört?";
};                       

FUNC INT DIA_Cipher_KrautPaket_Condition()
{
	if (Npc_HasItems (other, ItMi_HerbPaket) > 0)
	&& (MIS_Cipher_Paket == LOG_RUNNING)
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Cipher_KrautPaket_Info()
{	
	AI_Output (other, self, "DIA_Cipher_KrautPaket_15_00"); //Kann es sein, dass dieses Paket Sumpfkraut dir gehört?
	B_GiveInvItems (other, self, ItMi_HerbPaket, 1);
	AI_Output (self, other, "DIA_Cipher_KrautPaket_07_01"); //Ich werd verrückt! Wo hast du es her?
	AI_Output (other, self, "DIA_Cipher_KrautPaket_15_02"); //Ist 'ne lange Geschichte ...
	
	AI_Output (self, other, "DIA_Cipher_KrautPaket_07_03"); //Ist ja auch egal, du bist echt 'n anständiger Kerl.
	AI_Output (self, other, "DIA_Cipher_KrautPaket_07_04"); //Hier, das sollst du als Belohnung haben. Viel Spaß damit!
	B_GiveInvItems (self, other, itmi_gold, 200);
	B_GiveInvItems (self, other, ItMi_SumpfTabak, 5);
	B_GivePlayerXP (XP_Cipher_KrautPaket);
	
	AI_Output (self, other, "DIA_Cipher_KrautPaket_07_05"); //Ich werd erstmal ein paar drehen ...
	CreateInvItems (self, ITMI_REVIVED_JOINT_REGULAR, 40);
	Npc_RemoveInvItems (self, ItMi_HerbPaket, 1);
	
	MIS_Cipher_Paket = LOG_SUCCESS;
	B_GivePlayerXP (XP_CipherPaket);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_CipherSLD_PICKPOCKET (C_INFO)
{
	npc			= Sld_803_Cipher;
	nr			= 900;
	condition	= DIA_CipherSLD_PICKPOCKET_Condition;
	information	= DIA_CipherSLD_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_60;
};                       

FUNC INT DIA_CipherSLD_PICKPOCKET_Condition()
{
	C_Beklauen (65, 65);
};
 
FUNC VOID DIA_CipherSLD_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_CipherSLD_PICKPOCKET);
	Info_AddChoice		(DIA_CipherSLD_PICKPOCKET, DIALOG_BACK 		,DIA_CipherSLD_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_CipherSLD_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_CipherSLD_PICKPOCKET_DoIt);
};

func void DIA_CipherSLD_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Cipher_PICKPOCKET);
};
	
func void DIA_CipherSLD_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Cipher_PICKPOCKET);
};


		



		
	
//#####################################################################
//##
//##
//##						Bis - KAPITEL 3 - (danach in OW!)
//##
//##
//#####################################################################
	

	



	
/**/
