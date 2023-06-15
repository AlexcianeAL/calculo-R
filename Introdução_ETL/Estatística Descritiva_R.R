# Estatística Descritiva com R

## Tabela de frequência absoluta da variável Species da base Usarrests

table (USArrests)

prop.table(table(USArrests))

#média da variável Assault da base USArrests

mean(USArrests$Assault)

## Mediana da variável Assault da base USArrests

median(USArrests$Assault)

## Separatrizes da variável Assault da base USArrests

quantile(USArrests$Assault, probs=0.75)
quantile(USArrests$Assault, probs=0.10)
quantile(USArrests$Assault, probs=0.95)
boxplot(USArrests$Assault) # boxplot - gráfico que resume as sepatrizes

## Desvio-padrão da variável Assault da base USArrests
sd(USArrests$Assault)
plot(USArrests$Assault)

## Sumário descritivo básico das variáveis
summary(USArrests)

## Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(USArrests[ , c(1:4)])
hist(USArrests$Assault) # histograma - gráfico que permite conhecer a curva dos dados
