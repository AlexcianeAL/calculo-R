# Análise exploratória com gráficos

#Carregar pacotes que serão utilizados

install.packages("dplyr", "ggplot2")

pacman::p_load(dplyr, ggplot2)


# Gráfico de Caixas Univariado

ChickWeight%>% ggplot(aes(y = weight)) + geom_boxplot()

# Gráfico de Caixas Multivariado

ChickWeight %>% ggplot(aes(y = weight, x = Diet)) + geom_boxplot()

# Histograma

ChickWeight %>% ggplot(aes(x = weight)) + geom_histogram()

# Densidade

ChickWeight %>% ggplot(aes(x = weight)) + geom_density()

#leitura de base de Receitas PCR (2022)

Receitas_PCR22 <- read.csv2('http://dados.recife.pe.gov.br/dataset/b0653677-2153-4085-829d-3f61540491eb/resource/ab95f23c-9a07-4226-9672-f183fc244393/download/recife-dados-receitas-2022.csv')

# Séries Temporais
Receitas_PCR22%>% group_by(mes) %>% summarise(receita_arrecadada = sum(receita_arrecadada)) %>% ggplot(aes(x = mes, y = receita_arrecadada)) + geom_line()

# Barras
Receitas_PCR22 %>% ggplot(aes(x = mes_nome, y = receita_arrecadada)) + geom_bar(stat = "identity")

# Dispersão
Receitas_PCR22 %>% ggplot(aes(x = mes_nome, y = receita_arrecadada)) + geom_point()
