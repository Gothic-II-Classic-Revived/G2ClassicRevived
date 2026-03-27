//##########################################################################
//##
//##	Astronomy Books - Gothic II
//##
//##########################################################################

var int Astronomy_once;
FUNC VOID Use_Astronomy()
{   
		if (Astronomy_once == FALSE)
		{
			B_RaiseAttribute (self, ATR_MANA_MAX, 2);
			Print (PRINT_ReadAstronomy);
			Astronomy_once = TRUE;
		};
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					Doc_SetFont 	( nDocID,  -1, FONT_Book	   			); 	// -1 -> all pages 
 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels					
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "...wenn nun aber die Kraft des Ochsen sich vereinigt mit den Prinzipien des Kriegers, so seien alle gewarnt vor den Ereignissen, die da kommen mögen.");
					Doc_PrintLines	( nDocID,  0, "Die unbändige Kraft des Ochsen und die Zielstrebigkeit des Kriegers ist in der Lage das Uralte Gleichgewicht der Mächte zu erschüttern. Die kosmische Grenze zwischen den Dimension wird schwächer, so schwach, dass die Schattenkreaturen Beliars auf ein leichtes in unsere Welt überwechseln können.");

					Doc_SetMargins	( nDocID,  -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Was so etwas bedeutet, zeigen uns die Kriege der vorderen Zeit, als das Band zwischen den Welten noch stärker war. Die Schergen des Bösen brachten Tod und Zerstörung über die Welt und nur mit der Hilfe Innos und seines Erwählten war es den Menschen möglich das Unheil zu besiegen."	);
					Doc_PrintLines	( nDocID,  1, "Wenn es jemals wieder soweit kommen mag, dann mag Innos uns schützen, denn einen Erwählten Innos hat es schon seit über hundert Jehren nicht mehr gegeben."					);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");

					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Astronomy1 == FALSE)
					{
						REV_ReadBook(BookType_Astronomy);
						RevivedBookstandRead_Astronomy1 = TRUE;
					};	 
};

//##########################################################################
//##
//##	Astronomy Books - Revived
//##
//##########################################################################

FUNC VOID Use_BookstandRevived_ASTRONOMY1_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0,"");										
					Doc_PrintLines	( nDocID,  0,"Im Zentrum befindet sich der Morgrad mit seinen vier Elementen Erde, Wasser, Feuer und Luft, der Raum des Vergänglichen, in seinem Inneren die unaussprechliche Dunkelheit des Beliar. Über allem befindet sich die Sphäre des Himmels.");
					Doc_PrintLine	( nDocID,  0,"");
					Doc_PrintLines	( nDocID,  0,"In der Hierarchie des Kosmos nimmt der Mensch die Stellung des Empfängers ein. Durch seine Seele hat er Teil am höchsten Sein, dem göttlichen Geist, sein vergänglicher Körper hingegen besteht aus Stoffen des Morgrad. Als kleines Abbild der ganzen Welt.");

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"Die synodische Umlaufszeit der Planeten, dh. die Zeitdauer zwischen zwei gleichartigen Stellungen in Bezug zum Morgrad unserer Welt, weicht jedes Jahrhundert um einige Grade ab, so dass wir davon ausgehen können, uns in einer ständigen Bewegung mit dem restlichen Kosmos zu befinden.");
					Doc_PrintLine	( nDocID,  1,"");
					Doc_PrintLines	( nDocID,  1,"Bei der Aufstellung eines Kalenders bezogen wir uns Anfangs auf den Mondlauf, um den Anschluß an die tatsächliche Länge des Sonnenjahres zu erhalten.");
					
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Astronomy2 == FALSE)
					{
						REV_ReadBook(BookType_Astronomy);
						RevivedBookstandRead_Astronomy2 = TRUE;
					};	  
	};
};