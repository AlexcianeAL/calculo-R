# Validação

#chamar as bibliotecas:

library(data.table)
library(dplyr)
library(tidyverse)
install.packages("validata")
library(validata)

#carregar dados Rotas operacionais ciclo faixa_ PCR (domingos e feriados)

rotas_oper.CF<- fread("http://dados.recife.pe.gov.br/dataset/667cb4cf-fc93-4687-bb8f-431550eeb2db/resource/2d6d1a15-c8dd-4309-861e-700a0c7d5671/download/rotasoperacionais-2023.csv")
#por bairros (vetor)

rotas_oper.bairos<-c("Parnamirim", "Jaqueira", "GraÃ§as", "Espinheiro", "Santo Amaro", "Boa Vista", "Santo AntÃ´nio", "Bairro do Recife", "SÃ£o JosÃ©", "Cabanga", "Pina", "Imbiribeira", "Afogados", "Ilha do Retiro", "Paissandu", "Ilha do Leite", "Santo AntÃ´nio", "Santana", "Boa Viagem", "Encruzilhada", "Casa Amarela")

#filtrar dados do vetor

rotas_bairro<-rotas_oper.CF %>%filter(inauguracao%in%rotas_oper.bairos)

rotas_bairro<-rotas_bairro%>% select(rota, sentido)

regras_rotas_bairro<-validator(rota>= 0, sentido>= 0)
validacao_rotas_bairro<-confront(rotas_bairro, regras_rotas_bairro)
summary(validacao_rotas_bairro)
plot(validacao_rotas_bairro)
