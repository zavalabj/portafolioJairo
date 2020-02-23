# 1. Exploraci´on y visualizaci´on de variables:
#i. Exploren la base de datos, realice los cambios necesarios y convenientes para poder trabajar con ella.

#setwd("C:/Users/regina/Desktop/6to Semestre/Minería de datos/portafolioJairo/parcial1/examen")
#df <- read.csv("Ejercicio 1.csv", sep = ",")


setwd("/home/jose/Escritorio/Semestre 6/Mineria de datos/portafolioJairo/parcial1/examen")
df <- read.csv("Ejercicio 1.csv", sep = ",")

df
df_transposed <- as.data.frame(t(as.matrix(df)))
df_transposed

any(is.na(df_transposed))

df_transposed_omited<-na.omit(df_transposed)

df_transposed_omited
