# carga incremental
# base de dados original Solicitações chamados 156 e Incremento

Solicitaçõeschamados_PCR <- rbind(Solicitaçõeschamados_PC, Solicitaçõeschamados_PCR[Solicitaçõeschamados_PCRIncremento] )
library(dplyr)
#carregar base de dados originais

Solicitaçõeschamados_PCR <- read.csv2('http://dados.recife.pe.gov.br/dataset/99eea78a-1bd9-4b87-95b8-7e7bae8f64d4/resource/9afa68cf-7fd9-4735-b157-e23da873fef7/download/156_diario.csv')

#comparação usando chave primária
Solicitaçõeschamados_PCR <- Solicitaçõeschamados_PCR [-2,]

#Carrega base de dados para atualização
Solicitaçõeschamados_PCRNew <- read.csv2('http://dados.recife.pe.gov.br/dataset/99eea78a-1bd9-4b87-95b8-7e7bae8f64d4/resource/9afa68cf-7fd9-4735-b157-e23da873fef7/download/156_diario.csv')

#comparando usando chave primária (GRUPOSERVIÇO_CODIGO)

Solicitaçõeschamados_PCRIncremento <-(!Solicitaçõeschamados_PCRNew$GRUPOSERVICO_CODIGO %in% Solicitaçõeschamados_PCR$GRUPOSERVICO_CODIGO)

#Comparando criando chave substituta

#criar chave substituta

Solicitaçõeschamados_PCR$chavesubstituta = apply(Solicitaçõeschamados_PCR [, c(1,4,8)],MARGIN = 1, FUN = function(i) paste(i, collapse = "" ))

Solicitaçõeschamados_PCRNewchavesubstituta = apply(Solicitaçõeschamados_PCRNew [, c(1,4,8)],MARGIN = 1, FUN = function(i) paste(i, collapse = "" ))

#criando a base de comparação

Solicitaçõeschamados_PCRIncremento <- (!Solicitaçõeschamados_PCR$chavesubstituta %in% Solicitaçõeschamados_PCRNew$chavesubstituta)




