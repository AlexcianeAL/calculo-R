# Criar Objetos 

peso <- 63 #objeto 1
altura <- 1.65 #objeto 2

#Escrevendo Funções 

imc <- function(peso,altura)
  
{imc <- peso/altura^2 
resimc <- 63/1.65 ^2
return(resimc)}
imc(63,1.65)

str(imc)