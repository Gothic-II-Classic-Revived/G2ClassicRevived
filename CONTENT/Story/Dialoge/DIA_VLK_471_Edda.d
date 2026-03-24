// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Edda_EXIT(C_INFO)
{
	npc			= VLK_471_Edda;
	nr			= 999;
	condition	= DIA_Edda_EXIT_Condition;
	information	= DIA_Edda_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Edda_EXIT_Condition()
{
		return TRUE;
};

FUNC VOID DIA_Edda_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
// ************************************************************
// 			  				  Hallo 
// ************************************************************
INSTANCE DIA_Edda_Hallo(C_INFO)
{
	npc			= VLK_471_Edda;
	nr			= 2;
	condition	= DIA_Edda_Hallo_Condition;
	information	= DIA_Edda_Hallo_Info;
	permanent	= FALSE;
	Important   = TRUE;
};                       

FUNC INT DIA_Edda_Hallo_Condition()
{	
	if Npc_IsInState (self, ZS_Talk)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Edda_Hallo_Info()
{	
	AI_Output (other ,self,"DIA_Edda_Hallo_15_00"); //What are you cooking there?
	AI_Output (self ,other,"DIA_Edda_Hallo_17_01"); //A fish soup. It's not all that tasty, but at least it's hot.
	AI_Output (self ,other,"DIA_Edda_Hallo_17_02"); //You can try a plateful if you like.
};

// ************************************************************
// 			Stadt
// ************************************************************
INSTANCE DIA_Edda_Stadt(C_INFO)
{
	npc			= VLK_471_Edda;
	nr			= 5;
	condition	= DIA_Edda_Stadt_Condition;
	information	= DIA_Edda_Stadt_Info;
	permanent	= FALSE;
	description = "What can you tell me about the city?";
};                       

FUNC INT DIA_Edda_Stadt_Condition()
{	
	return TRUE;
};
FUNC VOID DIA_Edda_Stadt_Info()
{	
	AI_Output (other ,self,"DIA_Edda_Stadt_15_00"); //What can you tell me about the city?
	AI_Output (self ,other,"DIA_Edda_Stadt_17_01"); //Most citizens in this town are afraid of thieves. Therefore, it is not a good idea to enter strange houses.
	AI_Output (self ,other,"DIA_Edda_Stadt_17_02"); //But if you're looking for a place to stay overnight, you're welcome to sleep in my hut. There's an extra bed that you can have.
	AI_Output (other ,self,"DIA_Edda_Stadt_15_03"); //Aren't you afraid of thieves?
	AI_Output (self ,other,"DIA_Edda_Stadt_17_04"); //The only valuable thing I ever owned has already been taken.
	AI_Output (self ,other,"DIA_Edda_Stadt_17_05"); //Someone stole my statue of Innos.
	
	Log_CreateTopic (TOPIC_Revived_EddaStatue, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Revived_EddaStatue, LOG_RUNNING);
	B_LogEntry (TOPIC_Revived_EddaStatue,"Poor woman Edda has lost her Innos Statue, apparently it was stolen from her house."); 
};			
// ************************************************************
// 			Kannst du mir eine Suppe kochen?
// ************************************************************
var int EddaSoupFirst;
INSTANCE DIA_Edda_Kochen(C_INFO)
{
	npc			= VLK_471_Edda;
	nr			= 6;
	condition	= DIA_Edda_Kochen_Condition;
	information	= DIA_Edda_Kochen_Info;
	permanent	= FALSE;
	description = "Could you cook me some soup?";
};                       

FUNC INT DIA_Edda_Kochen_Condition()
{	
	return TRUE;
};
FUNC VOID DIA_Edda_Kochen_Info()
{	
	AI_Output (other ,self,"DIA_Edda_Kochen_15_00"); //Could you cook me some soup?
	
	if (Wld_GetDay() == 0)
	|| (EddaSoupFirst == FALSE)
	{
		AI_Output (self ,other,"DIA_Edda_Kochen_17_01"); //I cook for everybody. For you, too, if you want. All you need to do is bring me a fish.
		AI_Output (self ,other,"DIA_Edda_Suppe_17_02"); //Starting tomorrow, you can come and get some soup every day.

		EddaSoupFirst = TRUE;
	}
	else if (Edda_Day != Wld_GetDay())
	{
		if B_GiveInvItems (other, self, ItFo_Fish,1)
		{
			AI_Output (self ,other,"DIA_Edda_Suppe_17_01"); //Nothing could be simpler. Here, have a plate.
			if(Kapitel == 1 && EddaSoup_Chapter1 == FALSE)
			{
				B_GiveInvItems (self, other, ITFO_REVIVED_FISHXPSOUP, 1);
				EddaSoup_Chapter1 = TRUE;
			}
			else if(Kapitel == 2 && EddaSoup_Chapter2 == FALSE)
			{
				B_GiveInvItems (self, other, ITFO_REVIVED_FISHXPSOUP, 1);
				EddaSoup_Chapter2 = TRUE;
			}
			else if(Kapitel == 3 && EddaSoup_Chapter3 == FALSE)
			{
				B_GiveInvItems (self, other, ITFO_REVIVED_FISHXPSOUP, 1);
				EddaSoup_Chapter3 = TRUE;
			}
			else if(Kapitel == 4 && EddaSoup_Chapter4 == FALSE)
			{
				B_GiveInvItems (self, other, ITFO_REVIVED_FISHXPSOUP, 1);
				EddaSoup_Chapter4 = TRUE;
			}
			else if(Kapitel == 5 && EddaSoup_Chapter5 == FALSE)
			{
				B_GiveInvItems (self, other, ITFO_REVIVED_FISHXPSOUP, 1);
				EddaSoup_Chapter5 = TRUE;
			}
			else {
				B_GiveInvItems (self, other, ItFo_FishSoup, 1);
			};
				Edda_Day = Wld_GetDay ();
		}
		else
		{
			AI_Output (self ,other,"DIA_Edda_Suppe_17_04"); //Bring me a fish, and I'll cook you a tasty soup.
		};
		
	}
	else
	{
		AI_Output (self ,other,"DIA_Edda_Suppe_17_03"); //No, not today. Come back tomorrow.
	};
};			
// ************************************************************
// 			Ich habe hier eine Innos Statue 
// ************************************************************
INSTANCE DIA_Edda_Statue(C_INFO)
{
	npc			= VLK_471_Edda;
	nr			= 6;
	condition	= DIA_Edda_Statue_Condition;
	information	= DIA_Edda_Statue_Info;
	permanent	= FALSE;
	description = "Look, I've got a statue of Innos for you.";
};                       
FUNC INT DIA_Edda_Statue_Condition()
{	
	if Npc_KnowsInfo (other,DIA_Edda_Stadt)
	&& (Npc_HasItems (other, ItMI_EddasStatue) >= 1) 
	{
		return TRUE;
	};
};
FUNC VOID DIA_Edda_Statue_Info()
{	
	AI_Output (other ,self,"DIA_Edda_Statue_15_00"); //Look, I've got a statue of Innos for you.
	AI_Output (self ,other,"DIA_Edda_Statue_17_01"); //Oh - thank you very, very much. May Innos let his light shine on you...
	AI_Output (other ,self,"DIA_Edda_Statue_15_02"); //Yeah, never mind.
	
	B_GiveInvItems (other, self,ItMI_EddasStatue, 1); 
	B_GivePlayerXP (XP_Edda_Statue);

	Log_SetTopicStatus(TOPIC_Revived_EddaStatue, LOG_SUCCESS);
};				 
	
// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Edda_PICKPOCKET (C_INFO)
{
	npc			= VLK_471_Edda;
	nr			= 900;
	condition	= DIA_Edda_PICKPOCKET_Condition;
	information	= DIA_Edda_PICKPOCKET_Info;
	permanent	= TRUE;
	description = "(It would be child's play to steal from her purse)";
};                       

FUNC INT DIA_Edda_PICKPOCKET_Condition()
{
	if (Npc_GetTalentSkill (other,NPC_TALENT_PICKPOCKET) == 1) 
	&& (self.aivar[AIV_PlayerHasPickedMyPocket] == FALSE)
	&& (Npc_HasItems(self, ItFo_Fish) >= 1)
	&& (other.attribute[ATR_DEXTERITY] >= (20 - Theftdiff))
	{
		return TRUE;
	};
};
 
FUNC VOID DIA_Edda_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Edda_PICKPOCKET);
	Info_AddChoice		(DIA_Edda_PICKPOCKET, DIALOG_BACK 		,DIA_Edda_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Edda_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Edda_PICKPOCKET_DoIt);
};

func void DIA_Edda_PICKPOCKET_DoIt()
{
	if (other.attribute[ATR_DEXTERITY] >= 20)
	{
		B_GiveInvItems (self, other, ItFo_Fish, 1);
		self.aivar[AIV_PlayerHasPickedMyPocket] = TRUE;
		B_GiveThiefXP();
		Info_ClearChoices (DIA_Edda_PICKPOCKET);
	}
	else
	{
		B_ResetThiefLevel();
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_Theft, 1); 
	};
};
	
func void DIA_Edda_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Edda_PICKPOCKET);
};