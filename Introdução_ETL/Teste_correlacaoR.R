# Teste de hipótese

#Carregar pacotes que serão utilizados

pacman::p_load(data.table)

# LEITURA PARA TESTE DE CORRELAÇÃO #
#Perfil dos docentes - 2020- Censo 2020 Educação PCR
Censo_2020EduPCR <- fread ("http://dados.recife.pe.gov.br/dataset/2015a954-4f3a-4ff2-84a1-f915feffd9ac/resource/26a11b03-b973-4042-9b08-bf4f7168e13a/download/docentes.csv", dec = ',')

cor.test(Censo_2020EduPCR$TP_SEXO, Censo_2020EduPCR$TP_COR_RACA)


# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05

# LEITURA PARA TESTE DE FREQUÊNCIAS # 

#Perfil dos Beneficiários do PROUNE 2020
BenefProuni_20<- fread("https://dadosabertos.mec.gov.br/images/conteudo/prouni/2020/ProuniRelatorioDadosAbertos2020.csv")

chisq.test(BenefProuni_20$NOME_CURSO_BOLSA, BenefProuni_20$RACA_BENEFICIARIO)

           
# H0: variáveis são independentes / não há associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05