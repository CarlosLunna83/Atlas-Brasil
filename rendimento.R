# Pessoas com mais de 10 anos por classe de rendimento

# Fonte: http://www.atlasbrasil.org.br

library(tidyverse)
library(readxl)
library(janitor)

rendimento <- read_xlsx("Dados UDHs pos 22072022/Dados atlas 5 UDHs acrescidas em 22072022.xlsx")

rendimento_10_anos_ou_mais <- clean_names(rendimento)

rendimento_10_anos_ou_mais

#Percentual dos sem rendimento no ano 2000

sem_rendimento_2000 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_sem_rendimento_2000) %>%
  group_by(territorialidades)

sem_rendimento_2000

##################################################################################################

#Percentual dos sem rendimento no ano 2010

sem_rendimento_2010 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_sem_rendimento_2010) %>%
  group_by(territorialidades)

sem_rendimento_2010
##################################################################################################

#Percentual com rendimento de até 1 salário mínimo em 2000


rendimento_ate_1_salario_minimo_2000 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_1_salario_minimo_2000) %>%
  group_by(territorialidades)

rendimento_ate_1_salario_minimo_2000

#################################################################################################

#Percentual com rendimento de até 1 salário mínimo em 2000


rendimento_ate_1_salario_minimo_2010 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_1_salario_minimo_2010) %>%
  group_by(territorialidades)

rendimento_ate_1_salario_minimo_2010

#################################################################################################

#Percentual com rendimento de até 2 salário mínimo em 2000


rendimento_ate_2_salario_minimo_2000 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_2_salarios_minimo_2000) %>%
  group_by(territorialidades)

rendimento_ate_2_salario_minimo_2000

#################################################################################################

#Percentual com rendimento de até 2 salário mínimo em 2010


rendimento_ate_2_salario_minimo_2010 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_2_salarios_minimo_2010) %>%
  group_by(territorialidades)

rendimento_ate_2_salario_minimo_2010

###################################################################################################

#Percentual com rendimento de até 3 salário mínimo em 2000


rendimento_ate_3_salario_minimo_2000 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_3_salarios_minimo_2000) %>%
  group_by(territorialidades)

rendimento_ate_3_salario_minimo_2000
#################################################################################################

#Percentual com rendimento de até 3 salário mínimo em 2010


rendimento_ate_3_salario_minimo_2010 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_3_salarios_minimo_2010) %>%
  group_by(territorialidades)

rendimento_ate_3_salario_minimo_2010

##################################################################################################

#Percentual com rendimento de até 5 salário mínimo em 2000


rendimento_ate_5_salario_minimo_2000 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_5_salarios_minimo_2000) %>%
  group_by(territorialidades)

rendimento_ate_5_salario_minimo_2000

#################################################################################################

#Percentual com rendimento de até 5 salário mínimo em 2010


rendimento_ate_5_salario_minimo_2010 <- rendimento_10_anos_ou_mais %>%
  select(territorialidades, percent_dos_ocupados_com_rendimento_de_ate_5_salarios_minimo_2010) %>%
  group_by(territorialidades)

rendimento_ate_5_salario_minimo_2010
