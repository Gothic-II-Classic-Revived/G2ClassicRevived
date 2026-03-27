
// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_DiegoNW_EXIT(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 999;
	condition	= DIA_DiegoNW_EXIT_Condition;
	information	= DIA_DiegoNW_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_DiegoNW_EXIT_Condition()
{
	return TRUE;
};
 
FUNC VOID DIA_DiegoNW_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


//######################################
//##
//##	Permanent Info
//##
//######################################


// ************************************************************
// 	  	  Wie laufen die Geschfte? (perm)
// ************************************************************

INSTANCE DIA_DiegoNW_Perm(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 998;
	condition	= DIA_DiegoNW_Perm_Condition;
	information	= DIA_DiegoNW_Perm_Info;
	permanent	= TRUE;

	description = "Wie läuft das Geschäft?";
};                       
FUNC INT DIA_DiegoNW_Perm_Condition()
{
	if (Diego_IsOnBoard == FALSE) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_DiegoNW_Perm_Info()
{	
	AI_Output (other,self ,"DIA_DiegoNW_Perm_15_00"); //Wie läuft das Geschäft?
	AI_Output (self ,other,"DIA_DiegoNW_Perm_11_01"); //Lausig. Warum hat mir keiner gesagt, dass Khorinis in der Zwischenzeit so verkommen ist.
	AI_Output (other,self ,"DIA_DiegoNW_Perm_15_02"); //Keine Ahnung. Ich habe die Stadt so kennen gelernt.
	AI_Output (self ,other,"DIA_DiegoNW_Perm_11_03"); //Hättest mal vor einigen Jahren hier sein sollen. Es hätte dir gefallen.
};


//######################################
//##
//##	Kapitel 3
//##
//######################################

// ************************************************************
// 	  	  Ich brauche deine Hilfe.
// ************************************************************

INSTANCE DIA_DiegoNW_NeedHelp(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 1;
	condition	= DIA_DiegoNW_NeedHelp_Condition;
	information	= DIA_DiegoNW_NeedHelp_Info;

	important 	= TRUE;
};                       
FUNC INT DIA_DiegoNW_NeedHelp_Condition()
{
	if (Diego_IsOnBoard == FALSE) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_DiegoNW_NeedHelp_Info()
{	
	if (Diego_IsDead == TRUE)
	{
		AI_Output (self ,other,"DIA_Addon_DiegoNW_NeedHelp_11_01"); //Jetzt guck doch nicht so blöd aus der Wäsche.
		AI_Output (self ,other,"DIA_Addon_DiegoNW_NeedHelp_11_02"); //(lacht) Du dachtest wohl, es hätte mich erwischt, was?
		AI_Output (self ,other,"DIA_Addon_DiegoNW_NeedHelp_11_03"); //Ich war ziemlich lange bewußtlos. Aber wie du siehst lebe ich noch.
		AI_Output (self ,other,"DIA_Addon_DiegoNW_NeedHelp_11_04"); //Das wichtigste ist, das wir beide jetzt hier sind.
		AI_Output (self ,other,"DIA_Addon_DiegoNW_NeedHelp_11_05"); //Du musst mir helfen.
	}
	else
	{
		AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_11_00"); //Gut, dass du kommst. Du musst mir helfen.
	};
	Info_ClearChoices (DIA_DiegoNW_NeedHelp);
	
	if (DiegoOW.aivar[AIV_TalkedToPlayer] == FALSE)
	{
	//	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Wer bist du?",DIA_DiegoNW_NeedHelp_WhoAreYou);//Joly:macht keinen Sinn. Ohne mit Diego gesprochen zu haben -> Kein DiegoNW !! Hauptstory Kapitel 2 OW!!!!
	};
	
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Was sind das für Klamotten?",DIA_DiegoNW_NeedHelp_Clothes);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Was machst du hier?",DIA_DiegoNW_NeedHelp_Plan);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Worum geht´s?",DIA_DiegoNW_NeedHelp_Problem);
};

FUNC VOID DIA_DiegoNW_NeedHelp_Plan()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Plan_15_00"); //Was machst du hier?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Plan_11_01"); //Ich beobachte die Wachen. Die passen auf wie die Schießhunde.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Plan_11_02"); //Ich glaube nicht, dass ich da einfach so durchkomme.
};

FUNC VOID DIA_DiegoNW_NeedHelp_WhoAreYou()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_WhoAreYou_15_00"); //Wer bist du?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_01"); //Das liegt sicher nur an den Klamotten. Die Wachen wollten mich nicht in die Stadt lassen.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_02"); //Deshalb habe ich mir bei einem Händler vor der Stadt diesen Fummel zugelegt. Jetzt weißt du hoffentlich wieder, wer ich bin. Ich bin Diego.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_03"); //Ich hab dir damals im Knast alles beigebracht, was du wissen musst, um zu überleben.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_04"); //Das kannst du gar nicht alles vergessen haben.
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_WhoAreYou_15_05"); //Äh ... was ist damals genau passiert?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_06"); //Ach du Scheiße, du kannst dich wirklich nicht mehr an damals erinnern.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_07"); //Pass auf, ich habe jetzt wirklich nicht genug Zeit, um dir alles zu erklären. Nur soviel, wir sind verdammt gute Freunde gewesen, und ich habe dir mehr als einmal das Leben gerettet.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_WhoAreYou_11_08"); //Und ich brauche jetzt deine Hilfe.
};

FUNC VOID DIA_DiegoNW_NeedHelp_Clothes()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Clothes_15_00"); //Was sind das für Klamotten?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Clothes_11_01"); //Die habe ich von einem Händler vor der Stadt gekauft. Die Wachen wollten mich zuerst nicht reinlassen.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Clothes_11_02"); //Außerdem muss ich ja nicht jedem unter die Nase reiben, wo ich herkomme.
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Clothes_15_03"); //Stimmt auch wieder.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Clothes_11_04"); //Sehe ich auch so, aber auch wenn ich meine Schattenkluft abgelegt habe, bin ich immer noch der Alte.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Clothes_11_05"); //Und ich habe große Pläne mit dieser Stadt.
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem ()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_15_00"); //Worum geht's?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_11_01"); //Hier hat sich 'ne ganze Menge verändert, seit ich weg bin. Ich muss zusehen, dass ich wieder auf die Beine komme.
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_15_02"); //Was ist dein Problem?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_11_03"); //Ich muss ins obere Viertel.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_11_04"); //Da ich aber weder Bürger der Stadt bin, noch genug Geld habe, um die Wachen zu bestechen, brauche ich dich!
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_15_05"); //Ich soll dir also Gold leihen?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_11_06"); //Quatsch. Ich habe Gold, sogar sehr viel Gold! Leider habe ich es nicht bei mir.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_11_07"); //Du musst mir mein Gold besorgen.
	
	Info_ClearChoices (DIA_DiegoNW_NeedHelp);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Dafür habe ich keine Zeit",DIA_DiegoNW_NeedHelp_Problem_NoTime);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Was springt für mich dabei	raus?",DIA_DiegoNW_NeedHelp_Problem_Reward);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Ich werde dir helfen.",DIA_DiegoNW_NeedHelp_Problem_WillHelpYou);
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_NoTime()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_NoTime_15_00"); //Dafür habe ich keine Zeit
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_NoTime_11_01"); //Na ich dachte, wir wären Freunde! Ich habe dir damals schließlich deinen Arsch gerettet, als sie dich in die Kolonie geworfen haben.
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_NoTime_15_02"); //Du übertreibst.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_NoTime_11_03"); //So? Tue ich das? Dann denk mal scharf nach, was passiert wäre, wenn ich dir nicht erklärt hätte, wie du dich damals hättest verhalten sollen.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_NoTime_11_04"); //Die Erzbarone hätten dich zum Frühstück verspeist und du wärst elendig in der Mine verreckt.

	MIS_HelpDiegoNW = LOG_FAILED;
	
	Info_ClearChoices (DIA_DiegoNW_NeedHelp);
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_Reward()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_Reward_15_00"); //Was springt für mich dabei	raus?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_Reward_11_01"); //Habe ich dich jemals gefragt, was ich von dir bekomme? Wir sind Freunde, das sollte doch wohl reichen.
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_WillHelpYou()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_15_00"); //Ich werde dir helfen.
	AI_Output (self ,other,"DIA_Addon_DiegoNW_WillHelpYou_11_01"); //Gut. Pass auf. Ich habe damals, als die Barriere noch stand, einen kleinen Schatz versteckt.
	AI_Output (self ,other,"DIA_Addon_DiegoNW_WillHelpYou_11_02"); //Ist schon 'ne ganze Weile her. Darum hab ich auch vergessen, ihn mitzunehmen.
	AI_Output (self ,other,"DIA_Addon_DiegoNW_WillHelpYou_11_03"); //Und ich kann hier zur Zeit auf keinen Fall weg.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_11_03"); //Um es kurz zu machen, du musst für mich ins Minental gehen und mir mein Gold holen.

	MIS_HelpDiegoNW = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_HelpDiegoNW,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_HelpDiegoNW,LOG_RUNNING);
	B_LogEntry (TOPIC_HelpDiegoNW,"Diego's Gold liegt im Minental. Er braucht es, um ins obere Viertel zu kommen und er schickt mich, es zu holen.");
	
	Info_ClearChoices (DIA_DiegoNW_NeedHelp);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Was hast du mit dem Gold vor?",DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_YourPlan);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Wo hast du das ganze Gold her?",DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_HowGold);
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Wo ist das Gold versteckt?",DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold);
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_YourPlan()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_YourPlan_15_00"); //Was hast du mit dem Gold vor?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_YourPlan_11_01"); //Ich habe bei einem der Händler im Oberen Viertel noch 'ne Rechnung offen. Die gilt es zu begleichen.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_YourPlan_11_02"); //Dann steht einer neuen Karriere nichts mehr im Wege!
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_HowGold()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_HowGold_15_00"); //Wo hast du das ganze Gold her?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_HowGold_11_01"); //Sag mal, bin ich eigentlich der Einzige, der sich im Minental die Goldstücke unter den Nagel gerissen hat?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_HowGold_11_02"); //Nichts war leichter, als ein paar Goldstücke auf die Seite zu bringen. Nur für den Fall, dass wir da noch mal rauskommen.
	AI_Output (self ,other,"DIA_Addon_DiegoNW_WillHelpYou_HowGold_11_03"); //Alle waren so scharf auf das Erz, daß sich keiner für Gold interessiert hat... 
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_15_00"); //Wo ist das Gold versteckt?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_11_01"); //Direkt am Austauschplatz. Oberhalb der verlassenen Mine. Es ist in einem Lederbeutel.
	if (Diego_angekommen == TRUE)
	{
		AI_Output (self ,other,"DIA_Addon_DiegoNW_WillHelpYou_WhereGold_11_01"); //Spar dir deinen Kommentar. Ich weiß selber, daß wir praktisch dran vorbeigelaufen sind.
		AI_Output (self ,other,"DIA_Addon_DiegoNW_WillHelpYou_WhereGold_11_02"); //Bring mir einfach den Beutel.
	};
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_11_02"); //Aber schau bitte vorher nach, ob es der Richtige ist, nicht, dass du den ganzen Weg umsonst machst.
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_15_03"); //Woran kann ich ihn erkennen?
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_11_04"); //Er ist voll Gold. Eine ganze Menge Gold!
					
	Info_AddChoice (DIA_DiegoNW_NeedHelp,"Ich werde versuchen dein Gold zu finden.",DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_End_TryIt);		
	
	B_LogEntry (TOPIC_HelpDiegoNW,"Diegos Gold liegt irgendwo am alten Austauschplatz, wo früher die Waren per Seilbahn in die Kolonie gebracht wurden, oberhalb der verlassenen Mine.");
};

FUNC VOID DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_End_TryIt ()
{
	AI_Output (other,self ,"DIA_DiegoNW_NeedHelp_Problem_TryIt_15_00"); //Ich werde versuchen dein Gold zu finden.
	AI_Output (self ,other,"DIA_DiegoNW_NeedHelp_Problem_TryIt_11_01"); //(grinst)Tu es einfach. Das reicht mir schon.

	Info_ClearChoices (DIA_DiegoNW_NeedHelp);
};

//***********************************************
//	Ok, ich werde dir doch helfen.
//***********************************************

INSTANCE DIA_DiegoNW_HelpYou(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 30;
	condition	= DIA_DiegoNW_HelpYou_Condition;
	information	= DIA_DiegoNW_HelpYou_Info;
	permanent	= FALSE;
	description	= "Ok, ich werde dir doch helfen.";
};                       
FUNC INT DIA_DiegoNW_HelpYou_Condition()
{
	if (Diego_IsOnBoard == FALSE)
	&& (MIS_HElpDiegoNW == LOG_FAILED) 
	&& (Diego_IsOnBOard != LOG_SUCCESS)
	{
		return TRUE;
	};
};
FUNC VOID DIA_DiegoNW_HelpYou_Info()
{	
	AI_Output (other,self ,"DIA_DiegoNW_HelpYou_15_00"); //OK, I'll help you after all.
	AI_Output (self ,other,"DIA_DiegoNW_HelpYou_11_01"); //I knew it.
	AI_Output (other,self ,"DIA_DiegoNW_HelpYou_15_02"); //OK, let's get straight down to business.
	AI_Output (self ,other,"DIA_DiegoNW_HelpYou_11_03"); //All right. I have hidden a treasure in the Valley of Mines, and you are to go and get it for me.
	AI_Output (self ,other,"DIA_DiegoNW_HelpYou_11_06"); //I'll stay here in the meantime and prepare everything.
	DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold();
	DIA_DiegoNW_NeedHelp_Problem_WillHelpYou_WhereGold_End_TryIt();

	MIS_HelpDiegoNW = LOG_RUNNING;
	Log_CreateTopic (TOPIC_HelpDiegoNW,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_HelpDiegoNW,LOG_RUNNING);
	B_LogEntry (TOPIC_HelpDiegoNW,"Diego's Gold liegt im Minental. Er braucht es, um ins obere Viertel zu kommen und er schickt mich, es zu holen.");
};

//***********************************************
//	Ich habe dein Gold gefunden!
//***********************************************

INSTANCE DIA_DiegoNW_HaveYourGold(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 31;
	condition	= DIA_DiegoNW_HaveYourGold_Condition;
	information	= DIA_DiegoNW_HaveYourGold_Info;
	permanent	= TRUE;
	description	= "Ich habe dein Gold gefunden!";
};            

FUNC INT DIA_DiegoNW_HaveYourGold_Condition()
{
	if ((OpenedDiegosBag == TRUE)
	|| (Npc_HasItems (other,ItSe_DiegosTreasure_Mis) >=1))
	&& (MIS_HelpDiegoNW == LOG_RUNNING)
	&& (Diego_IsOnBOard != LOG_SUCCESS)
	{
		return TRUE;
	};
};

FUNC VOID B_DIEGONW_DIEGOSREVENGE ()
{
	AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_05"); //Very good. Gerbrandt had better watch out now.
};

var int DiegosRevenge;

FUNC VOID DIA_DiegoNW_HaveYourGold_Info()
{	
	AI_Output (other,self ,"DIA_DiegoNW_HaveYourGold_15_00"); //I found your gold!
	AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_01"); //Great. Show me.
	
	IF (Npc_HasItems (other,ItSe_DiegosTreasure_Mis) >=1)
	{
		B_GiveInvItems (other,self ,ItSe_DiegosTreasure_Mis,1);
		B_DIEGONW_DIEGOSREVENGE ();
		DiegosRevenge = TRUE;
	}
	else if (Npc_HasItems (other,ItMi_Gold < DiegosTreasure))
	{
		AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_02"); //But that's not all of it! Don't you trust me? I need the entire sum.
		AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_03"); //If my plan works out, there will be enough left over for you.
		AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_04"); //So make sure that I get the whole amount. It's important!
	}
	else
	{
		B_GiveInvItems (other,self ,ItMi_Gold,DiegosTreasure);
		B_DIEGONW_DIEGOSREVENGE ();
		DiegosRevenge = TRUE;
	};	
	
	if (Npc_IsDead (Gerbrandt) == FALSE)
	&& (DiegosRevenge == TRUE)
	{
		AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_06"); //Listen, I still need to take care of the guards.
		AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_07"); //I want you to take this letter to Gerbrandt. He is one of the fat merchants in the upper quarter.
		AI_Output (self ,other,"DIA_DiegoNW_HaveYourGold_11_08"); //Give him my regards. I'll meet you in front of Gerbrandt's house, then.

		CreateInvItems (self ,ItWr_DiegosLetter_MIS,1);
		B_GiveInvItems (self,other,ItWr_DiegosLetter_MIS,1);
		
		B_StartOtherRoutine (Gerbrandt,"WaitForDiego");
		
		MIS_HelpDiegoNW = LOG_SUCCESS;
		MIS_DiegosResidence = LOG_RUNNING;
		B_GivePlayerXP (XP_HelpDiegoNW);

		Log_CreateTopic (TOPIC_DiegosResidence,LOG_MISSION);
		Log_SetTopicStatus (TOPIC_DiegosResidence,LOG_RUNNING);
		B_LogEntry (TOPIC_DiegosResidence,"Diego hat mir einen Brief für den Händler Gerbrandt gegeben.");
		
		AI_StopProcessInfos (self);
	};		
		
	
};


//***********************************************
//	Ich habe den Brief abgeliefert.
//***********************************************

INSTANCE DIA_DiegoNW_DeliveredLetter(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 30;
	condition	= DIA_DiegoNW_DeliveredLetter_Condition;
	information	= DIA_DiegoNW_DeliveredLetter_Info;
	permanent	= FALSE;
	description	= "Ich habe den Brief abgegeben.";
};
                       
FUNC INT DIA_DiegoNW_DeliveredLetter_Condition()
{
	if (Diego_IsOnBoard == FALSE)
	&& (MIS_DiegosResidence == LOG_SUCCESS)
	{
		return TRUE;
	};
};

FUNC VOID DIA_DiegoNW_DeliveredLetter_Info()
{
		
	AI_Output (other,self ,"DIA_DiegoNW_DeliveredLetter_15_00"); //I delivered the letter.
	AI_Output (self ,other,"DIA_DiegoNW_DeliveredLetter_11_01"); //Very good. How did Gerbrandt take it?
	AI_Output (other,self ,"DIA_DiegoNW_DeliveredLetter_15_02"); //He was rather shocked and made himself scarce right away.
	AI_Output (self ,other,"DIA_DiegoNW_DeliveredLetter_11_03"); //(satisfied) I should think so.
	AI_Output (self ,other,"DIA_DiegoNW_DeliveredLetter_11_04"); //I'm afraid that, first of all, I need to attend to furnishing my new house. If I remember correctly, Gerbrandt's taste is horrible.
	  
	B_GivePlayerXP (XP_DiegoHasANewHome);

	Wld_AssignRoomToGuild ("reich01",		GIL_PUBLIC);

	Info_ClearChoices (DIA_DiegoNW_DeliveredLetter);
	Info_AddChoice (DIA_DiegoNW_DeliveredLetter,"Wie ist dir denn das gelungen?",DIA_DiegoNW_DeliveredLetter_YourTrick);	
	Info_AddChoice (DIA_DiegoNW_DeliveredLetter,"Der Kasten gehört dir?",DIA_DiegoNW_DeliveredLetter_YourHouse);
};

FUNC VOID DIA_DiegoNW_DeliveredLetter_Gerbrandt ()
{
	AI_Output (other,self ,"DIA_DiegoNW_TalkedToJudge_Gerbrandt_15_00"); //What about Gerbrandt?
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_Gerbrandt_11_01"); //He has enjoyed the good life for far too long.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_Gerbrandt_11_02"); //He was living here, in the lap of luxury, while I was forcing down meatbug stew.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_Gerbrandt_11_03"); //I have no idea where he went from here, but he'll never get a foothold in Khorinis again - I'll see to that.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_Gerbrandt_11_04"); //If you're looking for him, you should try the harbor district.
};

FUNC VOID DIA_DiegoNW_DeliveredLetter_YourHouse()
{
	AI_Output (other,self ,"DIA_DiegoNW_TalkedToJudge_YourHouse_15_00"); //The house is yours, then?
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourHouse_11_01"); //Yes, from cellar to attic, with all the furnishings.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourHouse_11_02"); //Having spent several years in less-than-befitting quarters, I'm looking forward to sleeping in a soft four-poster bed.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourHouse_11_03"); //And then, for breakfast, I'll have a fine wine and some excellent ham.
	AI_Output (other,self ,"DIA_DiegoNW_TalkedToJudge_YourHouse_15_04"); //You don't miss any chances, do you?
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourHouse_11_05"); //You betcha.
};

FUNC VOID DIA_DiegoNW_DeliveredLetter_YourTrick ()
{
	AI_Output (other,self ,"DIA_DiegoNW_TalkedToJudge_YourTrick_15_00"); //So how did you pull this off?
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourTrick_11_01"); //Did you think that Gerbrandt came by his fortune through honest business?
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourTrick_11_02"); //Of course he never got his fingers dirty when it came to really shady deals. He had a helper for that.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourTrick_11_03"); //Of course, I caught on to a lot back then. Gerbrandt finally got rid of me. He was probably afraid that I knew too much.
	AI_Output (other,self ,"DIA_DiegoNW_TalkedToJudge_YourTrick_15_04"); //You never told me about that.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourTrick_11_05"); //You never asked me.
	
	Info_ClearChoices (DIA_DiegoNW_DeliveredLetter);
	Info_AddChoice (DIA_DiegoNW_DeliveredLetter,DIALOG_BACK,DIA_DiegoNW_DeliveredLetter_YourTrick_BACK);
	Info_AddChoice (DIA_DiegoNW_DeliveredLetter,"Was ist mit meinem Anteil?",DIA_DiegoNW_DeliveredLetter_YourTrick_REWARD);
	Info_AddChoice (DIA_DiegoNW_DeliveredLetter,"Was ist mit Gerbrandt?",DIA_DiegoNW_DeliveredLetter_Gerbrandt);
}; 

FUNC VOID DIA_DiegoNW_DeliveredLetter_YourTrick_REWARD()
{

	AI_Output (other,self ,"DIA_DiegoNW_TalkedToJudge_YourTrick_REWARD_15_00"); //What about my share?
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourTrick_REWARD_11_01"); //Looks like you haven't forgotten everything I've taught you after all.
	AI_Output (self ,other,"DIA_DiegoNW_TalkedToJudge_YourTrick_REWARD_11_02"); //But you're right, I couldn't have done it without you. Here's your share.
	
	CreateInvItems (self ,ItMi_Gold,500);
	B_GiveInvItems (self,other,ItMi_Gold,500);
};

FUNC VOID DIA_DiegoNW_DeliveredLetter_YourTrick_BACK()
{
	Info_ClearChoices (DIA_DiegoNW_DeliveredLetter);
};


// ************************************************************
// 	  	  Kannst du mir was beibringen?
// ************************************************************

//---------------------------
var int Diego_Teach;
//---------------------------

INSTANCE DIA_DiegoNW_CanYouTeach(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 995;
	condition	= DIA_DiegoNW_CanYouTeach_Condition;
	information	= DIA_DiegoNW_CanYouTeach_Info;
	permanent	= TRUE;

	description = "Kannst du mir was beibringen?";
};                       
FUNC INT DIA_DiegoNW_CanYouTeach_Condition()
{
	if (Diego_IsOnBoard == FALSE)
	&& (Diego_Teach == FALSE) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_DiegoNW_CanYouTeach_Info()
{	
	AI_Output (other,self ,"DIA_DiegoNW_CanYouTeach_15_00"); //Can you teach me something?
	if (Npc_KnowsInfo (other,DIA_DiegoNW_DeliveredLetter))
	{
		AI_Output (self ,other,"DIA_DiegoNW_CanYouTeach_11_01"); //Yeah, sure. Just let me know when you're ready.
		
		Diego_Teach = TRUE;
	}
	else
	{
		AI_Output (self ,other,"DIA_DiegoNW_CanYouTeach_11_02"); //I have to attend to my business first.
	};
};



// ************************************************************
// 	  	  Bring mir was bei.
// ************************************************************

//-----------------------
var int DiegoNW_Merke_DEX;
//-------------------------

INSTANCE DIA_DiegoNW_Teach(C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 995;
	condition	= DIA_DiegoNW_Teach_Condition;
	information	= DIA_DiegoNW_Teach_Info;
	permanent	= TRUE;

	description = "Bring mir was bei.";
};                       
FUNC INT DIA_DiegoNW_Teach_Condition()
{
	if (Diego_IsOnBoard == FALSE)
	&& (Diego_Teach == TRUE) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_DiegoNW_Teach_Info()
{	
	AI_Output (other,self ,"DIA_DiegoNW_Teach_15_00"); //Teach me.
	AI_Output (self ,other,"DIA_DiegoNW_Teach_11_01"); //I can teach you to become more dexterous.
	
	DiegoNW_Merke_Dex = other.attribute[ATR_DEXTERITY];
	
	Info_ClearChoices	(DIA_DiegoNW_Teach);
	Info_AddChoice		(DIA_DiegoNW_Teach, DIALOG_BACK, DIA_DiegoNW_Teach_BACK);
	Info_AddChoice		(DIA_DiegoNW_Teach, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(other, ATR_DEXTERITY))	,DIA_DiegoNW_TeachDEX_1);
	Info_AddChoice		(DIA_DiegoNW_Teach, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_DiegoNW_TeachDEX_5);
};

func void DIA_DiegoNW_Teach_BACK()
{
	if (DiegoNW_Merke_DEX < other.attribute[ATR_DEXTERITY])
	{
		AI_Output (self, other, "DIA_DiegoNW_Teach_BACK_11_00"); //You've become more dexterous already. Keep it up!
	};
	Info_ClearChoices	(DIA_DiegoNW_Teach);
};

// ------ 1 Geschick -----
func void DIA_DiegoNW_TeachDEX_1()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1, T_MAX);

	Info_ClearChoices	(DIA_DiegoNW_Teach);
	Info_AddChoice		(DIA_DiegoNW_Teach, DIALOG_BACK, DIA_DiegoNW_Teach_BACK);
	Info_AddChoice		(DIA_DiegoNW_Teach, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(other, ATR_DEXTERITY))	,DIA_DiegoNW_TeachDEX_1);
	Info_AddChoice		(DIA_DiegoNW_Teach, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_DiegoNW_TeachDEX_5);
};

// ------ 5 Geschick ------
func void DIA_DiegoNW_TeachDEX_5()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5, T_MAX);
	
	Info_ClearChoices	(DIA_DiegoNW_Teach);
	Info_AddChoice		(DIA_DiegoNW_Teach, DIALOG_BACK, DIA_DiegoNW_Teach_BACK);
	Info_AddChoice		(DIA_DiegoNW_Teach, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(other, ATR_DEXTERITY))	,DIA_DiegoNW_TeachDEX_1);
	Info_AddChoice		(DIA_DiegoNW_Teach, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(other, ATR_DEXTERITY)*5)	,DIA_DiegoNW_TeachDEX_5);
};

//######################################
//##
//##	Kapitel 5
//##
//######################################

///////////////////////////////////////////////////////////////////////
//	Ich weiss wo der Feind ist.
///////////////////////////////////////////////////////////////////////
instance DIA_DiegoNW_KnowWhereEnemy		(C_INFO)
{
	npc			 = 	PC_Thief_NW;
	nr			 = 	55;
	condition	 = 	DIA_DiegoNW_KnowWhereEnemy_Condition;
	information	 = 	DIA_DiegoNW_KnowWhereEnemy_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Ich werde Khorinis verlassen.";
};

func int DIA_DiegoNW_KnowWhereEnemy_Condition ()
{	
	if (MIS_SCKnowsWayToIrdorath == TRUE)
	&& (Diego_IsOnBoard == FALSE) 
	{
		return TRUE;
	};
};

func void DIA_DiegoNW_KnowWhereEnemy_Info ()
{
	AI_Output			(other, self, "DIA_DiegoNW_KnowWhereEnemy_15_00"); //I'm going to leave Khorinis.
	AI_Output			(self, other, "DIA_DiegoNW_KnowWhereEnemy_11_01"); //A wise decision. I wish I could come with you. This town has changed too fast - the times where you could get rich fast are over.
	AI_Output			(self, other, "DIA_DiegoNW_KnowWhereEnemy_11_02"); //I could instruct you in archery, lock picking, and dexterity.
	AI_Output			(self, other, "DIA_DiegoNW_KnowWhereEnemy_11_03"); //Also, I'm sure you can use a decent thief.
	
	Log_CreateTopic (TOPIC_Crew, LOG_MISSION);   	
	Log_SetTopicStatus(TOPIC_Crew, LOG_RUNNING);
	B_LogEntry (TOPIC_Crew,"Diego will natürlich auch mit. Er will Khorinis lieber gestern als heute verlassen. Er Könnte mir zeigen wie ich geschickter werde und mich zu einem guten Bogenschützen ausbilden. Schlösser knacken kann er mir ebenfalls beibringen.");	
		
	if (crewmember_count >= Max_Crew)
	{
		AI_Output			(other,self , "DIA_DiegoNW_KnowWhereEnemy_15_04"); //I'll think about it. At the moment, my crew is already complete.
		AI_Output			(self, other, "DIA_DiegoNW_KnowWhereEnemy_11_05"); //Take your time. I'm not going anywhere.
	}
	else 
	{
		Info_ClearChoices (DIA_DiegoNW_KnowWhereEnemy);
		Info_AddChoice (DIA_DiegoNW_KnowWhereEnemy,"Ich sag dir vielleicht noch bescheid, wenn´s soweit ist.",DIA_DiegoNW_KnowWhereEnemy_No);
		Info_AddChoice (DIA_DiegoNW_KnowWhereEnemy,"Komm doch mit.",DIA_DiegoNW_KnowWhereEnemy_Yes);
	};
};

FUNC VOID DIA_DiegoNW_KnowWhereEnemy_Yes ()
{
	AI_Output (other,self ,"DIA_DiegoNW_KnowWhereEnemy_Yes_15_00"); //Why don't you come with me? We'll meet at the harbor.
	AI_Output (self ,other,"DIA_DiegoNW_KnowWhereEnemy_Yes_11_01"); //Mmh. You're right, Khorinis is a dump. I'm coming with you.
	
	
	self.flags 		 = NPC_FLAG_IMMORTAL;
	Diego_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);
	
	
	B_GivePlayerXP (XP_Crewmember_Success); 
	
	if (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_CITY_UPTOWN_PATH_23" )== 1)
    {
		AI_Output (self ,other,"DIA_DiegoNW_KnowWhereEnemy_Yes_11_02"); //Wait, I'll be ready in a second.
		AI_SetWalkmode 	(self, NPC_WALK);		
		AI_GotoWP (self,"NW_CITY_UPTOWN_HUT_01_01");
		CreateInvItems (self,ItAR_Diego,1);
		AI_EquipArmor (self,ItAr_Diego);
		AI_Wait (self ,1);
		AI_GotoWP (self,self.wp);
	};
	
	AI_Output (self ,other,"DIA_DiegoNW_KnowWhereEnemy_Yes_11_03"); //Well, I'm ready. I'll see you at the ship.
	
	
	if (MIS_ReadyforChapter6 == TRUE)
	{
		Npc_ExchangeRoutine (self,"SHIP"); 
	}
	else
	{
		Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
	};

	Info_ClearChoices (DIA_DiegoNW_KnowWhereEnemy);
};

FUNC VOID DIA_DiegoNW_KnowWhereEnemy_No ()
{
	AI_Output (other,self ,"DIA_DiegoNW_KnowWhereEnemy_No_15_00"); //Maybe I'll let you know when the time has come.
	AI_Output (self ,other,"DIA_DiegoNW_KnowWhereEnemy_No_11_01"); //You do that. And maybe I'll even go with you. Who knows?

	Diego_IsOnBoard	 = LOG_OBSOLETE;
	Info_ClearChoices (DIA_DiegoNW_KnowWhereEnemy);
};

///////////////////////////////////////////////////////////////////////
//	I kann dich doch nicht gebrauchen!
///////////////////////////////////////////////////////////////////////
instance DIA_DiegoNW_LeaveMyShip		(C_INFO)
{
	npc			 = 	PC_Thief_NW;
	nr			 = 	55;
	condition	 = 	DIA_DiegoNW_LeaveMyShip_Condition;
	information	 = 	DIA_DiegoNW_LeaveMyShip_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Kümmere dich um die Stadt.";
};
func int DIA_DiegoNW_LeaveMyShip_Condition ()
{	
	if (Diego_IsOnBOard == LOG_SUCCESS)
	&& (MIS_ReadyforChapter6 == FALSE)
	{
		return TRUE;
	};
};
func void DIA_DiegoNW_LeaveMyShip_Info ()
{
	AI_Output			(other, self, "DIA_DiegoNW_LeaveMyShip_15_00"); //You take care of the city.
	AI_Output			(self, other, "DIA_DiegoNW_LeaveMyShip_11_01"); //Really? You don't need me any more? Oh well. Don't forget to drop by when you're back in town.
	AI_Output			(other, self, "DIA_DiegoNW_LeaveMyShip_15_02"); //You think we'll meet again?
	AI_Output			(self, other, "DIA_DiegoNW_LeaveMyShip_11_03"); //I shall never forget the look on your face when you lay on the ground after Bullit knocked you down and we met for the first time.
	AI_Output			(self, other, "DIA_DiegoNW_LeaveMyShip_11_04"); //They can't get the better of someone like you. We SHALL meet again. Take care.
	
	
	Diego_IsOnBoard	 = LOG_OBSOLETE;				//Log_Obsolete ->der Sc kann ihn wiederholen, Log_Failed ->hat die Schnauze voll, kommt nicht mehr mit! 
	crewmember_Count = (Crewmember_Count -1);
	
	Npc_ExchangeRoutine (self,"Start"); 
};

///////////////////////////////////////////////////////////////////////
//	Ich habs mir berlegt!
///////////////////////////////////////////////////////////////////////
instance DIA_DiegoNW_StillNeedYou		(C_INFO)
{
	npc			 = 	PC_Thief_NW;
	nr			 = 	55;
	condition	 = 	DIA_DiegoNW_StillNeedYou_Condition;
	information	 = 	DIA_DiegoNW_StillNeedYou_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Komm zurück. Ich will, dass du mich begleitest.";
};

func int DIA_DiegoNW_StillNeedYou_Condition ()
{	
	if ((Diego_IsOnBOard == LOG_OBSOLETE)	
	|| (Diego_IsOnBOard == LOG_FAILED))
	&& (crewmember_count < Max_Crew)
	{
		return TRUE;
	};
};

func void DIA_DiegoNW_StillNeedYou_Info ()
{
	AI_Output	(other, self, "DIA_DiegoNW_StillNeedYou_15_00"); //Come back. I want you to accompany me.
	AI_Output	(self, other, "DIA_DiegoNW_StillNeedYou_11_01"); //What has become of your determination, my friend? Sure I'll go with you - just make up your mind.
		
	self.flags 		 = NPC_FLAG_IMMORTAL;
	Diego_IsOnBoard	 = LOG_SUCCESS;
	crewmember_Count = (Crewmember_Count +1);
	
	if (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_CITY_UPTOWN_PATH_23" )== 1)
    {
		AI_Output (self ,other,"DIA_DiegoNW_StillNeedYou_11_02"); //Wait, I'll be ready in a second.
		AI_GotoWP (self,"NW_CITY_UPTOWN_HUT_01_01");
		CreateInvItems (self,ItAR_Diego,1);
		AI_EquipArmor (self,ItAr_Diego);
		AI_GotoWP (self,self.wp);
	};
	
	AI_Output	(self, other, "DIA_DiegoNW_StillNeedYou_11_03"); //All right, we can go.
	
	AI_StopProcessInfos (self);

	if (MIS_ReadyforChapter6 == TRUE)
	{
		Npc_ExchangeRoutine (self,"SHIP"); 
	}
	else
	{
		Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
	};
};


// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Thief_NW_PICKPOCKET (C_INFO)
{
	npc			= PC_Thief_NW;
	nr			= 900;
	condition	= DIA_Thief_NW_PICKPOCKET_Condition;
	information	= DIA_Thief_NW_PICKPOCKET_Info;
	permanent	= TRUE;
	description = Pickpocket_120;
};                       

FUNC INT DIA_Thief_NW_PICKPOCKET_Condition()
{
	C_Beklauen (120, 600);
};
 
FUNC VOID DIA_Thief_NW_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Thief_NW_PICKPOCKET);
	Info_AddChoice		(DIA_Thief_NW_PICKPOCKET, DIALOG_BACK 		,DIA_Thief_NW_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Thief_NW_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Thief_NW_PICKPOCKET_DoIt);
};

func void DIA_Thief_NW_PICKPOCKET_DoIt()
{
	B_Beklauen ();
	Info_ClearChoices (DIA_Thief_NW_PICKPOCKET);
};
	
func void DIA_Thief_NW_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Thief_NW_PICKPOCKET);
};


