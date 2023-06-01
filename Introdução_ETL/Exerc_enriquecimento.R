#enriquecimento

library(dplyr)
library(tidyverse)

#trazendo as bases para o R


#base_codbairro
base_codbairro<- read.csv('http://dados.recife.pe.gov.br/dataset/6e7f664c-419b-48af-a39d-2b733285c472/resource/458b0637-1fb8-4767-9af7-8b04b4e804f5/download/logradouro_us.csv')


#base_bairro

base_bairro<- read.csv('http://dados.recife.pe.gov.br/dataset/2676fd74-8b40-4248-a1da-0dc45f176b7b/resource/7c005351-2d14-46cf-b2f0-6622a5553b30/download/ocorrencias2022.csv')

base_codbairro<-left_join(basecod_bairro, base_bairro, by" = c('bairro' = 'codbairro'))

