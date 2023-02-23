# Conteúdo: Taxa da analfabetismo UDHs Cabo e Ipojuca comparadas com municípios da RMR, Pernambuco e Brasil
# Fonte: Dados do Censo 2010, extraídos do Atlas Brasil http://www.atlasbrasil.org.br
# Autor: Carlos Lunna 

library(tidyverse)
library(readxl)
library(janitor)

taxa_analfabetismo_udhs_cabo_ipojuca <- read_xlsx("dados educacao cabo ipojuca comparado com RMR.xlsx")

taxa_analfabetismo_udhs_cabo_ipojuca <- clean_names(taxa_analfabetismo_udhs_cabo_ipojuca)


taxa_analfabetismo_udhs_cabo_ipojuca
#################################################################################################

#taxa de analfabetismo de pessoas com 15 anos ou mais de idade em 2010 nas UDHs de Cabo e Ipojuca:

taxa_analfabetismo__cabo_ipojuca_15_mais_2010 <- taxa_analfabetismo_udhs_cabo_ipojuca %>%
  select(territorialidades, taxa_de_analfabetismo_15_anos_ou_mais_de_idade_2010) %>%
  group_by(territorialidades) %>%
  arrange(desc(taxa_de_analfabetismo_15_anos_ou_mais_de_idade_2010))

taxa_analfabetismo__cabo_ipojuca_15_mais_2010

#################################################################################################

#taxa de analfabetismo de pessoas com 18 anos ou mais de idade em 2010 nas UDHs de Cabo e Ipojuca:

taxa_analfabetismo_cabo_ipojuca_18_mais_2010 <- taxa_analfabetismo_udhs_cabo_ipojuca %>%
  select(territorialidades, taxa_de_analfabetismo_18_anos_ou_mais_de_idade_2010) %>%
  group_by(territorialidades) %>%
  arrange(desc(taxa_de_analfabetismo_18_anos_ou_mais_de_idade_2010))

taxa_analfabetismo_cabo_ipojuca_18_mais_2010

###################################################################################################


#taxa de analfabetismo de pessoas com 25 anos ou mais de idade em 2010 nas UDHs do Cabo e Ipojuca:

taxa_analfabetismo_cabo_ipojuca_25_mais_2010 <- taxa_analfabetismo_udhs_cabo_ipojuca %>%
  select(territorialidades, taxa_de_analfabetismo_25_anos_ou_mais_de_idade_2010) %>%
  group_by(territorialidades) %>%
  arrange(desc(taxa_de_analfabetismo_25_anos_ou_mais_de_idade_2010))

taxa_analfabetismo_cabo_ipojuca_25_mais_2000


