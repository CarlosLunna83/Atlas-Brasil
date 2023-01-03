library(tidyverse)
library(readxl)
library(writexl)
library(janitor)
library(readr)

vulneraveis_a_pobreza <- readxl::read_xlsx("Renda/Todos Renda de Todas as UDHs do Recife.xlsx")

vulneraveis_a_pobreza %>%
  clean_names()

vulneraveis_a_pobreza_titulos_corrigidos <- vulneraveis_a_pobreza %>%
  clean_names()

#porcentagem de pessoas sem rendimento entre 2000 e 2010 na ordem de 2010:

porcentamgem_sem_rendimento <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_dos_ocupados_sem_rendimento_2000,
         percent_dos_ocupados_sem_rendimento_2010) %>%
  arrange(desc(percent_dos_ocupados_sem_rendimento_2010))

writexl::write_xlsx(porcentamgem_sem_rendimento, "porcentagem sem rendimento em 2000 e 2010 na ordem de 2010.xlsx")


#porcentagem de pessoas sem rendimento entre 2000 e 2010 na ordem de 2000:

porcentagem_sem_rendimento_2000 <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_dos_ocupados_sem_rendimento_2000,
         percent_dos_ocupados_sem_rendimento_2010) %>%
  arrange(desc(percent_dos_ocupados_sem_rendimento_2000))

writexl::write_xlsx(porcentagem_sem_rendimento_2000, "porcentagem sem rendimento em 2000 e 2010 na ordem de 2000.xlsx" )

#porcentagem de pessoas com rendimento de até 1 salário mínimo entre 2000 e 2010
#na ordem de 2010:

porcentagem_ate_1_sm <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_dos_ocupados_com_rendimento_de_ate_1_salario_minimo_2000,
         percent_dos_ocupados_com_rendimento_de_ate_1_salario_minimo_2010) %>%
  arrange(desc(percent_dos_ocupados_com_rendimento_de_ate_1_salario_minimo_2010))

writexl::write_xlsx(porcentagem_ate_1_sm, "porcentagem com rendimento ate 1 salario minimo em 2000 e 2010 na ordem de 2010.xlsx")  

#porcentagem de pessoam com rendimento de até 2 salários mínimos entre 2000 e 2010
#na ordem de 2010:

porcentagem_ate_2_sm <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_dos_ocupados_com_rendimento_de_ate_2_salarios_minimo_2000,
         percent_dos_ocupados_com_rendimento_de_ate_2_salarios_minimo_2010) %>%
  arrange(desc(percent_dos_ocupados_com_rendimento_de_ate_2_salarios_minimo_2010))

writexl::write_xlsx(porcentagem_ate_2_sm, "porcentagem com rendimento ate 2 salarios minimos em 2000 e 2010 na ordem de 2010.xlsx")  

#porcentagem de pessoam com rendimento de até 3 salários mínimos entre 2000 e 2010
#na ordem de 2010:

porcentagem_ate_3_sm <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_dos_ocupados_com_rendimento_de_ate_3_salarios_minimo_2000,
         percent_dos_ocupados_com_rendimento_de_ate_3_salarios_minimo_2010) %>%
  arrange(desc(percent_dos_ocupados_com_rendimento_de_ate_3_salarios_minimo_2010))

writexl::write_xlsx(porcentagem_ate_3_sm, "porcentagem com rendimento ate 3 salarios minimos em 2000 e 2010 na ordem de 2010.xlsx")  
 

#porcentagem de pessoam com rendimento de até 5 salários mínimos entre 2000 e 2010
#na ordem de 2010:

porcentagem_ate_5_sm <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_dos_ocupados_com_rendimento_de_ate_5_salarios_minimo_2000,
         percent_dos_ocupados_com_rendimento_de_ate_5_salarios_minimo_2010) %>%
arrange(desc(percent_dos_ocupados_com_rendimento_de_ate_5_salarios_minimo_2010))

writexl::write_xlsx(porcentagem_ate_5_sm, "porcentagem com rendimento ate 5 salarios minimos em 2000 e 2010 na ordem de 2010.xlsx")  


#porcentagem de vulneraveis a pobreza entre 2000 e 2010 na ordem de 2010:

porcentagem_vulneraveis_a_pobreza <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_de_vulneraveis_a_pobreza_2000,
         percent_de_vulneraveis_a_pobreza_2010) %>%
  filter(!str_detect(territorialidades, "Brasil")) %>%
  arrange(desc(percent_de_vulneraveis_a_pobreza_2010))

writexl::write_xlsx(porcentagem_vulneraveis_a_pobreza, "porcentagem de vulneraveis a pobreza em 2000 e 2010 na ordem de 2010.xlsx")

#porcentagem de vulneraveis a pobreza entre 2000 e 2010 na ordem de 2010:

porcentagem_vulneraveis_a_pobreza_2000 <- vulneraveis_a_pobreza_titulos_corrigidos %>%
  select(territorialidades,
         percent_de_criancas_vulneraveis_a_pobreza_2000,
         percent_de_criancas_vulneraveis_a_pobreza_2010) %>%
  arrange(desc(percent_de_criancas_vulneraveis_a_pobreza_2000))

writexl::write_xlsx(porcentagem_vulneraveis_a_pobreza_2000, "porcentagem de vulneraveis a pobreza em 2000 e 2010 na ordem de 2000.xlsx")

vulneraveis_a_pobreza_2010 <- read_xlsx("base final RM Recife/RM 62600 Recife - Base UDH 2000_2010.xlsx")

vulneraveis_a_pobreza_2010_limpo <- vulneraveis_a_pobreza_2010 %>%
  clean_names()

udhs_recife_codigo <- vulneraveis_a_pobreza_2010_limpo %>%
  filter(str_detect(codmun6, "261160")) %>%
  filter(str_detect(ano, "2010")) %>%
  select(udh_atlas, nome_udh, ppob)

udhs_recife_codigo
colnames(udhs_recife_codigo)

write_xlsx(udhs_recife_codigo, "vulneraveis a pobreza udhs recife 2010 20102022.xlsx")
