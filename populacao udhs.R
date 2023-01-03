library(tidyverse)
library(readxl)
library(writexl)
library(readODS)
library(janitor)

populacao_udhs_2010 <- readxl::read_xlsx("Populacao/Populacao de Referencia.xlsx")

populacao_udhs__pfrer_2010 <- populacao_udhs_2010 %>%
  select(Territorialidades, `População total 2010`)

write_xlsx(populacao_udhs__pfrer_2010, "populacao_udhs__pfrer_2010.xlsx")
