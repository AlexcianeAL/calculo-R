
#criando vetor para testar

vt_testerNumeric <- c("16", "18", "20", "47*")
is.numeric(vt_testerNumeric)
as.numeric(vt_testerNumeric)
as.integer(vt_testerNumeric)
as.character(vt_testerNumeric)


is.na(as.numeric(vt_testerNumeric))

#criando vetor para recuperar fator

vtFactor <- factor(c("e", "f", "g", "e", "f", "h"))
levels(vtFactor)

#criando categoria (criança/adulto)

catg <- c(5,6,7,5,7,6,7,5,5)
recode <- c(criança = 5, adulto = 7)
(catg <- factor(catg, levels = recode, labels = names(recode)))
