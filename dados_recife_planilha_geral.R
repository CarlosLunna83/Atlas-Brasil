
library(tidyverse)
library(janitor)
library(readODS)
library(readr)
library(readxl)
library(writexl)


#Dados da pasta intitulada "dados recife" baixada junto com o shapefile das UDHs


dados_recife_2000 <- readODS::read_ods("base final RM Recife/base_udh_recife_2000.ods")

dados_recife_2000_colunas_selecionadas <- dados_recife_2000 %>%
  select(NOME_UDH, ESPVIDA, FECTOT, MORT1, MORT5, SOBRE40, SOBRE60, E_ANOSESTUDO,
         T_ANALF25M, T_ATRASO_2_BASICO, T_ATRASO_2_FUND, T_FREQ6A17, T_FUND15A17,
         T_FUND18A24, T_FUND18M, T_FUND25M, T_MED18A20, T_MED18A24, T_MED18M, T_MED25M,
         T_SUPER25M, PIND, PINDCRI, PMPOB, PMPOBCRI, PPOB, PPOBCRI, RIND, RMPOB, RPOB,
         P_AGRO, P_COM, P_CONSTR, P_EXTR, P_SERV, P_SIUP, P_TRANSF, CPR, EMP, P_FORMAL,
         TRABCC, TRABPUB, TRABSC, P_FUND, P_MED, P_SUPER, REN0, REN1, REN2,REN3, REN5,
         RENOCUP, T_ATIV1014, T_ATIV1517, T_ATIV1824, T_ATIV18M, T_ATIV2529, T_DES1014,
         T_DES1517, T_DES1824, T_DES18M, T_DES2529, T_AGUA, T_BANAGUA, T_DENS, T_LIXO,
         T_LUZ, AGUA_ESGOTO, T_CRIFUNDIN_TODOS, T_FORA0A5, T_FORA6A14, T_FUNDIN_TODOS,
         T_FUNDIN_TODOS_MMEIO, T_FUNDIN18MINF, T_M10A17CF, T_MULCHEFEFIF014, T_NESTUDA_NTRAB_MMEIO,
         T_RMAXIDOSO, T_SLUZ, T_VULNERA_NESTUDA_NTRAB_MMEIO, T_VULNERA_MULCHEFE,
         T_VULNERA_RMAXIDOSO, PEA18M, POP, I_ESCOLARIDADE, I_FREQ_PROP, IDHM, 
         IDHM_E, IDHM_L, IDHM_R)
write_ods(dados_recife_2000_colunas_selecionadas, "dados_recife_2000_colunas_selecionadas.ods")

#Acima a seleção das colunas a serem trabalhadas nos dados referente ao Censo 2000

dados_recife_2010 <- readODS::read_ods("base final RM Recife/base_udh_recife_2010.ods")

dados_recife_2010_colunas_selecionadas <- dados_recife_2000 %>%
  select(NOME_UDH, ESPVIDA, FECTOT, MORT1, MORT5, SOBRE40, SOBRE60, E_ANOSESTUDO,
         T_ANALF25M, T_ATRASO_2_BASICO, T_ATRASO_2_FUND, T_FREQ6A17, T_FUND15A17,
         T_FUND18A24, T_FUND18M, T_FUND25M, T_MED18A20, T_MED18A24, T_MED18M, T_MED25M,
         T_SUPER25M, PIND, PINDCRI, PMPOB, PMPOBCRI, PPOB, PPOBCRI, RIND, RMPOB, RPOB,
         P_AGRO, P_COM, P_CONSTR, P_EXTR, P_SERV, P_SIUP, P_TRANSF, CPR, EMP, P_FORMAL,
         TRABCC, TRABPUB, TRABSC, P_FUND, P_MED, P_SUPER, REN0, REN1, REN2,REN3, REN5,
         RENOCUP, T_ATIV1014, T_ATIV1517, T_ATIV1824, T_ATIV18M, T_ATIV2529, T_DES1014,
         T_DES1517, T_DES1824, T_DES18M, T_DES2529, T_AGUA, T_BANAGUA, T_DENS, T_LIXO,
         T_LUZ, AGUA_ESGOTO, T_CRIFUNDIN_TODOS, T_FORA0A5, T_FORA6A14, T_FUNDIN_TODOS,
         T_FUNDIN_TODOS_MMEIO, T_FUNDIN18MINF, T_M10A17CF, T_MULCHEFEFIF014, T_NESTUDA_NTRAB_MMEIO,
         T_RMAXIDOSO, T_SLUZ, T_VULNERA_NESTUDA_NTRAB_MMEIO, T_VULNERA_MULCHEFE,
         T_VULNERA_RMAXIDOSO, PEA18M, POP, I_ESCOLARIDADE, I_FREQ_PROP, IDHM, 
         IDHM_E, IDHM_L, IDHM_R)
write_ods(dados_recife_2010_colunas_selecionadas, "dados_recife_2010_colunas_selecionadas.ods")
