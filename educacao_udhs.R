
# Dados sobre educação nas Unidades de Desenvolvimento Humano (UDHs) do Recife

# Base de Dados: http://www.atlasbrasil.org.br/ 


library(tidyverse)
library(readxl)
library(writexl)
library(readODS)
library(janitor)

educacao_udhs_2000 <- readODS::read_ods("base final RM Recife/dados_recife_2000_colunas_selecionadas.ods")

#Expectativa de anos de estudo aos 18 anos de idade

#Legenda:
#Número médio de anos de estudo que uma geração de crianças que ingressa na escola 
#deverá completar ao atingir 18 anos de idade, os padrões atuais se mantiverem ao 
#longo de sua vida escolar.

anos_de_estudo_aos_18_anos_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, E_ANOSESTUDO) %>%
  arrange(desc(E_ANOSESTUDO))

write_ods(anos_de_estudo_aos_18_anos_2000, "anos_estudo_aos_18_2000.ods")

#Taxa de analfabetismo da população de 15 anos ou mais de idade

#Legenda: Razão entre a população de 15 anos ou mais de idade que não
#sabe ler nem escrever um bilhete simples e o total de pessoas nesta 
#faixa etária, multiplicada

analfabetismo_15_ou_mais_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_ANALF15M) %>%
  arrange(desc(T_ANALF25M))

#Taxa de analfabetismo da população de 25 anos ou mais de idade

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que não sabe ler nem escrever 
#um bilhete simples e o total de pessoas nesta faixa etária, multiplicada por 100.

analfabetismo_25_ou_mais_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_ANALF25M) %>%
  arrange(desc(T_ANALF25M))

write_ods(analfabetismo_25_ou_mais_2000, "analfabetismo_25_ou_mais_2000.ods")

#Percentual da população de 6 a 17 anos  de idade frequentando o ensino básico que 
#tem 2 anos ou mais de atraso idade-série.

#Legenda:
#Razão entre o número de pessoas de 6 a 17 anos frequentando o ensino básico 
#REGULAR SERIADO (fundamental + médio) com atraso idade-série de 2 anos ou mais e o 
#número total de pessoas nessa faixa etária frequentando esse nível de ensino
#multiplicado por 100. O atraso idade-série é calculado pela fórmula: [(idade - 5) - 
#número da série frequentada], na qual o número da série frequentada é 10, 11 e 12 para
#as pessoas que frequentam a 1ª, a 2ª e a 3ª séries do ensino médio, respectivamente. 
#As pessoas de 6 a 14 anos frequentando a pré-escola foram consideradas como se 
#estivessem no 1º ano do ensino fundamental. As pessoas de 15 a 17 anos frequentando 
#a 4ª série do ensino médio foram consideradas como já tendo concluído esse nível
#de ensino.

dois_anos_atraso_ensino_basico_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_ATRASO_2_BASICO) %>%
  arrange(desc(T_ATRASO_2_BASICO)) 

write_ods(dois_anos_atraso_ensino_basico_2000, "dois_anos_atraso_ensino_basico_2000.ods")

#Percentual da população de 6 a 14 anos de idade frequentando o ensino 
#fundamental que tem 2 anos ou mais de atraso idade-série.

#Legenda:
#Razão entre o número de pessoas de 6 a 14 anos frequentando o ensino fundamental 
#REGULAR SERIADO com atraso idade-série de 2 anos ou mais e o número total de pessoas
#nessa faixa etária frequentando esse nível de ensino, multiplicada por 100. O atraso 
#idade-série é calculado pela fórmula: [(idade - 5) - número da série frequentada]. 
#As pessoas de 6 a 14 anos frequentando a pré-escola foram consideradas como se 
#estivessem no 1º ano do ensino fundamental.

dois_anos_atraso_ensino_fundamental_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_ATRASO_2_FUND) %>%
  arrange(desc(T_ATRASO_2_FUND))

write_ods(dois_anos_atraso_ensino_fundamental_2000, "dois_anos_atraso_ensino_fundamental_2000.ods")


#Taxa de atendimento escolar da população de 6 a 17 anos de idade 

#Legenda: Razão entre população de 6 a 17 anos de idade que estava frequentando 
#a escola, em qualquer nível ou série (exceto pré-vestibular), e a população total 
#nesta faixa etária, multiplicada por 100.

taxa_atendimento_escolar_6_a_17_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FREQ6A17) %>%
  arrange(desc(T_FREQ6A17))

write_ods(taxa_atendimento_escolar_6_a_17_2000, "taxa_atendimento_escolar_6_a_17_2000.ods")

#Percentual da população de 11 a 13 anos de idade frequentando os anos  finais do 
#fundamental REGULAR SERIADO ou que já concluiu o fundamental

#Legenda: 
#Razão entre a população de 11 a 13 anos de idade que frequenta os anos finais do 
#fundamental REGULAR SERIADO ou que já concluiu o fundamental (em qualquer modalidade)
#e a população total nessa faixa etária, multiplicada por 100.

percentual_11_a_13_anos_finais_ou_concluiu_fundamental_regular_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FUND11A13) %>%
  arrange(desc(T_FUND11A13))

write_ods(percentual_11_a_13_anos_finais_ou_concluiu_fundamental_regular_2000,
          "percentual_11_a_13_anos_finais_ou_concluiu_fundamental_regular_2000.ods")

#Percentual da população de 15 a 17 anos com fundamental completo

#Legenda:
#Razão entre a população de 15 a 17 anos de idade que concluiu o ensino fundamental,
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo), e 
#o total de pessoas nesta faixa etária, multiplicada por 100.

percentual_15_a_17_concluiu_fundamental_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FUND15A17) %>%
  arrange(desc(T_FUND15A17))

write_ods(percentual_15_a_17_concluiu_fundamental_2000,
          "percentual_15_a_17_concluiu_fundamental_2000.ods")

#Percentual da população de 18 a 24 anos com fundamental completo
  
#Legenda:
#Razão entre a população de 18 a 24 anos de idade que concluiu o ensino fundamental,
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo),
#e o total de pessoas nesta faixa etária, multiplicada por 100.

percentual_18_a_24_concluiu_fundamental_2000 <- educacao_udhs_2000 %>%
select(Cod_ID, NOME_UDH, T_FUND18A24) %>%
arrange(desc(T_FUND18A24))  
  
write_ods(percentual_18_a_24_concluiu_fundamental_2000,
          "percentual_18_a_24_concluiu_fundamental_2000.ods")

#Percentual da população de 25 anos ou mais com fundamental completo

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que concluiu o ensino 
#fundamental, em qualquer de suas modalidades (regular seriado, não seriado,
#EJA ou supletivo), e o total de pessoas nesta faixa etária, multiplicada por 100.

percentual_25_ou_mais_fundamental_completo_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FUND25M) %>%
  arrange(desc(T_FUND25M))

write_ods(percentual_25_ou_mais_fundamental_completo_2000, 
          "percentual_25_ou_mais_fundamental_completo_2000.ods")

#Percentual da população de 18 a 24 anos com ensino médio completo

#Legenda:
#Razão entre a população de 18 a 24 anos de idade que concluiu o ensino médio, 
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo) 
#e o total de pessoas nesta faixa etária, multiplicada por 100. Foram consideradas
#como tendo concluído o ensino médio as pessoas frequentando a 4ª série desse nível.

percentual_18_a_24_concluiu_medio_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_MED18A24) %>%
  arrange(desc(T_MED18A24))  

write_ods(percentual_18_a_24_concluiu_medio_2000, "percentual_18_a_24_concluiu_medio.2000.ods")


#Percentual da população de 25 anos ou mais com ensino médio completo

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que concluiu o ensino médio, 
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo)
#e o total de pessoas nesta faixa etária, multiplicada por 100. Foram consideradas
#como tendo concluído o ensino médio as pessoas frequentando a 4ª série desse nível.

percentual_25_ou_mais_medio_completo_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_MED25M) %>%
  arrange(desc(T_MED25M))

write_ods(percentual_25_ou_mais_medio_completo_2000,
          "percentual_25_ou_mais_medio_completo_2000.ods")

#Percentual da população de 25 anos ou mais com superior completo

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que concluiu pelo menos 
#a graduação do ensino superior e o total de pessoas nesta faixa etária, multiplicada
#por 100.

percentual_25_ou_mais_superior_completo_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_SUPER25M) %>%
  arrange(desc(T_SUPER25M))

write_ods(percentual_25_ou_mais_superior_completo_2000,
          "percentual_25_ou_mais_superior_completo_2000.ods")

#Percentual de crianças que vivem em domicílios em que nenhum dos moradores
#tem o ensino fundamental completo.

#Legenda:
#Razão entre o número de crianças de até 14 anos que vivem em domicílios em que
#nenhum dos moradores tem o ensino fundamental completo e a população total nesta
#faixa etária residente em domicílios particulares permanentes, multiplicada por 100.
#São considerados apenas os domicílios particulares permanentes.

criancas_em_domicilios_niguem_tem_fundamental_completo_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_CRIFUNDIN_TODOS) %>%
  arrange(desc(T_CRIFUNDIN_TODOS))

write_ods(criancas_em_domicilios_niguem_tem_fundamental_completo_2000,
          "criancas_em_domicilios_ninguem_tem_fundamental_completo_2000.ods")

#Percentual de crianças de 6 a 14 anos que não frequenta a escola

#Legenda:
#Razão entre o número de crianças de 6 a 14 anos que não frequentam a escola e o 
#total de crianças nesta faixa etária, multiplicada por 100.

criancas_6_a_14_fora_da_escola_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FORA6A14) %>%
  arrange(desc(T_FORA6A14))

write_ods(criancas_6_a_14_fora_da_escola_2000, "criancas_6_a_14_fora_da_escola_2000.ods")

#Percentual pessoas que vivem em domicílios em que nenhum morador tem
#o ensino fundamental completo.

#Legenda:
#Razão entre as pessoas que vivem em domicílios em que nenhum dos moradores tem o 
#ensino fundamental completo e a população total residente em domicílios particulares
#permanentes, multiplicada por 100.

pessoas_domicilios_nenhum_com_fundamental_completo_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FUNDIN_TODOS) %>%
  arrange(desc(T_FUNDIN_TODOS))

write_ods(pessoas_domicilios_nenhum_com_fundamental_completo_2000,
          "pessoas_domicilios_nenhum_com_fundamental_completo_2000.ods")

#Percentual de pessoas de 18 anos ou mais sem fundamental completo e
#em ocupação informal

#Legenda:
#Razão entre as pessoas de 18 anos ou mais sem fundamental completo e em ocupação
#informal e a população total nesta faixa etária, multiplicada por 100. Ocupação 
#implica que trabalham mas não são: empregados com carteira de trabalho assinada, 
#militares do exército, da marinha, da aeronáutica, da polícia militar ou do corpo
#de bombeiros, empregados pelo regime jurídico dos funcionários públicos ou 
#empregadores e trabalhadores por conta própria com contribuição a instituto de 
#previdência oficial.

pessoas_com_18_mais_sem_fundamental_completo_trabalho_informal_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_FUNDIN18MINF) %>%
  arrange(desc(T_FUNDIN18MINF))

write_ods(pessoas_com_18_mais_sem_fundamental_completo_trabalho_informal_2000,
          "pessoas_com_18_mais_sem_fundamental_completo_trabalho_informal_2000.ods")

#Subíndice de escolaridade da população adulta - IDHM Educação

#Legenda:
#Subíndice que compõe o IDHM Educação, representando o nível de escolaridade 
#da população adulta. É obtido a partir do indicador "% de 18 anos ou mais com 
#fundamental completo".

idhm_educacao_populacao_adulta_2000 <- educacao_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, I_ESCOLARIDADE) %>%
  arrange(desc(I_ESCOLARIDADE))

write_ods(idhm_educacao_populacao_adulta_2000, "idhm_educacao_populacao_adulta_2000.ods")

#____________________________Dados Educacao UDHs 2010_____________________________

educacao_udhs_2010 <- readODS::read_ods("base final RM Recife/dados_recife_2010_colunas_selecionadas.ods")

#Expectativa de anos de estudo aos 18 anos de idade

#Legenda:
#Número médio de anos de estudo que uma geração de crianças que ingressa na escola 
#deverá completar ao atingir 18 anos de idade, os padrões atuais se mantiverem ao 
#longo de sua vida escolar.

anos_de_estudo_aos_18_anos_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, E_ANOSESTUDO) %>%
  arrange(desc(E_ANOSESTUDO))

write_ods(anos_de_estudo_aos_18_anos_2010, "anos_estudo_aos_18_2010.ods")

#Taxa de analfabetismo da população de 15 anos ou mais de idade

#Legenda: Razão entre a população de 15 anos ou mais de idade que não
#sabe ler nem escrever um bilhete simples e o total de pessoas nesta 
#faixa etária, multiplicada

analfabetismo_15_ou_mais_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_ANALF15M) %>%
  arrange(desc(T_ANALF15M))

write_ods(analfabetismo_15_ou_mais_2010, "analfabetismo_15_ou_mais_2010.ods")

#Taxa de analfabetismo da população de 18 anos ou mais de idade

#Legenda: Razão entre a população de 18 anos ou mais de idade que não
#sabe ler nem escrever um bilhete simples e o total de pessoas nesta 
#faixa etária, multiplicada

analfabetismo_18_ou_mais_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_ANALF18M) %>%
  arrange(desc(T_ANALF18M))

write_ods(analfabetismo_18_ou_mais_2010, "analfabetismo_18_ou_mais_2010.ods")


#Taxa de analfabetismo da população de 25 anos ou mais de idade

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que não sabe ler nem escrever 
#um bilhete simples e o total de pessoas nesta faixa etária, multiplicada por 100.

analfabetismo_25_ou_mais_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_ANALF25M) %>%
  arrange(desc(T_ANALF25M))

write_ods(analfabetismo_25_ou_mais_2010, "analfabetismo_25_ou_mais_2010.ods")

#Percentual da população de 6 a 17 anos  de idade frequentando o ensino básico que 
#tem 2 anos ou mais de atraso idade-série.

#Legenda:
#Razão entre o número de pessoas de 6 a 17 anos frequentando o ensino básico 
#REGULAR SERIADO (fundamental + médio) com atraso idade-série de 2 anos ou mais e o 
#número total de pessoas nessa faixa etária frequentando esse nível de ensino
#multiplicado por 100. O atraso idade-série é calculado pela fórmula: [(idade - 5) - 
#número da série frequentada], na qual o número da série frequentada é 10, 11 e 12 para
#as pessoas que frequentam a 1ª, a 2ª e a 3ª séries do ensino médio, respectivamente. 
#As pessoas de 6 a 14 anos frequentando a pré-escola foram consideradas como se 
#estivessem no 1º ano do ensino fundamental. As pessoas de 15 a 17 anos frequentando 
#a 4ª série do ensino médio foram consideradas como já tendo concluído esse nível
#de ensino.

dois_anos_atraso_ensino_basico_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_ATRASO_2_BASICO) %>%
  arrange(desc(T_ATRASO_2_BASICO)) 

write_ods(dois_anos_atraso_ensino_basico_2010, "dois_anos_atraso_ensino_basico_2010.ods")

#Percentual da população de 6 a 14 anos de idade frequentando o ensino 
#fundamental que tem 2 anos ou mais de atraso idade-série.

#Legenda:
#Razão entre o número de pessoas de 6 a 14 anos frequentando o ensino fundamental 
#REGULAR SERIADO com atraso idade-série de 2 anos ou mais e o número total de pessoas
#nessa faixa etária frequentando esse nível de ensino, multiplicada por 100. O atraso 
#idade-série é calculado pela fórmula: [(idade - 5) - número da série frequentada]. 
#As pessoas de 6 a 14 anos frequentando a pré-escola foram consideradas como se 
#estivessem no 1º ano do ensino fundamental.

dois_anos_atraso_ensino_fundamental_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_ATRASO_2_FUND) %>%
  arrange(desc(T_ATRASO_2_FUND))

write_ods(dois_anos_atraso_ensino_fundamental_2010, "dois_anos_atraso_ensino_fundamental_2010.ods")


#Taxa de atendimento escolar da população de 6 a 17 anos de idade 

#Legenda: Razão entre população de 6 a 17 anos de idade que estava frequentando 
#a escola, em qualquer nível ou série (exceto pré-vestibular), e a população total 
#nesta faixa etária, multiplicada por 100.

taxa_atendimento_escolar_6_a_17_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FREQ6A17) %>%
  arrange(desc(T_FREQ6A17))

write_ods(taxa_atendimento_escolar_6_a_17_2010, "taxa_atendimento_escolar_6_a_17_2010.ods")

#Percentual da população de 11 a 13 anos de idade frequentando os anos  finais do 
#fundamental REGULAR SERIADO ou que já concluiu o fundamental

#Legenda: 
#Razão entre a população de 11 a 13 anos de idade que frequenta os anos finais do 
#fundamental REGULAR SERIADO ou que já concluiu o fundamental (em qualquer modalidade)
#e a população total nessa faixa etária, multiplicada por 100.

percentual_11_a_13_anos_finais_ou_concluiu_fundamental_regular_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FUND11A13) %>%
  arrange(desc(T_FUND11A13))

write_ods(percentual_11_a_13_anos_finais_ou_concluiu_fundamental_regular_2010,
          "percentual_11_a_13_anos_finais_ou_concluiu_fundamental_regular_2010.ods")

#Percentual da população de 15 a 17 anos com fundamental completo

#Legenda:
#Razão entre a população de 15 a 17 anos de idade que concluiu o ensino fundamental,
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo), e 
#o total de pessoas nesta faixa etária, multiplicada por 100.

percentual_15_a_17_concluiu_fundamental_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FUND15A17) %>%
  arrange(desc(T_FUND15A17))

write_ods(percentual_15_a_17_concluiu_fundamental_2010,
          "percentual_15_a_17_concluiu_fundamental_2010.ods")

#Percentual da população de 18 a 24 anos com fundamental completo

#Legenda:
#Razão entre a população de 18 a 24 anos de idade que concluiu o ensino fundamental,
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo),
#e o total de pessoas nesta faixa etária, multiplicada por 100.

percentual_18_a_24_concluiu_fundamental_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FUND18A24) %>%
  arrange(desc(T_FUND18A24))  

write_ods(percentual_18_a_24_concluiu_fundamental_2010,
          "percentual_18_a_24_concluiu_fundamental_2010.ods")

#Percentual da população de 25 anos ou mais com fundamental completo

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que concluiu o ensino 
#fundamental, em qualquer de suas modalidades (regular seriado, não seriado,
#EJA ou supletivo), e o total de pessoas nesta faixa etária, multiplicada por 100.

percentual_25_ou_mais_fundamental_completo_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FUND25M) %>%
  arrange(desc(T_FUND25M))

write_ods(percentual_25_ou_mais_fundamental_completo_2010, 
          "percentual_25_ou_mais_fundamental_completo_2010.ods")

#Percentual da população de 18 a 24 anos com ensino médio completo

#Legenda:
#Razão entre a população de 18 a 24 anos de idade que concluiu o ensino médio, 
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo) 
#e o total de pessoas nesta faixa etária, multiplicada por 100. Foram consideradas
#como tendo concluído o ensino médio as pessoas frequentando a 4ª série desse nível.

percentual_18_a_24_concluiu_medio_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_MED18A24) %>%
  arrange(desc(T_MED18A24))  

write_ods(percentual_18_a_24_concluiu_medio_2010, 
          "percentual_18_a_24_concluiu_medio.2010.ods")


#Percentual da população de 25 anos ou mais com ensino médio completo

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que concluiu o ensino médio, 
#em qualquer de suas modalidades (regular seriado, não seriado, EJA ou supletivo)
#e o total de pessoas nesta faixa etária, multiplicada por 100. Foram consideradas
#como tendo concluído o ensino médio as pessoas frequentando a 4ª série desse nível.

percentual_25_ou_mais_medio_completo_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_MED25M) %>%
  arrange(desc(T_MED25M))

write_ods(percentual_25_ou_mais_medio_completo_2010,
          "percentual_25_ou_mais_medio_completo_2010.ods")

#Percentual da população de 25 anos ou mais com superior completo

#Legenda:
#Razão entre a população de 25 anos ou mais de idade que concluiu pelo menos 
#a graduação do ensino superior e o total de pessoas nesta faixa etária, multiplicada
#por 100.

percentual_25_ou_mais_superior_completo_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_SUPER25M) %>%
  arrange(desc(T_SUPER25M))

write_ods(percentual_25_ou_mais_superior_completo_2010,
          "percentual_25_ou_mais_superior_completo_2010.ods")

#Percentual de crianças que vivem em domicílios em que nenhum dos moradores
#tem o ensino fundamental completo.

#Legenda:
#Razão entre o número de crianças de até 14 anos que vivem em domicílios em que
#nenhum dos moradores tem o ensino fundamental completo e a população total nesta
#faixa etária residente em domicílios particulares permanentes, multiplicada por 100.
#São considerados apenas os domicílios particulares permanentes.

criancas_em_domicilios_niguem_tem_fundamental_completo_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_CRIFUNDIN_TODOS) %>%
  arrange(desc(T_CRIFUNDIN_TODOS))

write_ods(criancas_em_domicilios_niguem_tem_fundamental_completo_2010,
          "criancas_em_domicilios_ninguem_tem_fundamental_completo_2010.ods")

#Percentual de crianças de 6 a 14 anos que não frequenta a escola

#Legenda:
#Razão entre o número de crianças de 6 a 14 anos que não frequentam a escola e o 
#total de crianças nesta faixa etária, multiplicada por 100.

criancas_6_a_14_fora_da_escola_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FORA6A14) %>%
  arrange(desc(T_FORA6A14))

write_ods(criancas_6_a_14_fora_da_escola_2010, "criancas_6_a_14_fora_da_escola_2010.ods")

#Percentual pessoas que vivem em domicílios em que nenhum morador tem
#o ensino fundamental completo.

#Legenda:
#Razão entre as pessoas que vivem em domicílios em que nenhum dos moradores tem o 
#ensino fundamental completo e a população total residente em domicílios particulares
#permanentes, multiplicada por 100.

pessoas_domicilios_nenhum_com_fundamental_completo_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FUNDIN_TODOS) %>%
  arrange(desc(T_FUNDIN_TODOS))

write_ods(pessoas_domicilios_nenhum_com_fundamental_completo_2010,
          "pessoas_domicilios_nenhum_com_fundamental_completo_2010.ods")

#Percentual de pessoas de 18 anos ou mais sem fundamental completo e
#em ocupação informal

#Legenda:
#Razão entre as pessoas de 18 anos ou mais sem fundamental completo e em ocupação
#informal e a população total nesta faixa etária, multiplicada por 100. Ocupação 
#implica que trabalham mas não são: empregados com carteira de trabalho assinada, 
#militares do exército, da marinha, da aeronáutica, da polícia militar ou do corpo
#de bombeiros, empregados pelo regime jurídico dos funcionários públicos ou 
#empregadores e trabalhadores por conta própria com contribuição a instituto de 
#previdência oficial.

pessoas_com_18_mais_sem_fundamental_completo_trabalho_informal_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_FUNDIN18MINF) %>%
  arrange(desc(T_FUNDIN18MINF))

write_ods(pessoas_com_18_mais_sem_fundamental_completo_trabalho_informal_2010,
          "pessoas_com_18_mais_sem_fundamental_completo_trabalho_informal_2010.ods")

#Subíndice de escolaridade da população adulta - IDHM Educação

#Legenda:
#Subíndice que compõe o IDHM Educação, representando o nível de escolaridade 
#da população adulta. É obtido a partir do indicador "% de 18 anos ou mais com 
#fundamental completo".

idhm_educacao_populacao_adulta_2010 <- educacao_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, I_ESCOLARIDADE) %>%
  arrange(desc(I_ESCOLARIDADE))

write_ods(idhm_educacao_populacao_adulta_2010, "idhm_educacao_populacao_adulta_2010.ods")





