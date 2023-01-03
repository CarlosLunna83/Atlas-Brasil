# Atendimento escolar, expectativa de anos de estudo e atraso escolar 2000 e 2010

library(tidyverse)
library(readxl)
library(janitor)

?janitor

atendimento_expectativa_atraso <- read_xlsx("Dados UDHs pos 22072022/Dados atlas 5 UDHs acrescidas em 22072022.xlsx")

# Converti o título das colunas com a função clean names do pacote janitor:

atendimento_expectativa_atraso <- clean_names(atendimento_expectativa_atraso)

atendimento_expectativa_atraso

####################################################################################################

#atendimento escolar dos 6 aos 17 anos na escola em 2000:

taxa_atendimento_escolar_6_aos_17_anos_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_6_a_17_anos_de_idade_na_escola_2000) %>%
  group_by(territorialidades)

taxa_atendimento_escolar_6_aos_17_anos_2000

##################################################################################################

#atendimento escolar dos 6 aos 17 anos na escola em 2010:

taxa_atendimento_escolar_6_aos_17_anos_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_6_a_17_anos_de_idade_na_escola_2010) %>%
  group_by(territorialidades)

taxa_atendimento_escolar_6_aos_17_anos_2010

#################################################################################################

# expectativa de anos de estudo aos 18 anos em 2000:

expectativa_anos_de_estudo_aos_18_anos_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, expectativa_de_anos_de_estudo_aos_18_anos_de_idade_2000) %>%
  group_by(territorialidades)

expectativa_anos_de_estudo_aos_18_anos_2000

##################################################################################################

# expectativa de anos de estudo aos 18 anos em 2010:

expectativa_anos_de_estudo_aos_18_anos_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, expectativa_de_anos_de_estudo_aos_18_anos_de_idade_2010) %>%
  group_by(territorialidades)

expectativa_anos_de_estudo_aos_18_anos_2010

#################################################################################################

# percentual com 2 ou mais anos de atraso no ensino básico entre os 6 e os 14 anos na relação
# idade-série em 2000:

atraso_2_anos_ou_mais_ensino_basico_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_6_a_17_anos_no_ensino_basico_com_2_anos_ou_mais_de_atraso_idade_serie_2000) %>%
  group_by(territorialidades)

atraso_2_anos_ou_mais_ensino_basico_2000

#################################################################################################

# percentual com 2 ou mais anos de atraso no ensino básico entre os 6 e os 14 anos na relação
# idade-série em 2010:

atraso_2_anos_ou_mais_ensino_basico_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_6_a_17_anos_no_ensino_basico_com_2_anos_ou_mais_de_atraso_idade_serie_2010) %>%
  group_by(territorialidades)

atraso_2_anos_ou_mais_ensino_basico_2010

##################################################################################################

# percentual com 2 ou mais anos de atraso no ensino fundamental entre os 6 e os 14 anos na relação
# idade-série em 2000:

atraso_2_anos_ou_mais_ensino_fundamental_2000 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_6_a_14_anos_no_ensino_fundamental_com_2_anos_ou_mais_de_atraso_idade_serie_2000) %>%
  group_by(territorialidades)

atraso_2_anos_ou_mais_ensino_fundamental_2000

###################################################################################################

# percentual com 2 ou mais anos de atraso no ensino fundamental entre os 6 e os 14 anos na relação
# idade-série em 2010:

# percentual com 2 ou mais anos de atraso no ensino fundamental entre os 6 e os 14 anos na relação
# idade-série em 2000:

atraso_2_anos_ou_mais_ensino_fundamental_2010 <- atendimento_expectativa_atraso %>%
  select(territorialidades, percent_de_6_a_14_anos_no_ensino_fundamental_com_2_anos_ou_mais_de_atraso_idade_serie_2010) %>%
  group_by(territorialidades)

atraso_2_anos_ou_mais_ensino_fundamental_2010

##################################################################################################