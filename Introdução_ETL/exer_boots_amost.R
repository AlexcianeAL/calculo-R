# amostragem e bootstrapping 

# utilizando a função sample

distNormalSimulacao <- rnorm(300) # objeto

sample(distNormalSimulacao, 20, replace = TRUE) # com repetição
sample(distNormalSimulacao, 20, replace = FALSE) # sem repetição

# aplicando o bootstrapping com função replicate

set.seed(70) #fixando a semente - reproduzir os resultados dos geradores de números pseudo-aleatórios
bootDistNormal <- replicate(18, sample(distNormalSimulacao, 20, replace = TRUE)) # replicamos 18x a amostra, criando um bootstrapping

# calculando uma estatística com bootstrapping (18 amostras)

mediabootDistNormal <- replicate(18, mean(sample(distNormalSimulacao, 20, replace = TRUE))) # calcular a média de 18 amostras de 20 casos
mediabootDistNormal2 <- replicate(25, mean(sample(distNormalSimulacao, 20, replace = TRUE)))# calcular a média de 25 amostras de 20 casos
mediabootDistNormal13 <- replicate(40, mean(sample(distNormalSimulacao, 20, replace = TRUE))) # calcular a média de 40 amostras de 20 casos

# Comparando:

mean(mediabootDistNormal)
mean(mediabootDistNormal2)
mean(mediabootDistNormal13)

# partições - com o pacote caret

install.packages('caret, dependencies = T')
library(caret)

# criar primeiramente as partições de Dados
# inserir o tamanho do vetor e o parâmetro de divisão

particaoDistNormal <- createDataPartition(1:length(distNormalSimulacao), p=.7) 
# criando base de treino e teste
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)]
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)]

