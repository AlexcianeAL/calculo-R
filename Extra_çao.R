#Extrair, carregar arquivo textos

#extração tipo read.csv

#licenciamento sanitário PCR

Lic_san_PCR <-read.csv("http://dados.recife.pe.gov.br/dataset/3a4869e7-7021-485e-97fb-f25cd6422ea6/resource/6bb70e99-b7b9-4b2a-a213-adc757e3337a/download/licenciamento_sanitario.csv", header = FALSE, 
                         col.names = c('areatotalconstruida',	'assunto',	'bairro',	'categoria_empreendimento',	'cnpj',	'data_conclusao',	'data_emissao_licenca',	'data_entrada',
                                       'data_pagamento',	'data_validade_licenca',	'dsqfl',	'empreendimento_de_impacto',	'endereco_empreendimento',	'inscricao_mercantil',	'licenciamento_ambiental',	
                                       'licenciamento_sanitario',	'licenciamento_urbanistico',	'razao_social',	'razao_social_mercantil',	'num_licenca',	'num_processo',	'porte_empreendimento',	'potencial_empreendimento',	
                                       'processo_automatizado',	'situacao_processo',	'tipo_mercantil',	'tipo_processo',	'tipo_proc_licenciamento',	'uso_imovel',	'valor_taxa',	'valor_pago',	'latitude',	'longitude')
)


