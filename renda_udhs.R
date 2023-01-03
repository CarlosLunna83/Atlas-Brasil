library(tidyverse)
library(readxl)
library(writexl)
library(readODS)
library(janitor)


renda_udhs_2000 <- readODS::read_ods("base final RM Recife/dados_recife_2000_colunas_selecionadas.ods")


#Proporção de extremamente pobres

#Legenda:
#Proporção dos indivíduos com renda domiciliar per capita igual ou inferior a 
#R$ 70,00 mensais, em reais de agosto de 2010. O universo de indivíduos é limitado 
#àqueles que vivem em domicílios particulares permanentes.

extremamente_pobres_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PIND) %>%
  arrange(desc(PIND))

write_ods(extremamente_pobres_2000, "extremamente_pobres_2000.ods")

#Proporção de crianças vulneráveis à pobreza

criancas_extremamente_pobres_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PINDCRI) %>%
  arrange(desc(PINDCRI))

write_ods(criancas_extremamente_pobres_2000, "criancas_extremamente_pobres_2000.ods")

#Proporção de pobres

#Legenda:
#Proporção dos indivíduos com renda domiciliar per capita igual ou inferior 
#a R$ 140,00 mensais, em reais de agosto de 2010. O universo de indivíduos é limitado
#àqueles que vivem em domicílios particulares permanentes.

pobres_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PMPOB) %>%
  arrange(desc(PMPOB))

write_ods(pobres_2000, "pobres_2000.ods")

#Proporção de crianças pobres

#Legenda:
#Proporção dos indivíduos com até 14 anos de idade que têm renda domiciliar 
#per capita igual ou inferior a R$ 140,00 mensais, em reais de agosto de 2010.
#O universo de indivíduos é limitado àqueles com até 14 anos e que vivem em domicílios
#particulares permanentes.

criancas_pobres_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PMPOBCRI) %>%
  arrange(desc(PMPOBCRI))

write_ods(criancas_pobres_2000, "criancas_pobres_2000.ods")

#Proporção de vulneráveis à pobreza

#Legenda: 
#Proporção dos indivíduos com renda domiciliar per capita igual ou inferior 
#a R$ 255,00 mensais, em reais de agosto de 2010, equivalente a 1/2 salário mínimo 
#nessa data. O universo de indivíduos é limitado àqueles que vivem em domicílios 
#particulares permanentes.

vulneraveis_a_pobreza_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PPOB) %>%
  arrange(desc(PPOB))

write_ods(vulneraveis_a_pobreza_2000, "vulneraveis_a_pobreza_2000.ods")

#Proporção de crianças vulneráveis à pobreza

#Legenda:
#Proporção dos indivíduos com até 14 anos de idade que têm renda domiciliar
#per capita igual ou inferior a R$ 255,00 mensais, em reais de agosto de 2010, 
#equivalente a 1/2 salário mínimo nessa data. O universo de indivíduos é limitado
#àqueles com até 14 anos e que vivem em domicílios particulares permanentes.


criancas_vulneraveis_a_pobreza_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PPOBCRI) %>%
  arrange(desc(PPOBCRI))

write_ods(criancas_vulneraveis_a_pobreza_2000, "criancas_vulneraveis_a_pobreza_2000.ods")

#Renda domiciliar per capita média dos extremamente pobres

#Legenda:
#Média da renda domiciliar per capita das pessoas com renda domiciliar per capita 
#igual ou inferior a R$ 70,00 mensais, a preços de agosto de 2010. O universo de 
#indivíduos é limitado àqueles que vivem em domicílios particulares permanentes.

trabalhadores_comercio_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, RIND) %>%
  arrange(desc(RIND))

write_ods(trabalhadores_comercio_2000, "trabalhadores_comercio_2000.ods")

#Percentual dos ocupados no setor de construção 

trabalhadores_construcao_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_CONSTR) %>%
  arrange(desc(P_CONSTR))

write_ods(trabalhadores_construcao_2000, "trabalhadores_construcao_2000.ods")

#Percentual dos ocupados no setor serviços

#Legenda: Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas 
#no setor de serviços e o número total de pessoas ocupadas nessa faixa etária, 
#multiplicada por 100.

trabalhores_servicos_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_SERV) %>%
  arrange(desc(P_SERV))

write_ods(trabalhores_servicos_2000, "trabalhadores_servicos_2000.ods")

#Percentual dos ocupados nos setores de serviços industriais de utilidade pública

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas nos setor de 
#serviços industriais de utilidade pública e o número total de pessoas ocupadas nessa
#faixa etária, multiplicada por 100. Esse setor inclui as atividades constantes das 
#seções D e E do CNAE DOM 2.0: geração, transmissão e distribuição de eletricidade e 
#gás; captação, tratamento e distribuição de água; esgoto e atividades relacionadas;
#coleta, tratamento e disposição de resíduos e recuperação de materiais; 
#descontaminação e outros serviços de gestão de resíduos.

trabalhadores_industria_publica_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_SIUP) %>%
  arrange(desc(P_SIUP))

write_ods(trabalhadores_industria_publica_2000, "trabalhadores_industria_publica_2000.ods")
                     
#Percentual dos ocupados na indústria de transformação

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas na indústria de
#transformação e o número total de pessoas ocupadas nessa faixa etária, multiplicada
#por 100.

trabalhadores_industria_tranformacao_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_TRANSF) %>%
  arrange(desc(P_TRANSF))

write_ods(trabalhadores_industria_tranformacao_2000, "trabalhadores_industria_transformacao_2000.ods")

#Percentual de ocupados de 18 anos ou mais que são trabalhadores por conta própria.

trabalhadores_conta_propria_18_mais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, CPR) %>%
  arrange(desc(CPR))

write_ods(trabalhadores_conta_propria_18_mais_2000, "trabalhadores_conta_propria_18_mais_2000.ods")

#Percentual de ocupados de 18 anos ou mais que são empregadores

#Legenda:
#Razão entre o número de empregadores de 18 anos ou mais de idade e o número total 
#de pessoas ocupadas nessa faixa etária, multiplicada por 100.

empregadores_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, EMP) %>%
  arrange(desc(EMP))

write_ods(empregadores_2000, "empregadores_2000.ods")

#Grau de formalização do trabalho das pessoas ocupadas

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais formalmente ocupadas e o número 
#total de pessoas ocupadas nessa faixa etária, multiplicada por 100. Foram 
#considerados como formalmente ocupados os empregados com carteira de trabalho 
#assinada, os militares do exército, da marinha, da aeronáutica, da polícia militar
#ou do corpo de bombeiros, os empregados pelo regime jurídico dos funcionários
#públicos, assim como os empregadores e trabalhadores por conta própria que eram 
#contribuintes de instituto de previdência oficial.

trabalhadores_formais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_FORMAL) %>%
  arrange(desc(P_FORMAL))
write_ods(trabalhadores_formais_2000, "trabalhadores_formais_2000.ods")

#Percentual de ocupados de 18 anos ou mais que são empregados com carteira 

trabalhadores_carteira_assinada_18_mais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, TRABCC) %>%
  arrange(desc(TRABCC))
write_ods(trabalhadores_carteira_assinada_18_mais_2000, 
          "trabalhadores_carteira_assinada_18_mais_2000.ods")

#Percentual de ocupados de 18 anos ou mais que são trabalhadores do setor público.

#Legenda:
#Razão entre o número de trabalhadores do setor público de 18 anos ou mais de idade
#e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100. Os 
#trabalhadores do setor público incluem os empregados pelo regime jurídico dos
#funcionários públicos e os militares do exército, marinha, aeronáutica, polícia 
#militar ou corpo de bombeiros.



trabalhadores_setor_publico_18_mais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, TRABPUB) %>%
  arrange(desc(TRABPUB))

write_ods(trabalhadores_setor_publico_18_mais_2000,
          "trabalhadores_setor_publico_18_mais_2000.ods")

#Percentual de ocupados de 18 anos ou mais que são empregados sem carteira

#Legenda:
#Razão entre o número de empregados de 18 anos ou mais de idade sem carteira de 
#trabalho assinada e o número total de pessoas ocupadas nessa faixa etária, 
#multiplicada por 100.

trabalhadores_sem_carteira_assinada_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, TRABSC) %>%
  arrange(desc(TRABSC))

write_ods(trabalhadores_sem_carteira_assinada_2000, 
          "trabalhadores_sem_carteira_assinada_2000.ods")

#Percentual dos ocupados com fundamental completo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas que já 
#concluíram o ensino fundamental (regular seriado, regular não seriado, EJA ou 
#supletivo) e o número total de pessoas ocupadas nessa faixa etária, multiplicada 
#por 100.

ocupados_fundamental_completo_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_FUND) %>%
  arrange(desc(P_FUND))

write_ods(ocupados_fundamental_completo_2000, "ocupados_fundamental_completo_2000.ods")

#Percentual dos ocupados com médio completo    

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas que já 
#concluíram o ensino médio (regular seriado, regular não seriado, EJA ou supletivo)
#e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100. 
#Foram consideradas como já tendo concluído o médio aquelas pessoas que frequentavam 
#a 4ª série desse nível de ensino.

ocupados_medio_completo_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_MED) %>%
  arrange(desc(P_MED))

write_ods(ocupados_medio_completo_2000, "ocupados_medio_completo_2000.ods")

#Percentual dos ocupados com superior completo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e que já 
#concluíram a graduação do ensino superior e o número total de pessoas ocupadas
#nessa faixa etária, multiplicada por 100.

ocupados_superior_completo_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, P_SUPER) %>%
  arrange(desc(P_SUPER))

write_ods(ocupados_superior_completo_2000, "ocupados_superior_completo_2000.ods")

#Percentual dos ocupados sem rendimento

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e sem 
#rendimento do trabalho e o número total de pessoas ocupadas nessa faixa etária, 
#multiplicada por 100.


ocupados_sem_rendimento_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, REN0) %>%
  arrange(desc(REN0))

write_ods(ocupados_sem_rendimento_2000, "ocupados_sem_rendimento_2000.ods")

#Percentual dos ocupados com rendimento de até 1 salário mínimo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 1 salário mínimo de julho de 2010
#e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100.

ganha_ate_1_sm_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, REN1) %>%
  arrange(desc(REN1))

write_ods(ganha_ate_1_sm_2000, "ganha_ate_1_sm_2000.ods")

#Percentual dos ocupados com rendimento de até 2 salários mínimos

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 2 salários mínimos de julho
#de 2010 e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100.

ganha_ate_2_sm_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, REN2) %>%
  arrange(desc(REN2))

write_ods(ganha_ate_2_sm_2000, "ganha_ate_2_sm_2000.ods")

#Percentual dos ocupados com rendimento de até 3 salários mínimo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 3 salários mínimos de julho 
#de 2010 e o número total de pessoas ocupadas nessa faixa etária, multiplicada 
#por 100.

ganha_ate_3_sm_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, REN3) %>%
  arrange(desc(REN3))

write_ods(ganha_ate_3_sm_2000, "ganha_ate_3_sm_2000.ods")

# Percentual dos ocupados com rendimento de até 5 salários mínimo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 5 salários mínimos de julho
#de 2010 e o número total de pessoas ocupadas nessa faixa etária, multiplicada 
#por 100.

ganha_ate_5_sm_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, REN5) %>%
  arrange(desc(REN5))

write_ods(ganha_ate_5_sm_2000, "ganha_ate_5_sm_2000.ods")

#Rendimento médio dos ocupados

#Legenda:
#Média dos rendimentos de todos os trabalhos das pessoas ocupadas de 18 anos ou mais
#de idade. Valores em reais de agosto de 2010.

rendimento_medio_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, RENOCUP) %>%
  arrange(desc(RENOCUP))

write_ods(rendimento_medio_2000, "rendimento_medio_2000.ods")

#Taxa de atividade das pessoas de 18 anos ou mais de idade

#Legenda:
#Razão entre as pessoas de 18 anos ou mais de idade que eram economicamente 
#ativas, ou seja, que estavam ocupadas ou desocupadas na semana de referência
#do Censo e o total de pessoas nesta faixa etária, multiplicada por 100. 
#Considera-se desocupada a pessoa que, não estando ocupada na semana de referência,
#havia procurado trabalho no mês anterior a essa pesquisa.

taxa_atividade_18_mais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_ATIV18M) %>%
  arrange(desc(T_ATIV18M))

write_ods(taxa_atividade_18_mais_2000, "taxa_atividade_18_mais_2000.ods")                   

#Taxa de desocupação da população de 18 anos ou mais de idade

#Legenda:
#Percentual da população economicamente ativa (PEA) nessa faixa etária que estava 
#desocupada, ou seja, que não estava ocupada na semana anterior à data do Censo mas
#havia procurado trabalho ao longo do mês anterior à data dessa pesquisa.

taxa_desocupacao_18_mais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_DES18M) %>%
  arrange(desc(T_DES18M))
                
write_ods(taxa_desocupacao_18_mais_2000, "taxa_desocupacao_18_mais_2000.ods")

#Percentual de mulheres de 10 a 17 anos de idade que tiveram filhos

#Legenda:
#Razão entre as mulheres de 10 a 17 anos de idade que tiveram filhos e o total de
#mulheres nesta faixa etária, multiplicada por 100.

mulher_0_a_17_com_filhos_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_M10A17CF) %>%
  arrange(desc(T_M10A17CF))

write_ods(mulher_0_a_17_com_filhos_2000, "mulher_0_a_17_com_filhos_2000.ods")


# Percentual de pessoas de 15 a 24 anos que não estudam, não trabalham e são 
#vulneráveis à pobreza, na população total dessa faixa etária

#Legenda:
#Razão entre as pessoas de 15 a 24 anos que não estudam, não trabalham e são 
#vulneráveis à pobreza e a população total nesta faixa etária, multiplicada por 
#100. Definem-se como vulneráveis à pobreza as pessoas que moram em domicílios 
#com renda per capita inferior a 1/2 salário mínimo de agosto de 2010. São 
#considerados apenas os domicílios particulares permanentes.


nem_estuda_nem_trabalha_vulneraveis_a_pobreza_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_NESTUDA_NTRAB_MMEIO) %>%
  arrange(desc(T_NESTUDA_NTRAB_MMEIO))
            
write_ods(nem_estuda_nem_trabalha_vulneraveis_a_pobreza_2000,
          "nem_estuda_nem_trabalha_vulneraveis_a_pobreza_2000.ods")

#Percentual de pessoas em domicílios vulneráveis à pobreza e dependentes de idosos

#Legenda:
#Razão entre as pessoas que vivem em domicílios vulneráveis à pobreza
#(com renda per capita inferior a 1/2 salário mínimo de agosto de 2010) e 
#nos quais a maior parte da renda provém de moradores com 65 anos ou mais de idade
#e população total residente em domicílios particulares permanentes, multiplicada 
#por 100.


vulneraveis_a_pobreza_dependentes_idosos_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_RMAXIDOSO) %>%
  arrange(desc(T_RMAXIDOSO))

write_ods(vulneraveis_a_pobreza_dependentes_idosos_2000,
          "vulneraveis_a_pobreza_dependentes_idosos_2000.ods")

# Percentual de pessoas de 15 a 24 anos que não estudam, não trabalham e são
#vulneráveis, na população vulnerável dessa faixa etária.

#Legenda:
#Razão entre as pessoas de 15 a 24 anos que não estudam, não trabalham e são 
#vulneráveis à pobreza e a população vulnerável nessa faixa etária, multiplicado
#por 100. Define-se como vulnerável à pobreza a pessoa que mora em domicílio com 
#renda per capita inferior a 1/2 salário mínimo de agosto de 2010. São considerados
#apenas os domicílios particulares permanentes.
                 
nem_estuda_nem_trabalha_vulneraveis_a_pobreza_15_a_24_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, T_VULNERA_NESTUDA_NTRAB_MMEIO) %>%
  arrange(desc(T_VULNERA_NESTUDA_NTRAB_MMEIO))

write_ods(nem_estuda_nem_trabalha_vulneraveis_a_pobreza_15_a_24_2000,
          "nem_estuda_nem_trabalha_vulneraveis_a_pobreza_15_a_24_2000.ods")

#População economicamente ativa de 18 anos ou mais de idade

#Legenda:
#População economicamente ativa. Corresponde ao número de pessoas nessa faixa etári
#que, na semana de referência do Censo, encontravam-se ocupadas no mercado de 
#trabalho ou que, encontrando-se desocupadas, tinham procurado trabalho no mês 
#anterior à data da pesquisa. 

economicamente_ativas_18_mais_2000 <- renda_udhs_2000 %>%
  select(Cod_ID, NOME_UDH, PEA18M) %>%
  arrange(desc(PEA18M))

write_ods(economicamente_ativas_18_mais_2000, "economicamente_ativas_18_mais_2000.ods")

#_______________________________Dados 2010__________________________________________#

renda_udhs_2010 <- readODS::read_ods("base final RM Recife/dados_recife_2010_colunas_selecionadas.ods")


#Proporção de extremamente pobres

#Legenda:
#Proporção dos indivíduos com renda domiciliar per capita igual ou inferior a 
#R$ 70,00 mensais, em reais de agosto de 2010. O universo de indivíduos é limitado 
#àqueles que vivem em domicílios particulares permanentes.

extremamente_pobres_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PIND) %>%
  arrange(desc(PIND))

write_ods(extremamente_pobres_2010, "extremamente_pobres_2010.ods")

#Proporção de crianças vulneráveis à pobreza

criancas_extremamente_pobres_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PINDCRI) %>%
  arrange(desc(PINDCRI))

write_ods(criancas_extremamente_pobres_2010, "criancas_extremamente_pobres_2010.ods")

#Proporção de pobres

#Legenda:
#Proporção dos indivíduos com renda domiciliar per capita igual ou inferior 
#a R$ 140,00 mensais, em reais de agosto de 2010. O universo de indivíduos é limitado
#àqueles que vivem em domicílios particulares permanentes.

pobres_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PMPOB) %>%
  arrange(desc(PMPOB))

write_ods(pobres_2010, "pobres_2010.ods")

#Proporção de crianças pobres

#Legenda:
#Proporção dos indivíduos com até 14 anos de idade que têm renda domiciliar 
#per capita igual ou inferior a R$ 140,00 mensais, em reais de agosto de 2010.
#O universo de indivíduos é limitado àqueles com até 14 anos e que vivem em domicílios
#particulares permanentes.

criancas_pobres_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PMPOBCRI) %>%
  arrange(desc(PMPOBCRI))

write_ods(criancas_pobres_2010, "criancas_pobres_2010.ods")

#Proporção de vulneráveis à pobreza

#Legenda: 
#Proporção dos indivíduos com renda domiciliar per capita igual ou inferior 
#a R$ 255,00 mensais, em reais de agosto de 2010, equivalente a 1/2 salário mínimo 
#nessa data. O universo de indivíduos é limitado àqueles que vivem em domicílios 
#particulares permanentes.

vulneraveis_a_pobreza_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PPOB) %>%
  arrange(desc(PPOB))

write_ods(vulneraveis_a_pobreza_2010, "vulneraveis_a_pobreza_2010.ods")

#Proporção de crianças vulneráveis à pobreza

#Legenda:
#Proporção dos indivíduos com até 14 anos de idade que têm renda domiciliar
#per capita igual ou inferior a R$ 255,00 mensais, em reais de agosto de 2010, 
#equivalente a 1/2 salário mínimo nessa data. O universo de indivíduos é limitado
#àqueles com até 14 anos e que vivem em domicílios particulares permanentes.


criancas_vulneraveis_a_pobreza_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PPOBCRI) %>%
  arrange(desc(PPOBCRI))

write_ods(criancas_vulneraveis_a_pobreza_2010,
          "criancas_vulneraveis_a_pobreza_2010.ods")

#Renda domiciliar per capita média dos extremamente pobres

#Legenda:
#Média da renda domiciliar per capita das pessoas com renda domiciliar per capita 
#igual ou inferior a R$ 70,00 mensais, a preços de agosto de 2010. O universo de 
#indivíduos é limitado àqueles que vivem em domicílios particulares permanentes.

trabalhadores_comercio_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, RIND) %>%
  arrange(desc(RIND))

write_ods(trabalhadores_comercio_2010, "trabalhadores_comercio_2010.ods")

#Percentual dos ocupados no setor de construção 

trabalhadores_construcao_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_CONSTR) %>%
  arrange(desc(P_CONSTR))

write_ods(trabalhadores_construcao_2010, "trabalhadores_construcao_2010.ods")

#Percentual dos ocupados no setor serviços

#Legenda: Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas 
#no setor de serviços e o número total de pessoas ocupadas nessa faixa etária, 
#multiplicada por 100.

trabalhores_servicos_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_SERV) %>%
  arrange(desc(P_SERV))

write_ods(trabalhores_servicos_2010, "trabalhadores_servicos_2010.ods")

#Percentual dos ocupados nos setores de serviços industriais de utilidade pública

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas nos setor de 
#serviços industriais de utilidade pública e o número total de pessoas ocupadas nessa
#faixa etária, multiplicada por 100. Esse setor inclui as atividades constantes das 
#seções D e E do CNAE DOM 2.0: geração, transmissão e distribuição de eletricidade e 
#gás; captação, tratamento e distribuição de água; esgoto e atividades relacionadas;
#coleta, tratamento e disposição de resíduos e recuperação de materiais; 
#descontaminação e outros serviços de gestão de resíduos.

trabalhadores_industria_publica_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_SIUP) %>%
  arrange(desc(P_SIUP))

write_ods(trabalhadores_industria_publica_2010, "trabalhadores_industria_publica_2010.ods")

#Percentual dos ocupados na indústria de transformação

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas na indústria de
#transformação e o número total de pessoas ocupadas nessa faixa etária, multiplicada
#por 100.

trabalhadores_industria_tranformacao_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_TRANSF) %>%
  arrange(desc(P_TRANSF))

write_ods(trabalhadores_industria_tranformacao_2010, "trabalhadores_industria_transformacao_2010.ods")

#Percentual de ocupados de 18 anos ou mais que são trabalhadores por conta própria.

trabalhadores_conta_propria_18_mais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, CPR) %>%
  arrange(desc(CPR))

write_ods(trabalhadores_conta_propria_18_mais_2010, 
          "trabalhadores_conta_propria_18_mais_2010.ods")

#Percentual de ocupados de 18 anos ou mais que são empregadores

#Legenda:
#Razão entre o número de empregadores de 18 anos ou mais de idade e o número total 
#de pessoas ocupadas nessa faixa etária, multiplicada por 100.

empregadores_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, EMP) %>%
  arrange(desc(EMP))

write_ods(empregadores_2010, "empregadores_2010.ods")

#Grau de formalização do trabalho das pessoas ocupadas

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais formalmente ocupadas e o número 
#total de pessoas ocupadas nessa faixa etária, multiplicada por 100. Foram 
#considerados como formalmente ocupados os empregados com carteira de trabalho 
#assinada, os militares do exército, da marinha, da aeronáutica, da polícia militar
#ou do corpo de bombeiros, os empregados pelo regime jurídico dos funcionários
#públicos, assim como os empregadores e trabalhadores por conta própria que eram 
#contribuintes de instituto de previdência oficial.

trabalhadores_formais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_FORMAL) %>%
  arrange(desc(P_FORMAL))

write_ods(trabalhadores_formais_2010, "trabalhadores_formais_2010.ods")

#Percentual de ocupados de 18 anos ou mais que são empregados com carteira 

trabalhadores_carteira_assinada_18_mais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, TRABCC) %>%
  arrange(desc(TRABCC))

write_ods(trabalhadores_carteira_assinada_18_mais_2010, 
          "trabalhadores_carteira_assinada_18_mais_2010.ods")

#Percentual de ocupados de 18 anos ou mais que são trabalhadores do setor público.

#Legenda:
#Razão entre o número de trabalhadores do setor público de 18 anos ou mais de idade
#e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100. Os 
#trabalhadores do setor público incluem os empregados pelo regime jurídico dos
#funcionários públicos e os militares do exército, marinha, aeronáutica, polícia 
#militar ou corpo de bombeiros.



trabalhadores_setor_publico_18_mais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, TRABPUB) %>%
  arrange(desc(TRABPUB))

write_ods(trabalhadores_setor_publico_18_mais_2010,
          "trabalhadores_setor_publico_18_mais_2010.ods")

#Percentual de ocupados de 18 anos ou mais que são empregados sem carteira

#Legenda:
#Razão entre o número de empregados de 18 anos ou mais de idade sem carteira de 
#trabalho assinada e o número total de pessoas ocupadas nessa faixa etária, 
#multiplicada por 100.

trabalhadores_sem_carteira_assinada_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, TRABSC) %>%
  arrange(desc(TRABSC))

write_ods(trabalhadores_sem_carteira_assinada_2010, 
          "trabalhadores_sem_carteira_assinada_2010.ods")

#Percentual dos ocupados com fundamental completo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas que já 
#concluíram o ensino fundamental (regular seriado, regular não seriado, EJA ou 
#supletivo) e o número total de pessoas ocupadas nessa faixa etária, multiplicada 
#por 100.

ocupados_fundamental_completo_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_FUND) %>%
  arrange(desc(P_FUND))

write_ods(ocupados_fundamental_completo_2010, "ocupados_fundamental_completo_2010.ods")

#Percentual dos ocupados com médio completo    

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas que já 
#concluíram o ensino médio (regular seriado, regular não seriado, EJA ou supletivo)
#e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100. 
#Foram consideradas como já tendo concluído o médio aquelas pessoas que frequentavam 
#a 4ª série desse nível de ensino.

ocupados_medio_completo_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_MED) %>%
  arrange(desc(P_MED))

write_ods(ocupados_medio_completo_2010, "ocupados_medio_completo_2010.ods")

#Percentual dos ocupados com superior completo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e que já 
#concluíram a graduação do ensino superior e o número total de pessoas ocupadas
#nessa faixa etária, multiplicada por 100.

ocupados_superior_completo_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, P_SUPER) %>%
  arrange(desc(P_SUPER))

write_ods(ocupados_superior_completo_2010, "ocupados_superior_completo_2010.ods")

#Percentual dos ocupados sem rendimento

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e sem 
#rendimento do trabalho e o número total de pessoas ocupadas nessa faixa etária, 
#multiplicada por 100.


ocupados_sem_rendimento_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, REN0) %>%
  arrange(desc(REN0))

write_ods(ocupados_sem_rendimento_2010, "ocupados_sem_rendimento_2010.ods")

#Percentual dos ocupados com rendimento de até 1 salário mínimo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 1 salário mínimo de julho de 2010
#e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100.

ganha_ate_1_sm_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, REN1) %>%
  arrange(desc(REN1))

write_ods(ganha_ate_1_sm_2010, "ganha_ate_1_sm_2010.ods")

#Percentual dos ocupados com rendimento de até 2 salários mínimos

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 2 salários mínimos de julho
#de 2010 e o número total de pessoas ocupadas nessa faixa etária, multiplicada por 100.

ganha_ate_2_sm_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, REN2) %>%
  arrange(desc(REN2))

write_ods(ganha_ate_2_sm_2010, "ganha_ate_2_sm_2010.ods")

#Percentual dos ocupados com rendimento de até 3 salários mínimo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 3 salários mínimos de julho 
#de 2010 e o número total de pessoas ocupadas nessa faixa etária, multiplicada 
#por 100.

ganha_ate_3_sm_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, REN3) %>%
  arrange(desc(REN3))

write_ods(ganha_ate_3_sm_2010, "ganha_ate_3_sm_2010.ods")

# Percentual dos ocupados com rendimento de até 5 salários mínimo

#Legenda:
#Razão entre o número de pessoas de 18 anos ou mais de idade ocupadas e com 
#rendimento mensal de todos os trabalhos inferior a 5 salários mínimos de julho
#de 2010 e o número total de pessoas ocupadas nessa faixa etária, multiplicada 
#por 100.

ganha_ate_5_sm_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, REN5) %>%
  arrange(desc(REN5))

write_ods(ganha_ate_5_sm_2010, "ganha_ate_5_sm_2010.ods")

#Rendimento médio dos ocupados

#Legenda:
#Média dos rendimentos de todos os trabalhos das pessoas ocupadas de 18 anos ou mais
#de idade. Valores em reais de agosto de 2010.

rendimento_medio_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, RENOCUP) %>%
  arrange(desc(RENOCUP))

write_ods(rendimento_medio_2010, "rendimento_medio_2010.ods")

#Taxa de atividade das pessoas de 18 anos ou mais de idade

#Legenda:
#Razão entre as pessoas de 18 anos ou mais de idade que eram economicamente 
#ativas, ou seja, que estavam ocupadas ou desocupadas na semana de referência
#do Censo e o total de pessoas nesta faixa etária, multiplicada por 100. 
#Considera-se desocupada a pessoa que, não estando ocupada na semana de referência,
#havia procurado trabalho no mês anterior a essa pesquisa.

taxa_atividade_18_mais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_ATIV18M) %>%
  arrange(desc(T_ATIV18M))

write_ods(taxa_atividade_18_mais_2010, "taxa_atividade_18_mais_2010.ods")                   

#Taxa de desocupação da população de 18 anos ou mais de idade

#Legenda:
#Percentual da população economicamente ativa (PEA) nessa faixa etária que estava 
#desocupada, ou seja, que não estava ocupada na semana anterior à data do Censo mas
#havia procurado trabalho ao longo do mês anterior à data dessa pesquisa.

taxa_desocupacao_18_mais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_DES18M) %>%
  arrange(desc(T_DES18M))

write_ods(taxa_desocupacao_18_mais_2010, "taxa_desocupacao_18_mais_2010.ods")

#Percentual de mulheres de 10 a 17 anos de idade que tiveram filhos

#Legenda:
#Razão entre as mulheres de 10 a 17 anos de idade que tiveram filhos e o total de
#mulheres nesta faixa etária, multiplicada por 100.

mulher_0_a_17_com_filhos_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_M10A17CF) %>%
  arrange(desc(T_M10A17CF))

write_ods(mulher_0_a_17_com_filhos_2010, "mulher_0_a_17_com_filhos_2010.ods")


# Percentual de pessoas de 15 a 24 anos que não estudam, não trabalham e são 
#vulneráveis à pobreza, na população total dessa faixa etária

#Legenda:
#Razão entre as pessoas de 15 a 24 anos que não estudam, não trabalham e são 
#vulneráveis à pobreza e a população total nesta faixa etária, multiplicada por 
#100. Definem-se como vulneráveis à pobreza as pessoas que moram em domicílios 
#com renda per capita inferior a 1/2 salário mínimo de agosto de 2010. São 
#considerados apenas os domicílios particulares permanentes.


nem_estuda_nem_trabalha_vulneraveis_a_pobreza_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_NESTUDA_NTRAB_MMEIO) %>%
  arrange(desc(T_NESTUDA_NTRAB_MMEIO))

write_ods(nem_estuda_nem_trabalha_vulneraveis_a_pobreza_2010,
          "nem_estuda_nem_trabalha_vulneraveis_a_pobreza_2010.ods")

#Percentual de pessoas em domicílios vulneráveis à pobreza e dependentes de idosos

#Legenda:
#Razão entre as pessoas que vivem em domicílios vulneráveis à pobreza
#(com renda per capita inferior a 1/2 salário mínimo de agosto de 2010) e 
#nos quais a maior parte da renda provém de moradores com 65 anos ou mais de idade
#e população total residente em domicílios particulares permanentes, multiplicada 
#por 100.


vulneraveis_a_pobreza_dependentes_idosos_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_RMAXIDOSO) %>%
  arrange(desc(T_RMAXIDOSO))

write_ods(vulneraveis_a_pobreza_dependentes_idosos_2010,
          "vulneraveis_a_pobreza_dependentes_idosos_2010.ods")

# Percentual de pessoas de 15 a 24 anos que não estudam, não trabalham e são
#vulneráveis, na população vulnerável dessa faixa etária.

#Legenda:
#Razão entre as pessoas de 15 a 24 anos que não estudam, não trabalham e são 
#vulneráveis à pobreza e a população vulnerável nessa faixa etária, multiplicado
#por 100. Define-se como vulnerável à pobreza a pessoa que mora em domicílio com 
#renda per capita inferior a 1/2 salário mínimo de agosto de 2010. São considerados
#apenas os domicílios particulares permanentes.

nem_estuda_nem_trabalha_vulneraveis_a_pobreza_15_a_24_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, T_VULNERA_NESTUDA_NTRAB_MMEIO) %>%
  arrange(desc(T_VULNERA_NESTUDA_NTRAB_MMEIO))

write_ods(nem_estuda_nem_trabalha_vulneraveis_a_pobreza_15_a_24_2010,
          "nem_estuda_nem_trabalha_vulneraveis_a_pobreza_15_a_24_2010.ods")

#População economicamente ativa de 18 anos ou mais de idade

#Legenda:
#População economicamente ativa. Corresponde ao número de pessoas nessa faixa etári
#que, na semana de referência do Censo, encontravam-se ocupadas no mercado de 
#trabalho ou que, encontrando-se desocupadas, tinham procurado trabalho no mês 
#anterior à data da pesquisa. 

economicamente_ativas_18_mais_2010 <- renda_udhs_2010 %>%
  select(Cod_ID, NOME_UDH, PEA18M) %>%
  arrange(desc(PEA18M))

write_ods(economicamente_ativas_18_mais_2010, 
          "economicamente_ativas_18_mais_2010.ods")
