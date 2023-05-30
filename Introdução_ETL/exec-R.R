# usar o R como calculadora

binomialSimulacao <-rnbinom(300, mu = 3, size = 10)

poissonSimulacao <-rpois(300,3)

hist(poissonSimulacao)
hist(binomialSimulacao)

binomialSimulacao + poissonSimulacao # soma as distribuições

poissonSimulacao + 100 # soma 100 a cada elemento

poissonSimulacao^2 # elevando ao quadrado

poissonSimulacao * binomialSimulacao # multiplica

round(distNormalSimulacao, 0) # arredonda o vetor para inteiros

ceiling(distNormalSimulacao) # arredonda para cima

floor(distNormalSimulacao) # arredonda para baixo

distNormalSimulacao %% poissonSimulacao # módulo dos vetores

# também podemos usar funções estatísticas no R

# média
mean(poissonSimulacao)
mean(binomialSimulacao)

# mediana
median(poissonSimulacao)
median(binomialSimulacao)

# desvio padrão
sd(poissonSimulacao)
sd(binomialSimulacao)

# variância
var(poissonSimulacao)
var(binomialSimulacao)

# uma aplicação prática -  vamos centralizar a nossa simulação poisson
poissonSimulacaoCentral <- poissonSimulacao - mean(poissonSimulacao)
hist(poissonSimulacao)
hist(poissonSimulacaoCentral)
