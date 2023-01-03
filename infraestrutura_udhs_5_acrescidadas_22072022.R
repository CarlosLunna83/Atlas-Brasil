# Infraestrutura das UDHs acrescidas em 22072022

# Fonte: http://www.atlasbrasil.org.br

library(tidyverse)
library(readxl)
library(janitor)

infraestruturas <- read_excel("Dados UDHs pos 22072022/Dados atlas 5 UDHs acrescidas em 22072022.xlsx")

infraestruturas_5_udhs_acrescidas_22072022 <- clean_names(infraestruturas)

infraestruturas_5_udhs_acrescidas_22072022

####################################################################################################

# Percentual da população urbana com água encanada em 2000

agua_encanada_2000 <- infraestruturas_5_udhs_acrescidas_22072022 %>%
  select(territorialidades, percent_da_populacao_em_domicilios_com_agua_encanada_2000) %>%
  group_by(territorialidades)

agua_encanada_2000

#################################################################################################

# Percentual da população urbana com água encanada em 2010

agua_encanada_2010 <- infraestruturas_5_udhs_acrescidas_22072022 %>%
  select(territorialidades, percent_da_populacao_em_domicilios_com_agua_encanada_2010) %>%
  group_by(territorialidades)

agua_encanada_2010

################################################################################################

# Percentual da população urbana com coleta de lixo em 2000

coleta_lixo_2000 <- infraestruturas_5_udhs_acrescidas_22072022 %>%
  select(territorialidades, percent_de_pessoas_em_domicilios_urbanos_com_coleta_de_lixo_2000) %>%
  group_by(territorialidades)

coleta_lixo_2000

################################################################################################

# Percentual da população urbana com coleta de lixo em 2010

coleta_lixo_2010 <- infraestruturas_5_udhs_acrescidas_22072022 %>%
  select(territorialidades, percent_de_pessoas_em_domicilios_urbanos_com_coleta_de_lixo_2010) %>%
  group_by(territorialidades)

coleta_lixo_2010
#################################################################################################

# Percentual de densidade maior que 2 pessoas por dormitório 2000

mais_que_2_por_dormitorio_2000 <- infraestruturas_5_udhs_acrescidas_22072022 %>%
  select(territorialidades, percent_da_populacao_que_vive_em_domicilios_com_densidade_superior_a_2_pessoas_por_dormitorio_2000) %>%
  group_by(territorialidades)

mais_que_2_por_dormitorio_2000

#################################################################################################

# Percentual de densidade maior que 2 pessoas por dormitório 2010

mais_que_2_por_dormitorio_2010 <- infraestruturas_5_udhs_acrescidas_22072022 %>%
  select(territorialidades, percent_da_populacao_que_vive_em_domicilios_com_densidade_superior_a_2_pessoas_por_dormitorio_2010) %>%
  group_by(territorialidades)

mais_que_2_por_dormitorio_2010

##############################################################################################