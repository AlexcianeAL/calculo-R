# outliers

pacman::p_load(data.table, dplyr, plotly)

#carregar dados Unidades de ensino Municipal do Recife

Unidades_Ensino_PCR <- fread('http://dados.recife.pe.gov.br/dataset/4d3a3b39-9ea9-46ed-bf21-a2670de519c1/resource/7c613836-9edd-4c0f-bc72-495008dd29c3/download/info_unidadesensino_07102021.csv')

Unid.Ens_PCR <- Unidades_Ensino_PCR %>% count(bairro, sort = T, name = 'qtd_alunos') %>% mutate(qtd_alunos1= sqrt(qtd_alunos), qtd_alunosLog = log10(qtd_alunos))

## outliers em variáveis
# distância interquartil

plot_ly(y = Unid.Ens_PCR$bairro, type = "box", text = Unid.Ens_PCR$bairro, boxpoints = "all", jitter = 0.3)
boxplot.stats(Unid.Ens_PCR$qtd_alunos)$out
boxplot.stats(Unid.Ens_PCR$qtd_alunos, coef = 2)$out

Unidades_Ensino_PCR.Out <- boxplot.stats(Unid.Ens_PCR$qtd_alunos)$out
Unidades_Ensino_PCR.Index <- which(Unid.Ens_PCR$qtd_alunos %in% c(Unidades_Ensino_PCR.Out))
Unidades_Ensino_PCR.Index

# filtro de Hamper
lower_bound <- median(Unid.Ens_PCR$qtd_alunos) - 3 * mad(Unid.Ens_PCR$qtd_alunos, constant = 1)
upper_bound <- median(Unid.Ens_PCR$qtd_alunos) + 3 * mad(Unid.Ens_PCR$qtd_alunos, constant = 1)
(outlier_ind <- which(Unid.Ens_PCR$qtd_alunos < lower_bound | Unid.Ens_PCR$qtd_alunos > upper_bound))

# teste de Rosner
install.packages ("EnvStats")

library(EnvStats)

Unidades_Ensino_PCRRosner <- rosnerTest(Unid.Ens_PCR $qtd_alunos, k = 10)
Unidades_Ensino_PCRRosner
Unidades_Ensino_PCRRosner$all.stats
