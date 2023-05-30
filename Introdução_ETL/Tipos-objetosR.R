# Criando um data frame (juntando diversas informações em um único objeto)

# criando vetor characters (nomes de mulheres)

nomes <- c("Alana", "Marcia", "Paula", "Gaby", "Celma")

# criando vetor numeric (idade das mulheres)

idade <- c(22,28,35,42,53)

# criando vetor logic (possui filhos ou não)

filhos <- c(FALSE, TRUE, TRUE, FALSE, TRUE)

# Meu data frame (é preciso usar uma função)

meu.df <- data.frame(nomes, idade, filhos)

