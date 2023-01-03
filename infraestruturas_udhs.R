
library(tidyverse)
library(readxl)
library(writexl)
library(readODS)
library(janitor)


infraestruturas_udh <- readODS::read_ods("base final RM Recife/dados_recife_2000_colunas_selecionadas.ods")

#Percentual da população que vive em domicílios com água encanada

#Legenda:
#Razão entre a população que vive em domicílios particulares permanentes com 
#água canalizada para um ou mais cômodos e a população total residente em domicílios 
#particulares permanentes, multiplicada por 100. A água pode ser proveniente de rede 
#geral, de poço, de nascente ou de reservatório abastecido por água das chuvas 
#ou carro-pipa.

com_agua_encanada_2000 <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, T_AGUA) %>%
  arrange(desc(T_AGUA))

write_ods(com_agua_encanada_2000, "agua_encanada_percentual_udh.ods")

#Percentual da população que vive em domicílios com banheiro e água encanada

#Legenda:
#Razão entre a população que vive em domicílios particulares permanentes com 
#água encanada em pelo menos um de seus cômodos e com banheiro exclusivo e a população
#total residente em domicílios particulares permanentes, multiplicada por 100. A água 
#pode ser proveniente de rede geral, de poço, de nascente ou de reservatório abastecido 
#por água das chuvas ou carro-pipa. Banheiro exclusivo é definido como cômodo que 
#dispõe de chuveiro ou banheira e aparelho sanitário.

com_banheiro_e_agua_encanada <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, T_BANAGUA) %>%
  arrange(desc(T_BANAGUA))

write_ods(com_banheiro_e_agua_encanada, "populacao_em_domicilios_com_banheiro_agua_encanada.ods")

#Percentual da população que vive em domicílios
#com densidade superior a 2 pessoas por dormitório

#Legenda:

#Razão entre a população que vive em domicílios particulares permanentes com densidade
#superior a 2 e a população total residente em domicílios particulares permanentes, 
#multiplicada por 100. A densidade do domicílio é dada pela razão entre o 
#total de moradores do domicílio e o número total de cômodos usados como dormitório.

densidade_maior_que_2_por_dormitorio <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, T_DENS) %>%
  arrange(desc(T_DENS))

write_ods(densidade_maior_que_2_por_dormitorio, "densidade_maior_que_2_por_dormitorio.ods")

#Percentual da população que vive em domicílios urbanos com serviço de coleta de lixo

#LEgenda:

#Razão entre a população que vive em domicílios com coleta de lixo e a população 
#total residente em domicílios particulares permanentes, multiplicada por 100. 
#Estão incluídas as situações em que a coleta de lixo é realizada diretamente por 
#empresa pública ou privada, ou o lixo é depositado em caçamba, tanque ou depósito 
#fora do domicílio, para posterior coleta pela prestadora do serviço. São 
#considerados apenas os domicílios particulares permanentes localizados em área urbana.

com_lixo_2000 <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, T_LIXO) %>%
  arrange(desc(T_LIXO))

write_ods(com_lixo_2000, "com_lixo_2000.ods")

#Percentual da população que vive em domicílios com energia elétrica

#Legenda:
#Razão entre a população que vive em domicílios particulares permanentes com 
#iluminação elétrica e a população total residente em domicílios particulares 
#permanentes, multiplicada por 100.Considera-se iluminação proveniente ou não 
#de uma rede geral, com ou sem medidor.

tem_luz_2000 <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, T_LUZ) %>%
  arrange(desc(T_LUZ))

write_ods(tem_luz_2000, "tem_luz_2000.ods")

#Percentual de pessoas em domicílios com abastecimento de água e esgotamento 
#sanitário inadequados

#Legenda:
#Razão entre as pessoas que vivem em domicílios cujo abastecimento de água não 
#provem de rede geral e cujo esgotamento sanitário não é realizado por rede coletora 
#de esgoto ou fossa séptica e a população total residente em domicílios particulares 
#permanentes, multiplicada por 100. São considerados apenas os domicílios particulares
#permanentes.

abastecimento_de_agua_e_esgoto_2000 <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, AGUA_ESGOTO) %>%
  arrange(desc(AGUA_ESGOTO))

write_ods(abastecimento_de_agua_e_esgoto_2000, "abastecimento_de_agua_e_esgoto.ods")

#% de pessoas em domicílios sem energia elétrica

#Legenda:
#Razão entre as pessoas que vivem em domicílios sem energia elétrica e população 
#total residente em domicílios particulares permanentes multiplicado por 100.

sem_energia_eletrica_2000 <- infraestruturas_udh %>%
  select(Cod_ID, NOME_UDH, T_SLUZ) %>%
  arrange(desc(T_SLUZ))

write_ods(sem_energia_eletrica_2000, "sem_energia_eletrica_2000.ods")

#____________________________Dados 2010___________________________________________

infraestruturas_udh_2010 <- readODS::read_ods("base final RM Recife/dados_recife_2010_colunas_selecionadas.ods")

#Percentual da população que vive em domicílios com água encanada

#Legenda:
#Razão entre a população que vive em domicílios particulares permanentes com 
#água canalizada para um ou mais cômodos e a população total residente em domicílios 
#particulares permanentes, multiplicada por 100. A água pode ser proveniente de rede 
#geral, de poço, de nascente ou de reservatório abastecido por água das chuvas 
#ou carro-pipa.

com_agua_encanada_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, T_AGUA) %>%
  arrange(T_AGUA)

write_ods(com_agua_encanada_2010, "com_agua_encanada_2010.ods")

#Percentual da população que vive em domicílios com banheiro e água encanada

#Legenda:
#Razão entre a população que vive em domicílios particulares permanentes com 
#água encanada em pelo menos um de seus cômodos e com banheiro exclusivo e a população
#total residente em domicílios particulares permanentes, multiplicada por 100. A água 
#pode ser proveniente de rede geral, de poço, de nascente ou de reservatório abastecido 
#por água das chuvas ou carro-pipa. Banheiro exclusivo é definido como cômodo que 
#dispõe de chuveiro ou banheira e aparelho sanitário.

com_banheiro_e_agua_encanada_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, T_BANAGUA) %>%
  arrange(desc(com_banheiro_e_agua_encanada_2010))

write_ods(com_banheiro_e_agua_encanada_2010, "com_agua_encanada_2010.ods")

#Percentual da população que vive em domicílios
#com densidade superior a 2 pessoas por dormitório

#Legenda:

#Razão entre a população que vive em domicílios particulares permanentes com densidade
#superior a 2 e a população total residente em domicílios particulares permanentes, 
#multiplicada por 100. A densidade do domicílio é dada pela razão entre o 
#total de moradores do domicílio e o número total de cômodos usados como dormitório.

densidade_maior_que_2_por_dormitorio_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, T_DENS) %>%
  arrange(desc(T_DENS))

write_ods(densidade_maior_que_2_por_dormitorio_2010, "densidade_maior_q_2_por_dormitorio_2010.ods")

#Percentual da população que vive em domicílios urbanos com serviço de coleta de lixo

#LEgenda:

#Razão entre a população que vive em domicílios com coleta de lixo e a população 
#total residente em domicílios particulares permanentes, multiplicada por 100. 
#Estão incluídas as situações em que a coleta de lixo é realizada diretamente por 
#empresa pública ou privada, ou o lixo é depositado em caçamba, tanque ou depósito 
#fora do domicílio, para posterior coleta pela prestadora do serviço. São 
#considerados apenas os domicílios particulares permanentes localizados em área urbana.

com_lixo_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, T_LIXO) %>%
  arrange(desc(T_LIXO))

write_ods(com_lixo_2010, "com_coleta_de_lixo_2010.ods")


#Percentual da população que vive em domicílios com energia elétrica

#Legenda:
#Razão entre a população que vive em domicílios particulares permanentes com 
#iluminação elétrica e a população total residente em domicílios particulares 
#permanentes, multiplicada por 100.Considera-se iluminação proveniente ou não 
#de uma rede geral, com ou sem medidor.

tem_luz_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, T_LUZ) %>%
  arrange(desc(T_LUZ))

write_ods(tem_luz_2010, "tem_luz_2010.ods")

#Legenda:
#Razão entre as pessoas que vivem em domicílios cujo abastecimento de água não 
#provem de rede geral e cujo esgotamento sanitário não é realizado por rede coletora 
#de esgoto ou fossa séptica e a população total residente em domicílios particulares 
#permanentes, multiplicada por 100. São considerados apenas os domicílios particulares
#permanentes.

abastecimento_de_agua_e_esgoto_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, AGUA_ESGOTO) %>%
  arrange(desc(AGUA_ESGOTO))

write_ods(abastecimento_de_agua_e_esgoto_2010, "abastecimento_de_agua_e_esgoto_2010.ods")

#% de pessoas em domicílios sem energia elétrica

#Legenda:
#Razão entre as pessoas que vivem em domicílios sem energia elétrica e população 
#total residente em domicílios particulares permanentes multiplicado por 100.

sem_energia_eletrica_2010 <- infraestruturas_udh_2010 %>%
  select(Cod_ID, NOME_UDH, T_SLUZ) %>%
  arrange(desc(T_SLUZ))

write_ods(sem_energia_eletrica_2010, "sem_energia_eletrica_2010.ods")


#Depois criar o script Educação onde devem constar as colunas: 

#"E_ANOSESTUDO"                 
#"T_ANALF25M"                    "T_ATRASO_2_BASICO"            
#"T_ATRASO_2_FUND"               "T_FREQ6A17"                   
#"T_FUND15A17"                   "T_FUND18A24"                  
#"T_FUND18M"                     "T_FUND25M"                    
#"T_MED18A20"                    "T_MED18A24"                   
#"T_MED18M"                      "T_MED25M"                     
#"T_SUPER25M"    "T_CRIFUNDIN_TODOS"             "T_FORA0A5"                    
#"T_FORA6A14"                    "T_FUNDIN_TODOS"               
#"T_FUNDIN_TODOS_MMEIO"          "T_FUNDIN18MINF"  "I_ESCOLARIDADE" 

#Depois criar o script Renda onde devem constar as colunas:

#"PIND"                         
# "PINDCRI"                       "PMPOB"                        
# "PMPOBCRI"                      "PPOB"     "PPOBCRI"     "RIND"                         
# "RMPOB"                         "RPOB"                         
# "P_AGRO"                        "P_COM"                        
# "P_CONSTR"                      "P_EXTR"                       
# "P_SERV"                        "P_SIUP"                       
# "P_TRANSF"                      "CPR"                          
# "EMP"                           "P_FORMAL"                     
# "TRABCC"                        "TRABPUB"                      
# "TRABSC"                        "P_FUND"                       
# "P_MED"                         "P_SUPER"                      
# "REN0"                          "REN1"                         
# "REN2"                          "REN3"                         
# "REN5"                          "RENOCUP"                      
# "T_ATIV1014"                    "T_ATIV1517"                   
# "T_ATIV1824"                    "T_ATIV18M"                    
# "T_ATIV2529"                    "T_DES1014"                    
# "T_DES1517"                     "T_DES1824"                    
# "T_DES18M"                      "T_DES2529"
# "T_M10A17CF"                    "T_MULCHEFEFIF014"             
# "T_NESTUDA_NTRAB_MMEIO"         "T_RMAXIDOSO"                  
# "T_VULNERA_NESTUDA_NTRAB_MMEIO"
# "T_VULNERA_MULCHEFE"            "T_VULNERA_RMAXIDOSO"          
#3 "PEA18M" 


#Depois criar o script IDHM, onde devem constar as colunas:

#"IDHM"  "IDHM_E"   "IDHM_L"    "IDHM_R"              