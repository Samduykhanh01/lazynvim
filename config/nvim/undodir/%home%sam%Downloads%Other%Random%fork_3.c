Vim�UnDo� ���ᦐ��|obS"�����fj � K�o      &      printf("\t\t\t PARENT %d\n", i);                             f�@$    _�                            ����                                                                                                                                                                                                                                                                                                                                                             f�?c    �                  �   	            
int main()   {�   
            {       pid_t pid;�                   pid_t pid;   
    int i;�               
    int i;       pid = fork();�                   pid = fork();       if (pid > 0) {�                   if( pid > 0 ) {�                   if( pid > 0 )       {�                   {   	   /* parent */�               	   /* parent */       !        for (i = 0; i < 100; i++)�                        for( i=0; i < 100; i++ )�                        for( i=0; i < 100; i++ )   ,            printf("\t\t\t PARENT %d\n", i);�               ,            printf("\t\t\t PARENT %d\n", i);        }�                    }        else {�                else    {�                {    	/* child */�                	/* child */         for (i = 0; i < 100; i++)�                     for( i=0; i < 100; i++ )�                     for( i=0; i < 100; i++ )   	   printf("\nCHILD %d", i);�               	   printf( "\nCHILD %d", i );�               	   printf( "\nCHILD %d", i );    }�                }   
 return 0;�                 }    5��                        �                    �                      �                    �                      �                    �                         �                     �                         �                     �                      �                    �                         �                     �                         �                     �                         �                     �       
                  �                     �       	                  �                     �                      v                    �                      h                    �                       e                    �                      ^                    �       ,               W                    �                       *                    �                         (                     �                                              �                                              �                                              �                                              �                            
              �                      �                     �                       �                     �                         �                      �                         �                      �                         �                      �                      �                     �       
               �                     �                      �                     �    
                  �                     �    	   
                 �                     �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       f�?�     �               &      printf("\t\t\t PARENT %d\n", i);5��                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       f�?�     �               (        printf("\t\t\t PARENT %d\n", i);5��                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       f�@"     �                   for (i = 0; i < 100; i++)   &      printf("\t\t\t PARENT %d\n", i);5��                         �                     �                                             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       f�@#    �                     for (i = 0; i < 100; i++)   (        printf("\t\t\t PARENT %d\n", i);5��                         �                     �                                             5��