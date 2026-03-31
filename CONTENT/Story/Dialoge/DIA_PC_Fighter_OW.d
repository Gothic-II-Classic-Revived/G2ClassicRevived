
// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_GornOW_EXIT(C_INFO)
{
	npc			= PC_Fighter_OW;
	nr			= 999;
	condition	= DIA_GornOW_EXIT_Condition;
	information	= DIA_GornOW_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_GornOW_EXIT_Condition()
{
	return TRUE;
};
 
FUNC VOID DIA_GornOW_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 			  Hallo
// ************************************************************
INSTANCE DIA_GornOW_Hello (C_INFO)
{
	npc			= PC_Fighter_OW;
	nr			= 2;
	condition	= DIA_GornOW_Hello_Condition;
	information	= DIA_GornOW_Hello_Info;
	permanent	= FALSE;
	IMPORTANT 	= TRUE;
};                       

FUNC INT DIA_GornOW_Hello_Condition()
{
		return TRUE;
};
 
FUNC VOID DIA_GornOW_Hello_Info()
{	

	VAR C_NPC Milten;
	Milten			= Hlp_GetNpc(PC_Mage_OW);
	
	AI_Output	(other,self ,"DIA_GornOW_Hello_15_00");	//Die Faulenzerei hat ein Ende - du bist frei!
	AI_Output 	(self ,other,"DIA_GornOW_Hello_12_01"); //Wurde auch langsam Zeit, dass mich hier wer rausholt.
	AI_Output	(self ,other,"DIA_GornOW_Hello_12_02");	//Mit dir hätte ich allerdings nicht gerechnet. Ist verdammt gut, dich zu sehen.
	AI_Output	(other,self ,"DIA_GornOW_Hello_15_03");	//(grinst) Garond sagt, du würdest zu viel essen und er kann dich nicht mehr durchfüttern.
	AI_Output	(self ,other,"DIA_GornOW_Hello_12_04");	//Jetzt, wo du es sagst, könnte ich ein paar Bier vertragen. Lass uns hier verschwinden, ich habe genug von dieser Zelle.
	
	if (other.guild == GIL_SLD)
	{
		AI_Output (self ,other,"DIA_GornOW_Add_12_00"); //Warte, ich hab hier noch was, das gut brauchen kannst.
		AI_Output (self ,other,"DIA_GornOW_Add_12_01"); //Diese Rüstung hab ich hier in der Zelle gefunden. Hat wohl einer der Gefangenen hier versteckt.
		B_GiveInvItems (self, other, itar_sld_M, 1);
		AI_Output (self ,other,"DIA_GornOW_Add_12_02"); //Mir ist sie zu klein, aber dir könnte sie passen...
		AI_Output (other,self ,"DIA_GornOW_Add_15_03"); //Danke. Wir sehen uns bei Milten.
	}
	else
	{
		AI_Output 	(other,self ,"DIA_GornOW_Hello_15_05");	//Okay, wir sehen uns bei Milten.
	};
	AI_Output	(self ,other,"DIA_GornOW_Hello_12_06");	//Alles klar.
	
	AI_StopProcessInfos (self);
	
	Npc_ExchangeRoutine	(self,"FREE"); 
	B_StartOtherRoutine (Milten,"GORNFREE");
	MIS_RescueGorn = LOG_SUCCESS;
	B_GivePlayerXP (XP_RescueGorn);
};

// ************************************************************
// 			Bei Milten
// ************************************************************
INSTANCE DIA_GornOW_MetMilten (C_INFO)
{
	npc			= PC_Fighter_OW;
	nr			= 2;
	condition	= DIA_GornOW_MetMilten_Condition;
	information	= DIA_GornOW_MetMilten_Info;
	permanent	= FALSE;
	IMPORTANT 	= TRUE;
};                       

FUNC INT DIA_GornOW_MetMilten_Condition()
{
	if (Mis_RescueGorn == LOG_SUCCESS)
	&& (Npc_GetDistToWP	(self,"OC_MAGE_LIBRARY_IN") <=	500) 
	&&  Npc_IsInState (self, ZS_Talk)
	&& (Kapitel == 2)
	{	
		return TRUE;
	};
};
FUNC VOID DIA_GornOW_MetMilten_Info()
{	
	AI_Output (self ,other,"DIA_GornOW_MetMilten_12_00");//Pass auf - ich hab lange genug hier rumgelungert. Wird Zeit, dass ich mal was anderes sehe als dieses Tal.
	AI_Output (self ,other,"DIA_GornOW_MetMilten_12_01");//Wie bist du über den Pass gekommen?
	AI_Output (other, self,"DIA_GornOW_MetMilten_15_02");//Es gibt einen Weg durch die verlassene Mine.
	AI_Output (self ,other,"DIA_GornOW_MetMilten_12_03");//Gut. Ich warte noch auf einen günstigen Moment und dann haue ich ab.
	
	if (other.guild != GIL_SLD)
	{
		AI_Output (other, self,"DIA_GornOW_MetMilten_15_04");//Wo willst du dann hin?
		AI_Output (self ,other,"DIA_GornOW_MetMilten_12_05");//Ich hab gehört, dass Lee noch lebt. Ich will mich ihm wieder anschließen.
	}
	else
	{
		AI_Output (other, self,"DIA_GornOW_MetMilten_15_06");//Dann gehe zu Onars Hof. Lee ist mit seinen Jungs dort. Er braucht gute Männer wie dich.
		AI_Output (self ,other,"DIA_GornOW_MetMilten_12_07");//Das mache ich. Werd mir mal angucken, was die da veranstalten.
	};
};	

// ************************************************************
// 	Perm Kap.2
// ************************************************************
INSTANCE DIA_GornOW_SeeYou (C_INFO)
{
	npc			= PC_Fighter_OW;
	nr			= 900;
	condition	= DIA_GornOW_SeeYou_Condition;
	information	= DIA_GornOW_Seeyou_Info;
	permanent	= TRUE;
	description = "Wir sehen uns wieder.";
};                       
FUNC INT DIA_GornOW_SeeYou_Condition()
{
	if Npc_KnowsInfo (other,DIA_GornOW_MetMilten)
	&& (Kapitel == 2)
	{	
		return TRUE;
	};
};
 
FUNC VOID DIA_GornOW_SeeYou_Info()
{	
	AI_Output	(other,self ,"DIA_GornOW_SeeYou_15_00");//Wir sehen uns wieder.
	AI_Output	(self ,other,"DIA_GornOW_SeeYou_12_01");//Verlass dich drauf.
	
	/*
	if (other.guild == GIL_KDF)
	{
		AI_Output	(self ,other,"DIA_GornOW_SeeYou_12_01");//
	}
	else if (other.guild == GIL_MIL)
	{
		AI_Output	(self ,other,"DIA_GornOW_SeeYou_12_01");//
	}
	else //SLD
	{
		AI_Output	(self ,other,"DIA_GornOW_SeeYou_12_01");//
	};
	*/
	AI_StopProcessInfos (self);
};	
