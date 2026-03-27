//##########################################################################
//##
//##	History Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_BookstandHistory2_S1()		//Geschichtsbcher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Die Insel"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Die Hafenstadt Khorinis liegt auf einer Insel vor der Küste des Königreiches Myrtana."						);
					Doc_PrintLines	( nDocID,  0, "Die Insel ist vor allem durch das Minental bekannt geworden. Ein zweifelhafter Ruf, denn viele Jahre erstreckte sich eine magische Barriere über das gesamte Tal und alle Gefangenen des Reiches wurden dort hinein gebracht."						);
					Doc_PrintLines	( nDocID,  0, "So wurde das Tal zur Strafkolonie für viele Verurteilte, die tief unter der Erde nach dem magischen Erz schürften."						);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Außerhalb von Khorinis gibt es noch einige Bauernhöfe, die den guten Boden nutzen, um Weizen und Rüben anzubauen, aber auch um Schafe zu züchten."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Seit Generationen ist der größte Hof im Besitz eines Großbauern, der sein umliegendes Land an andere Bauern verpachtet."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Mitten auf der Insel steht ein altes Kloster. Ein Kloster Innos, das von den Magiern des Feuers geführt wird. Dort gehen sie magischen und alchmistischen Forschungen nach und keltern Wein."						);
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History2 == FALSE)
					{
						REV_ReadBook(BookType_History);
						RevivedBookstandRead_History2 = TRUE;
					};
	};
};

FUNC VOID Use_BookstandHistory3_S1()		//Geschichtsbcher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Das Gesetz der Insel"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					Doc_PrintLines	( nDocID,  0, "Überall dort, wo Menschen zusammenkommen, muss das gemeinsame Leben geregelt werden. Ob das im Kloster, in der Stadt oder auf dem Hof des Großbauers ist."						);
					Doc_PrintLines	( nDocID,  0, "So wird jedes Verbrechen wider der Gemeinschaft bestraft."						);
					Doc_PrintLines	( nDocID,  0, "Im Sinne der Gemeinschaft ist es nicht erlaubt Schlägereien anzuzetteln oder sich in solche verwickeln zu lassen."						);
					Doc_PrintLines	( nDocID,  0, "Ebenso ist Diebstahl ein Vergehen, das nicht ohne Folge bleibt. Und auch die Schafe stehen unter dem Schutz des Gesetzes."						);
					Doc_PrintLines	( nDocID,  0, " "						);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Wer gar einen anderen Menschen niederschlägt und ermordet, muß damit rechnen auf der Stelle gerichtet zu werden."						);
					Doc_PrintLines	( nDocID,  1, "Und wer dem entgehen kann, muß eine hohen Strafe zahlen."						);
					Doc_PrintLines	( nDocID,  1, "An allen großen Orten, führen Männer das Amt des Rechts aus. Ihnen wird zugetragen welche Taten geschehen und sie fordern die Strafe ein, auf das der Frieden wiederhergestellt wird."						); 
					Doc_PrintLines	( nDocID,  1, "Denn wer Opfer eines Vergehens wird oder solche bezeugen kann, wird nicht gut auf den Täter zu sprechen sein."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Es gibt natürlich auch Volk das sich nicht um die Gesetze schert. Vor allem Banditen und Söldner."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History3 == FALSE)
					{
						REV_ReadBook(BookType_History);
						RevivedBookstandRead_History3 = TRUE;
					};
	};
};

//##########################################################################
//##
//##	History Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_HISTORY1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0,"Das magische Erz");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0,"Das beste Erz zum Schmieden einer Waffe findet man zweifelsohne in den Erzminen bei Khorinis. Es ist von elementarer Reinheit und durchtränkt von Magie. Es ist von unvergleichlicher Härte und doch so weich, dass es nicht bricht. Eine Waffe geschmiedet aus jenem Stahl, der unter unsagbar hohen Aufwand aus den tiefen Minen gewonnen wird, ist mit keiner Klinge und sei sie aus dem noch so besten Stahl gefertigt, zu vergleichen");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLine	( nDocID,  1,"");	
					Doc_PrintLines	( nDocID,  1,". Kein Schild, den sie nicht brechen kann, kein Panzer, den sie nicht durchbohrt. Könige und Helden aus längst vergangen Tagen trugen Waffen aus bestem Khorinisstahl und in ganz Myrtana werden auch heute für solche Waffen die besten Preise erzielt. Doch wird für dieses Erz auch ein hoher Preis verlangt. Um es der Erde abzutrotzen muß großer Aufwand getrieben werden, denn es ist so, als wolle das Erz nicht aus dem Schoße der Erde entfliehen.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_History4 == FALSE)
					{
						REV_ReadBook(BookType_History);
						RevivedBookstandRead_History4 = TRUE;
					};	  
	};
};


FUNC VOID UseSchlacht_um_Varant1()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",		0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"... doch Feldherr Rhobar wählte den Angriff. Er versammelte sein Heer und stieß mit geballter Kraft gegen die schlechtgedeckte rechte Flanke des Feindes vor. Er hielt sich nicht lang mit den Geplänkeln auf, sondern stieß wie ein Schwert in die Seite des feindlichen Heeres und zerschnitt sie wie Papier. Immer weiter trieb er seine Mannen voran, immer weiter Richtung der Grenze von Varant. Er wusste, wenn er diese Schlacht gewinnen wollte, musste es ihm gelingen das feindliche Herr zu teilen und verhindern, dass sich Gellon und Lukkor");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"vereinen und ihm den vernichtenden Schlag versetzen. Es musste ihm gelingen ihren Nachschub zu stören, dann war ihm der Sieg nicht mehr zu nehmen ...");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLines	( nDocID,  1,"...Gellon war tot, seine Armee geschlagen, seine nun führerlosen Mannen auf der Flucht. Doch Rhobar war  gewillt dem Feind keine Chance zu geben sich zu sammeln und  befahl sofort den Aufbruch, um den Feind zu vernichten. Lukkor indes beschließt die Gunst der Stunde zu nutzen und  König Rhobars erschöpften Truppen den Todesstoß zu versetzen...");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_History5 == FALSE)
				{
					REV_ReadBook(BookType_History);
					RevivedBookstandRead_History5 = TRUE;
				};	  
};

FUNC VOID UseSchlacht_um_Varant2()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga", 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"Der Krieg war entschieden. Varant seiner, für die Verorgung der Truppen so wichtigen,  Seehäfen beraubt. König Rhobar weilte schon lange nicht mehr auf den Schlachtfeldern von Varant, sondern überließ es seinen Generälen die letzten feindliche Truppen aufzureiben. Varant besaß nur noch ein größeres Heer, geführt von Lukkor, dem fähigsten Kriegsherrn des Varantener Heeres, mehr als einmal hatte er eine drohende Niederlage in einen Sieg verwandeln können");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,". Doch nun saß sein Heer in der Falle. Dem Heer des Feindes zwar zahlenmäßig überlegen doch in aussichtloser Position. Lee, der Kriegsheld von Myrtana hatte ihn in eine Falle gelockt. Seine schwere Reiterei konnte auf dem tiefen, sumpfigen Boden des engen Tals nicht kämpfen und die Hügelketten um ihn herum waren von Lee's Soldaten besetzt, die immer wieder zustießen und so sein Herr Mann um Mann dezimierten. Die verzweifelten Ausfälle seiner Mannen waren blutig zurückgeschlagen worden. Er war besiegt.");
					
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_History6 == FALSE)
				{
					REV_ReadBook(BookType_History);
					RevivedBookstandRead_History6 = TRUE;
				};	  
};