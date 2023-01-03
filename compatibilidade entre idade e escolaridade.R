# Compatibilidade entre idade e escolaridade

# Percentual de 15 a 17 anos de idade com ensino fundamental completo 2000

atendimento_expectativa_atraso

percentual_15_17_com_ensino_fundamental_completo_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_15_a_17_anos_de_idade_com_ensino_fundamental_completo_2000) %>%
  group_by(territorialidades)

percentual_15_17_com_ensino_fundamental_completo_2000

#####################################################################################################

# Percentual de 15 a 17 anos de idade com ensino fundamental completo 2010

atendimento_expectativa_atraso

percentual_15_17_com_ensino_fundamental_completo_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_15_a_17_anos_de_idade_com_ensino_fundamental_completo_2010) %>%
  group_by(territorialidades)

percentual_15_17_com_ensino_fundamental_completo_2010

###################################################################################################

# Percentual de 18 a 24 anos de idade com ensino médio completo 2000

atendimento_expectativa_atraso

percentual_18_24_com_ensino_medio_completo_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_18_a_24_anos_de_idade_com_ensino_medio_completo_2000) %>%
  group_by(territorialidades)


percentual_18_24_com_ensino_medio_completo_2000

###################################################################################################

# Percentual de 18 a 24 anos de idade com ensino médio completo 2010

atendimento_expectativa_atraso

percentual_18_24_com_ensino_medio_completo_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_18_a_24_anos_de_idade_com_ensino_medio_completo_2010) %>%
  group_by(territorialidades)


percentual_18_24_com_ensino_medio_completo_2010

#################################################################################################

# Percentual acima de 25 anos de idade com ensino medio completo 2000

atendimento_expectativa_atraso

percentual_acima_25_ensino_medio_completo_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_25_anos_ou_mais_de_idade_com_ensino_medio_completo_2000) %>%
  group_by(territorialidades)

percentual_acima_25_ensino_medio_completo_2000

###################################################################################################

# Percentual acima de 25 anos de idade com ensino medio completo 2010

atendimento_expectativa_atraso

percentual_acima_25_ensino_medio_completo_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_25_anos_ou_mais_de_idade_com_ensino_medio_completo_2010) %>%
  group_by(territorialidades)

percentual_acima_25_ensino_medio_completo_2010

#################################################################################################

# Percentual acima de 25 anos de idade com ensino superior completo 2000

atendimento_expectativa_atraso

percentual_acima_25_ensino_superior_completo_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_25_anos_ou_mais_de_idade_com_ensino_superior_completo_2000) %>%
  group_by(territorialidades)

percentual_acima_25_ensino_superior_completo_2000

##################################################################################################

# Percentual acima de 25 anos de idade com ensino superior completo 2010

atendimento_expectativa_atraso

percentual_acima_25_ensino_superior_completo_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_25_anos_ou_mais_de_idade_com_ensino_superior_completo_2010) %>%
  group_by(territorialidades)

percentual_acima_25_ensino_superior_completo_2010

##################################################################################################