# imputação de valores em outliers ou missing

pacman::p_load(data.table, Hmisc, VIM) # carrega pacotes


## imputação numérica
# preparação da base, colocando NA aleatórios


ChickWeightDT <- ChickWeight %>% setDT()  #copiar base chickweight, usando a data.table

(ChickWeightNASeed <- round(runif(10, 1, 50))) # criamos 15 valores aleatórios

(ChickWeightDT$ weight [ChickWeightNASeed] <- NA) # imputamos NA nos valores aleatórios

# tendência central
ChickWeightDT$weight <- impute(ChickWeightDT$ weight , fun = mean) # média
ChickWeightDT$weight <- impute(ChickWeightDT$ weight, fun = median) # mediana

is.imputed(ChickWeightDT$weight) # teste se o valor foi imputado
table(is.imputed(ChickWeightDT$weight)) # tabela de imputação por sim / não


# predição
ChickWeightDT$weight[ChickWeightNASeed] <- NA # recolocamos os NA

regChickWeight <- lm(weight ~ ., data = ChickWeightDT) # criamos a regressão

ChickWeightNAIndex <- is.na(ChickWeightDT$weight) # localizamos os NA
ChickWeightDT$ weight[ChickWeightNAIndex] <- predict(regChickWeight, newdata = ChickWeightDT[ChickWeightNAIndex, ]) # imputamos os valores preditos

## Hot deck
# imputação aleatória
ChickWeightDT$ weight [ChickWeightNASeed] <- NA # recolocamos os NA

(ChickWeightDT$ weight <- impute(ChickWeightDT$ weight, "random")) # fazemos a imputação aleatória

# imputação por instâncias /semelhança

ChickWeightDT$ weight[ChickWeightNASeed] <- NA # recolocamos os NA
ChickWeightDT2 <- kNN(ChickWeightDT)
