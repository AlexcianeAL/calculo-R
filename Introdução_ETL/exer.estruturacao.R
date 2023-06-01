# estruturação

install.packages("data.table")
library(data.table)
install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)

#carregar dados Rotas operacionais ciclo faixa_ PCR (domingos e feriados)

rotas_oper.CF<- fread("http://dados.recife.pe.gov.br/dataset/667cb4cf-fc93-4687-bb8f-431550eeb2db/resource/2d6d1a15-c8dd-4309-861e-700a0c7d5671/download/rotasoperacionais-2023.csv")

#por bairros (vetor)

rotas_oper.bairos<-c("Parnamirim", "Jaqueira", "GraÃ§as", "Espinheiro", "Santo Amaro", "Boa Vista", "Santo AntÃ´nio", "Bairro do Recife", "SÃ£o JosÃ©", "Cabanga", "Pina", "Imbiribeira", "Afogados", "Ilha do Retiro", "Paissandu", "Ilha do Leite", "Santo AntÃ´nio", "Santana", "Boa Viagem", "Encruzilhada", "Casa Amarela")

#filtrar apenas dados do vetor (bairros)

rotas_bairro<-rotas_oper.CF %>%filter(inauguracao%in%rotas_oper.bairos)

#criar matriz

matriz_R.Ext<-rotas_bairro%>% group_by(percurso)%>%mutate(row = row_number()%>%select(extensao)

