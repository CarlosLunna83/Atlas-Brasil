library(tidyverse)
library(readxl)

taxa_analfabetismo_5_udhs <- read_xlsx("Dados UDHs pos 22072022/Dados atlas 5 UDHs acrescidas em 22072022.xlsx")

#taxa de analfabetismo de pessoas com 15 anos ou mais de idade em 2000 nas 5 UDHs:

taxa_analfabetismo_15_mais_2000 <- taxa_analfabetismo_5_udhs %>%
  select(Territorialidades, `Taxa de analfabetismo - 15 anos ou mais de idade 2000`) %>%
  group_by(Territorialidades)

taxa_analfabetismo_15_mais_2000

#################################################################################################

#taxa de analfabetismo de pessoas com 15 anos ou mais de idade em 2010 nas 5 UDHs:

taxa_analfabetismo_15_mais_2010 <- taxa_analfabetismo_5_udhs %>%
  select(Territorialidades, `Taxa de analfabetismo - 15 anos ou mais de idade 2010`) %>%
  group_by(Territorialidades)

taxa_analfabetismo_15_mais_2010

###################################################################################################

#taxa de analfabetismo de pessoas com 18 anos ou mais de idade em 2000 nas 5 UDHs:

taxa_analfabetismo_18_mais_2000 <- taxa_analfabetismo_5_udhs %>%
  select(Territorialidades, `Taxa de analfabetismo - 18 anos ou mais de idade 2000`) %>%
  group_by(Territorialidades)

taxa_analfabetismo_18_mais_2000

#################################################################################################

#taxa de analfabetismo de pessoas com 18 anos ou mais de idade em 2010 nas 5 UDHs:

taxa_analfabetismo_18_mais_2010 <- taxa_analfabetismo_5_udhs %>%
  select(Territorialidades, `Taxa de analfabetismo - 18 anos ou mais de idade 2010`) %>%
  group_by(Territorialidades)

taxa_analfabetismo_18_mais_2010

###################################################################################################

###################################################################################################

#taxa de analfabetismo de pessoas com 25 anos ou mais de idade em 2000 nas 5 UDHs:

taxa_analfabetismo_25_mais_2000 <- taxa_analfabetismo_5_udhs %>%
  select(Territorialidades, `Taxa de analfabetismo - 25 anos ou mais de idade 2000`) %>%
  group_by(Territorialidades)

taxa_analfabetismo_25_mais_2000

#################################################################################################

#taxa de analfabetismo de pessoas com 25 anos ou mais de idade em 2010 nas 5 UDHs:

taxa_analfabetismo_25_mais_2010 <- taxa_analfabetismo_5_udhs %>%
  select(Territorialidades, `Taxa de analfabetismo - 25 anos ou mais de idade 2010`) %>%
  group_by(Territorialidades)

taxa_analfabetismo_25_mais_2010
