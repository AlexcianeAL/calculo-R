# Valores ausentes

pacman::p_load(data.table, funModeling, tidyverse) 

#Unidades de ensino Municipal do Recife
#Quantidade de alunos 

qtd_aluno <- c(floor(runif(0, 20, 30)), NA, NA)
mean(qtd_aluno, na.rm = TRUE)

Unidades_Ensino_PCR <- fread('http://dados.recife.pe.gov.br/dataset/4d3a3b39-9ea9-46ed-bf21-a2670de519c1/resource/7c613836-9edd-4c0f-bc72-495008dd29c3/download/info_unidadesensino_07102021.csv')

#Identificando e removendo valores ausentes

status (Unidades_Ensino_PCR) #estrtura dos dados

# Complete-case analysis – listwise deletion

dim(dados_unidades_compl <- na.omit(Unidades_Ensino_PCR) #deixa apenas os casos completo

# Variação de Complete-case analysis – listwise deletion
    
dim(dados_unidades_compl <- Unidades_Ensino_PCR %>% filter(!is.na(gestor)))

## estimando se o NA é MCAR, MAR ou MANR
## Shadow Matrix do livro R in Action

data(sleep, package = "VIM") # importa a base sleep

head(sleep) # observa a base    

x <- as.data.frame(abs(is.na(sleep))) # cria a matrix sombra
head(x) # observa a matriz sombra

y <- x[which(sapply(x, sd) > 0)] # mantém apenas variáveis que possuem NA
cor(y) # observa a correlação entre variáveis

cor(sleep, y, use="pairwise.complete.obs") # busca padrões entre os valores específicos das variáveis e os NA

## Shadow Matrix da base Unidades_Ensino_PCR com adaptações

Unid_ensino <- as.data.frame(abs(is.na(Unidades_Ensino_PCR))) # cria a matriz sombra da base Unidades de ensino Municipal do Recife

Unid_ensino <- Unid_ensino[which(sapply(Unid_ensino, sd) > 0)] # mantém variáveis com NA
round(cor(Unid_ensino), 3) # calcula correlações

# modificação já que não temos uma base numérica
Unidades_Ensino_PCR <- cbind (Unidades_Ensino_PCR, bairro = Unidades_Ensino_PCR$ bairro) # trazemos uma variável de interesse (bairro) de volta pro frame
Unidades_Ensino_PCRbairros <- %>% group_by(bairro) %>% summarise(across(everything(), list(sum)))) # sumarizamos e observamos se os NA se concentram nos bairros

