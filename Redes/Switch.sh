Switch> ----
Switch>!Modo EXEC privilegiado
Switch>Enable
Switch#
             !configurar DATA/HORA
			 
			


Switch#clock set 14:30:00 14 october 2022
Switch# 
             !modo configuração global

Switch#configure terminal
Switch(config)#
                    !altera o nome do switch

Switch(config)#hostname sw-g03
sw-g03(config)#

                 !habilitar o serviço de criptografia
				 


sw-g03(config)#service password-encryptation
sw-g03(config)#
					
				 !serviço de marcação de data e hora


sw-g03(config)#sevice timestamps log datetime msec
sw-g03(config)#
				 
				 !habilitar segurança de acesso


sw-g03(config)#login block-for 120 attemps 4 within 60
sw-g03(config)#
				 
				 !Desabilitar o recurso de tradução de nomes


sw-g03(config)#no ip domain-lockup
sw-g03(config)#
				 
				 !desafio: procurar na internet imagens do tipo ascii art cisco
				 !configurar o banner da mensagem do dia

sw-g03(config)#banner motd #Switch do Grupo-03#
sw-g03(config)#
				 
				 !habilitar a segurança do enable


sw-g03(config)#enable secret 123@senac
sw-g03(config)#

                !criar os usuários locais

sw-g03(config)#username Oliveira secret 123@senac
sw-g03(config)#

                !configurar a porta console

sw-g03(config)#line console 0
sw-g03(config-line)#
                      !habilitar autenticação local

sw-g03(config-line)#login local
sw-g03(config-line)#
                     !sincornismo de log

sw-g03(config-line)#logging synvhronous
sw-g03(config-line)#
                      
                      !habilitar a segurança de tempo

sw-g03(config-line)#exec timeout 5 30
sw-g03(config-line)#
                     !salvar as configurações

sw-g03(config-line)#copy run star
sw-g03(config-line)#

                    !Habilitar o protocolo de acesso remoto
                    transport input
		    
sw-g03(config-line)#transport input ssh(feito no vty)

 !Configuração do Dominio
                  ip domain-name cisco.com

                  !criar uma chave publica/privada do ssh
                  crypto key generate rsa general-keys modulus 1024

                  !Habilitar a versão 2 do ssh
                  ip ssh version 2

                  !tempo de inatividade
                  ip ssh time-out 60

                  !configurar o número maxima de conexões
                  ip ssh authentication-retries 2 
		  







                    
