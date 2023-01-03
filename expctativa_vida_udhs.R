library(tidyverse)
library(readxl)
library(writexl)
library(readODS)
library(janitor)

#EXpectativa de vida UDHs

#Legenda: 
#Número médio de anos que as pessoas deverão viver a partir do nascimento,
#se permanecerem constantes ao longo da vida o nível e o padrão de mortalidade 
#por idade prevalecentes no ano do Censo.


expectativa_de_vida_2000 <- readODS::read_ods("base final RM Recife/dados_recife_2000_colunas_selecionadas.ods")

expectativa_de_vida <- expectativa_de_vida_2000 %>%
  select(Cod_ID, NOME_UDH, ESPVIDA) %>%
  arrange(desc(ESPVIDA))
  
write_ods(expectativa_de_vida, "expectativa_de_vida_udhs_2000.ods")
  

#Taxa de Fecundidade total

#Legenda:

#Número médio de filhos que uma mulher deverá ter ao terminar o período 
#reprodutivo (15 a 49 anos de idade).

fecundidade_total_2000 <- expectativa_de_vida_2000 %>%
  select(Cod_ID, NOME_UDH, FECTOT) %>%
  arrange(desc(FECTOT))


write_ods(fecundidade_total_2000, "taxa_de_fecundidade_por_udh_2000.ods")

#Mortalidade Até 1 ano de idade

#Legenda:
#Número de crianças que não deverão sobreviver ao primeiro ano de vida 
#em cada 1000 crianças nascidas vivas.

mortalidade_ate_1_ano_2000 <- expectativa_de_vida_2000 %>%
  select(Cod_ID, NOME_UDH, MORT1) %>%
  arrange(desc(MORT1))

write_ods(mortalidade_ate_1_ano_2000, "mortalidade_ate_1_ano_2000_percentual.ods")

#Mortalidade Até 5 Anos de Idades

#Legenda:
#Probabilidade de morrer entre o nascimento e a idade exata de 5 anos,
#por 1000 crianças nascidas vivas.

mortalidade_ate_5_anos_2000 <- expectativa_de_vida_2000 %>%
  select(Cod_ID, NOME_UDH, MORT5) %>%
  arrange(desc(MORT5))

write_ods(mortalidade_ate_5_anos_2000, "mortalidade_ate_5_anos_2000_porcentagem.ods")

#Probabilidade de sobrevivência até 40 anos

#Legenda:
#Probabilidade de uma criança recém-nascida viver até os 40 anos, se permanecerem 
#constantes ao longo da vida o nível e o padrão de mortalidade por idade 
#prevalecentes no ano do Censo.

probabilidade_de_sobreviver_ate_40_anos <- expectativa_de_vida_2000 %>%
  select(Cod_ID, NOME_UDH, SOBRE40) %>%
  arrange(desc(SOBRE40))

write_ods(probabilidade_de_sobreviver_ate_40_anos, "probabilidade_de_vida_ate_40_anos_porcentagem.ods")

#Probabilidade de sobrevivência até 60 anos

#Legenda:
#Probabilidade de uma criança recém-nascida viver até os 60 anos, se permanecerem 
#constantes ao longo da vida o nível e o padrão de mortalidade por idade 
#prevalecentes no ano do Censo.

probabilidade_de_sobreviver_ate_60_anos <- expectativa_de_vida_2000 %>%
  select(Cod_ID, NOME_UDH, SOBRE60) %>%
  arrange(desc(SOBRE60))

write_ods(probabilidade_de_sobreviver_ate_60_anos, "probabilidade_de_viver_ate_60_anos_2000_porcentagem.ods")



#Fazer o mesmo com os dados de 2010 criar o dataframe expctativa_de_vida_2010 e processar
# na ordem das mesmas colunas
#______________________________________Dados 2010__________________________________

#Expectativa de vida UDHs

#Legenda: 
#Número médio de anos que as pessoas deverão viver a partir do nascimento,
#se permanecerem constantes ao longo da vida o nível e o padrão de mortalidade 
#por idade prevalecentes no ano do Censo.

expectativa_de_vida_2010 <- readODS::read_ods("base final RM Recife/dados_recife_2010_colunas_selecionadas.ods")

expectativa_de_vida_ano_2010 <- expectativa_de_vida_2010 %>%
  select(Cod_ID, NOME_UDH, ESPVIDA) %>%
  arrange(desc(ESPVIDA))

write_ods(expectativa_de_vida_ano_2010, "expectativa_de_vida_2010.ods")

#Taxa de Fecundidade total

#Legenda:

#Número médio de filhos que uma mulher deverá ter ao terminar o período 
#reprodutivo (15 a 49 anos de idade).

fecundidade_total_2010 <- expectativa_de_vida_2010 %>%
  select(Cod_ID, NOME_UDH, FECTOT) %>%
  arrange(desc(FECTOT))

write_ods(fecundidade_total_2010, "taxa_de_fecundidade_total_2010_porcentagem.ods")


#Mortalidade Até 1 ano de idade

#Legenda:
#Número de crianças que não deverão sobreviver ao primeiro ano de vida 
#em cada 1000 crianças nascidas vivas.

mortalidade_ate_1_ano_2010 <- expectativa_de_vida_2010 %>%
  select(Cod_ID, NOME_UDH, MORT1) %>%
  arrange(desc(MORT1))

write_ods(mortalidade_ate_1_ano_2010, "mortalidade_ate_1_ano_2010.ods")

#Mortalidade Até 5 Anos de Idades

#Legenda:
#Probabilidade de morrer entre o nascimento e a idade exata de 5 anos,
#por 1000 crianças nascidas vivas.

mortalidade_ate_5_anos_2010 <- expectativa_de_vida_2010 %>%
  select(Cod_ID,NOME_UDH, MORT5) %>%
  arrange(desc(MORT5))

write_ods(mortalidade_ate_5_anos_2010, "mortalidade_ate_5_anos_2010.ods")

#Probabilidade de sobrevivência até 40 anos

#Legenda:
#Probabilidade de uma criança recém-nascida viver até os 40 anos, se permanecerem 
#constantes ao longo da vida o nível e o padrão de mortalidade por idade 
#prevalecentes no ano do Censo.

probabilidade_de_sobreviver_ate_40_anos_2010 <- expectativa_de_vida_2010 %>%
  select(Cod_ID,NOME_UDH, SOBRE40) %>%
  arrange(desc(SOBRE40))

write_ods(probabilidade_de_sobreviver_ate_40_anos_2010, "probabilidade_de_sobreviver_ate_40_anos_2010.ods")

#Probabilidade de sobrevivência até 60 anos

#Legenda:
#Probabilidade de uma criança recém-nascida viver até os 60 anos, se permanecerem 
#constantes ao longo da vida o nível e o padrão de mortalidade por idade 
#prevalecentes no ano do Censo.

probabilidade_de_sobreviver_ate_60_anos_2010 <- expectativa_de_vida_2010 %>%
  select(Cod_ID, NOME_UDH, SOBRE60) %>%
  arrange(desc(SOBRE60))

write_ods(probabilidade_de_sobreviver_ate_60_anos_2010, "probabilidade_de_sobreviver_ate_60_anos_2010.ods")

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

#Depois Criar o Script Infraestrutura com as seguintes colunas:

# "T_AGUA"                        "T_BANAGUA"                    
# "T_DENS"                        "T_LIXO"                       
# "T_LUZ"                         "AGUA_ESGOTO" "T_SLUZ"   

#Depois criar o script IDHM, onde devem constar as colunas:

#"IDHM"  "IDHM_E"   "IDHM_L"    "IDHM_R"              
