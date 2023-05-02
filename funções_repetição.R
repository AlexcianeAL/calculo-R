# funções de repetição - família apply

a <- matrix(1:10, ncol = 2)

# iniciar pela função apply

apply(a, 1, mean) # aplicar a função média nas linhas

apply(a, 2, mean) # aplicar a função média nas colunas

# retorno - objeto do tipo vetor (vt que contém número)

vt <- apply(a, 2, mean)
is (vt)

# utilizando as funções nativas do R para média (linha e coluna)

colMeans(a)
rowMeans(a)

# criando minha própria função(mf), centralizando e utilizando apply

mf<- function(x){(x-mean (x))}
apply(a, 2, mf)

# aplicando lapply - aplicando um função em uma lista

lapply (1:3, function (x) {x*2})
vtl <- lapply (1:3, function (x) {x*2})
is (vtl) # esse objeto é uma lista (o retorno será uma lista)

  
