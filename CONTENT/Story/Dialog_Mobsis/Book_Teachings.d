//##########################################################################
//##
//##	Teaching Books - Gothic II
//##
//##########################################################################



//##########################################################################
//##
//##	Teaching Books - Revived
//##
//##########################################################################

FUNC VOID UseLehren_der_Goetter1()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		); 					
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,"");										
				Doc_PrintLines	( nDocID,  0,"Hear the words of the gods, for it is their will that you shall hear them. Heed the teachings of the gods, for it is their will that you shall heed them. Honor the priests of the gods, for they are the chosen ones.");
				Doc_PrintLine	( nDocID,  0,"");

				Doc_PrintLines	( nDocID,  0,"The word of Innos: And if it shall happen that you do not understand, do not despair at the words of the priests, for they are just and wise. For I am the rising sun, the light, and the life. And all that is contrary to the sun is contrary to me, and shall be banished to the shadows forever more.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");
				Doc_PrintLines	( nDocID,  1,"The word of Adanos: Work and live, for the day was created so that man may work. Seek learning and knowledge so that you may pass it on, for it is for that purpose that you were created. But whosoever shall be listless and idle, he shall be banished to the shadows forever more.");
				Doc_PrintLine	( nDocID,  1,"");

				Doc_PrintLines	( nDocID,  1,"The word of Beliar: But whosoever shall do wrong and go against the will of the gods, him I will punish. I will plague his body with pain, suffering and death, but his spirit shall join me in the shadows forever more. ");
				
				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Teachings1 == FALSE)
				{
					REV_ReadBook(BookType_Teachings);
					RevivedBookstandRead_Teachings1 = TRUE;
				};	  
};

FUNC VOID UseLehren_der_Goetter2()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,""); 					
				Doc_PrintLines	( nDocID,  0,"Of the beginning of time: There was no night and no day, and no living thing moved across the land. Then Innos appeared and his light shone upon the world. And Innos gave unto the world the gift of life. But no creature could live in the light of Innos, so he created the sun. But still the light was too bright. So Innos divided himself and thus created Beliar. Beliar created the night. Now man could be. So Innos divided himself again and created Adanos. Adanos brought man versatility, knowledge, curiosity and courage. Innos was satisfied with what he had done.");
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"And he decided to leave mankind in the care of Adanos, and he rested. But Beliar was consumed by envy, for the people did not pray to him, but slept at night. He grew angry and created a man. A man to pray to him alone. But the man he created was like all other men. Beliar became so furious that he killed the man and spoke: If they will not worship me, then at least they shall fear me. And he created death and ended the lives of men.");

				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Teachings2 == FALSE)
				{
					REV_ReadBook(BookType_Teachings);
					RevivedBookstandRead_Teachings2 = TRUE;
				};	  
};

FUNC VOID UseLehren_der_Goetter3()
{   
	var int nDocID;
	nDocID = 	Doc_Create		()			  ;	 
				Doc_SetPages	( nDocID,  2 );

				Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);

				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);
				Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 
				Doc_PrintLine	( nDocID,  0,"");			
				Doc_PrintLines	( nDocID,  0,"Innos gave mankind the power to hear him and speak to him. He gave mankind the power to perform great miracles, and he called them magic. With this power, the people were able to design the world after their will. Innos gave them no limits. And thus man received a portion of the divine power of creation. But not all the people were equal, and this dissatisfied them. So he took the power from the discontented. Innos raised the few who had shown him gratitude above the others.");

				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
				Doc_PrintLine	( nDocID,  1,"");					
				Doc_PrintLines	( nDocID,  1,"These few were soon revered and feared, and the people  called them priests. But among them were many who soon became dissatisfied. And so it happened that they prayed to Adanos and forgot their origins. The league of priests was divided. Wars ensued and the faith in divine omnipotence soon became a myth. And so the priests were separated. Those who followed Adanos were called Magicians of the Circle of Water, while the priests of Innos became known as the Magicians of the Circle of Fire.");

				Doc_Show		( nDocID );
					
				if (RevivedBookstandRead_Teachings3 == FALSE)
				{
					REV_ReadBook(BookType_Teachings);
					RevivedBookstandRead_Teachings3 = TRUE;
				};	  
};