//##########################################################################
//##
//##	Hunting Books - Gothic II
//##
//##########################################################################

FUNC VOID Use_BookstandAnimals1_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Jagd und Beute"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Jedes Tier und Wesen besitzt eigene Trophäen, die den Ruhm und Reichtum eines erfahrenen Jäger mehren."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Ein erfahrener Jäger weiß um die Trophäen seiner Beute und kennt die verschiedenen Methoden sie auszunehmen.");
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Zähne reißen"						);
					Doc_PrintLines	( nDocID,  0, "Die Zähne, sind die Waffe von vielen Tieren und Wesen. Wer darum weiß, wie er sie seiner Beute fachkundig entreißt, findet bei Wölfen, Snappern, Schattenläufern, Sumpfhaien und Trollen seine Beute."						);
				
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Felle abziehen"						);
					Doc_PrintLines	( nDocID,  1, "Ein Talent das der erfahrene Jäger oft zu nutzen weiß - gibt es doch viele Tiere, deren Körper von einem Fell geschützt ist. Schafe, Wölfe und Schattenläufer um nur einige zu benennen."						); 
					Doc_PrintLines	( nDocID,  1, "Ein Jäger, der dieses Talent beherrscht, kann auch die Häute von Sumphaien und Lurkern abziehen."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Krallen brechen"						);
					Doc_PrintLines	( nDocID,  1, "Eine Kunst, die bei Waranen aller Art, Snappern, Lurkern und Schattenläufern eingesetzt werden kann."						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Hunting1 == FALSE)
					{
						REV_ReadBook(BookType_Hunting);
						RevivedBookstandRead_Hunting1 = TRUE;
					};	
	};
};

FUNC VOID Use_BookstandAnimals2_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Jagd und Beute"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Jedes Tier und Wesen besitzt eigene Trophäen, die den Ruhm und Reichtum eines erfahrenen Jäger mehren."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Blutfliegen"			);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Um diese fliegenden Teufel auszunehmen, bedarf es zwei besonderer Künste."					); 
					Doc_PrintLines	( nDocID,  0, "Zum einen können ihnen die Flügel abgetrennt, zum anderen kann der Stachel entrissen werden." );
					Doc_PrintLines	( nDocID,  0, "Beide Künste sollte der erfahrene Jäger einsetzen, um sich die Trophäen anzueignen."	);
			
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Feldräuber und Minecrawler greifen mit Zangen an. Vor allem die Zangen der Minecrawler"						);
					Doc_PrintLines	( nDocID,  1, "gelten als besonders wertvoll, weil sie ein Sekret enthalten, das magische Kräfte steigert."						);
					Doc_PrintLines	( nDocID,  1, "Allerdings sollte es mit Vorsicht genossen werden, da der menschliche Körper mit der Zeit nicht mehr darauf reagiert."						);   
					Doc_PrintLines	( nDocID,  1, "Ebenfalls sehr begehrt sind die Platten der Minecrawler. Aus ihnen lassen sich Rüstungen herstellen."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, " "						);
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Hunting2 == FALSE)
					{
						REV_ReadBook(BookType_Hunting);
						RevivedBookstandRead_Hunting2 = TRUE;
					};
	};
};

FUNC VOID Use_BookstandAnimals3_S1()		//Tierbücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Jagd und Beute"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Jedes Tier und Wesen besitzt eigene Trophäen, die den Ruhm und Reichtum eines erfahrenen Jäger mehren."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Feuerwaran"						);
					Doc_PrintLines	( nDocID,  0, "Dieses besondere Wesen zählt zur Gattung der Warane, allerdings ist es in der Lage Feuer zu speien, das jeden der sich ihm auf ein paar Schritt nähert, unweigerlich tötet."						);
					Doc_PrintLines	( nDocID,  0, "Nur wer sich gegen Feuer zu schützen vermag, kann sich im Kampf mit diesen Wesen messen und ihm die kostbare Zunge entreissen."	);		
			
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Der Schattenläufer"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Der Schattenläufer ist ein uralter Einzelgänger der versteckt in Wäldern lebt."						); 
					Doc_PrintLines	( nDocID,  1, "Es gibt nur noch wenige Exemplare, so das er für den Menschen keine Gefahr mehr darstellt, solange er nicht seine Jagdrevier kreuzt."						);
					Doc_PrintLines	( nDocID,  1, "Der Kopf des Schattenläufers wird von einem Horn gekrönt, das als wertvolle Trophäe gilt. Ein Jäger muss die Kunst lernen, das Horn richtig zu brechen,"						);
					Doc_PrintLines	( nDocID,  1, "damit er diese Trophäe bekommt."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
							
					Doc_Show		( nDocID );
					
					if (RevivedBookstandRead_Hunting3 == FALSE)
					{
						REV_ReadBook(BookType_Hunting);
						RevivedBookstandRead_Hunting3 = TRUE;
					};
	};
};

//##########################################################################
//##
//##	Hunting Books - Revived
//##
//##########################################################################

FUNC VOID UseItWr_Bloodfly_01()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0		);

 				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 
 				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
 				Doc_PrintLine	( nDocID,  0,"Blutfliegen");
  				Doc_PrintLine	( nDocID,  0,"");
				Doc_PrintLine	( nDocID,  0," ");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 
				Doc_PrintLine	( nDocID,  0,"Über die Fliegen");
				Doc_PrintLine	( nDocID,  0,"");
				Doc_PrintLines	( nDocID,  0,"Dort aber , wo das Erdreich feucht und die Luft schwül ist, werden die Fliegen angelockt vom rinnenden Schweiß aller Kreaturen.Mit ihrem Stachel töten sie ihre Opfer und laben sich an ihrem Blut.");
				Doc_PrintLine	( nDocID,  0,"");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLines	( nDocID,  1,"Den Stachel zu entnehmen ist eine Kunst die von vielen Sumpfjägern beherrscht wird.Schneide tief in den Unterleib, um den Stachel herum mit gezackten Schnitten und entferne vorsichtig den Stachel mitsamt dem umgebenen Gewebe.Lasse ihn ausbluten und streife das ungeniessbare Fleisch ab.");	
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLine	( nDocID,  1,"");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Hunting4 == FALSE)
				{
					REV_ReadBook(BookType_Hunting);
					RevivedBookstandRead_Hunting4 = TRUE;
				};
/* 					
					if Knows_GetBFSting ==  FALSE
					{
					Knows_GetBFSting = TRUE;
					Log_CreateTopic (GE_AnimalTrophies,LOG_NOTE);
					B_LogEntry (GE_AnimalTrophies,"How to remove stings - bloodflies");	
					PrintScreen	("Learn: Remove sting", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					}; */
};

FUNC VOID UseJagd_und_Beute()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"Sein Schriftzeugnis hat die Zeiten überdauert und seine Ratschläge gelten als Lehrbuch der Jagdkunst. Nach den großen Schlachten im Norden ist es heute jedem Landsmann geläufig, wie man mit dem Bogen umzugehen hat. Jedoch gibt es bei der Jagd einige Regeln zu befolgen, die über den einfachen Umgang mit der Waffe hinaus gehen! Das Wild ist scheu und unberechenbar.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"Die Kunst der Jagd mit dem Bogen verfügt nicht nur über die älteste Tradition, sondern ist auch die geläufigste aller denkbaren Jagdarten. Die Technik dieser Art der traditionellen Jagd hat sich im Lauf der Jahrtausende kaum verändert und wird sich wohl auch in Zukunft nicht ändern. Welche Umstände bestimmen wirklich den Ablauf der Jagd mit dem Bogen? Diese Gesetzmäßigkeiten erkannt zu haben, ist die eigentliche hohe Kunst der Bogenjagd.");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Hunting5 == FALSE)
				{
					REV_ReadBook(BookType_Hunting);
					RevivedBookstandRead_Hunting5 = TRUE;
				};
};