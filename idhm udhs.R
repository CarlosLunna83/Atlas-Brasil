
library(tidyverse)
library(readxl)
library(writexl)
library(readODS)
library(janitor)

#Índice de Desenvolvimento Humano Municipal

#Legenda:
#Índice de Desenvolvimento Humano Municipal. Média geométrica dos índices das 
#dimensões Renda, Educação e Longevidade, com pesos iguais.


IDHM_2000 <- readODS::read_ods("base final RM Recife/dados_recife_2000_colunas_selecionadas.ods")

IDHM_Medio_2000 <- IDHM_2000 %>%
  select(Cod_ID, NOME_UDH, IDHM) %>%
  arrange(desc(IDHM))

write_ods(IDHM_Medio_2000, "idhm_medio_2000.ods")

#Índice de Desenvolvimento Humano Municipal - Dimensão Educação

#Legenda:
#Índice sintético da dimensão Educação,  é um dos 3 índices que compõem o IDHM. 
#É obtido através da média geométrica do subíndice de frequência escolar, 
#com peso de 2/3, e do subíndice de escolaridade, com peso de 1/3.

IDHM_Educacao_2000 <- IDHM_2000 %>%
  select(Cod_ID, NOME_UDH, IDHM_E) %>%
  arrange(desc(IDHM_E))

write_ods(IDHM_Educacao_2000, "idhm_educacao_2000.ods")


#Índice de Desenvolvimento Humano Municipal  - Dimensão Longevidade

#Legenda:
#Índice da dimensão Longevidade, é um dos 3 índices que compõem o IDHM. 
#É obtido a partir do indicador Esperança de vida ao nascer, através da fórmula:
#[(valor observado do indicador) - (valor mínimo)] / [(valor máximo) - (valor mínimo)],
#onde os valores mínimo e máximo são 25 e 85 anos, respectivamente. 

IDHM_Longevidade_2000 <- IDHM_2000 %>%
  select(Cod_ID, NOME_UDH, IDHM_L) %>%
  arrange(desc(IDHM_L))

write_ods(IDHM_Longevidade_2000, "idhm_longevidade_2000.ods")

#Índice de Desenvolvimento Humano Municipal - Dimensão Renda

#Legenda:
#Índice da dimensão Renda, é um dos 3 índices que compõem o IDHM. 
#É obtido a partir do indicador Renda per capita, através da fórmula:
#[ln (valor observado do indicador) - ln (valor mínimo)] / [ln (valor máximo) - 
#ln (valor mínimo)], onde os valores mínimo e máximo são R$ 8,00 e R$ 4.033,00 
#(a preços de agosto de 2010). 

IDHM_Renda_2000 <- IDHM_2000 %>%
  select(Cod_ID, NOME_UDH, IDHM_R) %>%
  arrange(desc(IDHM_Renda_2000))

write_ods(IDHM_Renda_2000, "idhm_renda_2000.ods")

#Índice de Desenvolvimento Humano Municipal

#Legenda:
#Índice de Desenvolvimento Humano Municipal. Média geométrica dos índices das 
#dimensões Renda, Educação e Longevidade, com pesos iguais.


IDHM_2010 <- readODS::read_ods("base final RM Recife/dados_recife_2010_colunas_selecionadas.ods")

IDHM_Medio_2010 <- IDHM_2010 %>%
  select(Cod_ID, NOME_UDH, IDHM) %>%
  arrange(desc(IDHM))

write_ods(IDHM_Medio_2010, "idhm_medio_2010.ods")

#Índice de Desenvolvimento Humano Municipal - Dimensão Educação

#Legenda:
#Índice sintético da dimensão Educação,  é um dos 3 índices que compõem o IDHM. 
#É obtido através da média geométrica do subíndice de frequência escolar, 
#com peso de 2/3, e do subíndice de escolaridade, com peso de 1/3.

IDHM_Educacao_2010 <- IDHM_2010 %>%
  select(Cod_ID, NOME_UDH, IDHM_E) %>%
  arrange(desc(IDHM_E))

write_ods(IDHM_Educacao_2010, "idhm_educacao_2010.ods")


#Índice de Desenvolvimento Humano Municipal  - Dimensão Longevidade

#Legenda:
#Índice da dimensão Longevidade, é um dos 3 índices que compõem o IDHM. 
#É obtido a partir do indicador Esperança de vida ao nascer, através da fórmula:
#[(valor observado do indicador) - (valor mínimo)] / [(valor máximo) - (valor mínimo)],
#onde os valores mínimo e máximo são 25 e 85 anos, respectivamente. 

IDHM_Longevidade_2010 <- IDHM_2010 %>%
  select(Cod_ID, NOME_UDH, IDHM_L) %>%
  arrange(desc(IDHM_L))

write_ods(IDHM_Longevidade_2010, "idhm_longevidade_2010.ods")


#Índice de Desenvolvimento Humano Municipal - Dimensão Renda

#Legenda:
#Índice da dimensão Renda, é um dos 3 índices que compõem o IDHM. 
#É obtido a partir do indicador Renda per capita, através da fórmula:
#[ln (valor observado do indicador) - ln (valor mínimo)] / [ln (valor máximo) - 
#ln (valor mínimo)], onde os valores mínimo e máximo são R$ 8,00 e R$ 4.033,00 
#(a preços de agosto de 2010). 

IDHM_Renda_2010 <- IDHM_2010 %>%
  select(Cod_ID, NOME_UDH, IDHM_R) %>%
  arrange(desc(IDHM_R))

write_ods(IDHM_Renda_2010, "idhm_renda_2010.ods")

