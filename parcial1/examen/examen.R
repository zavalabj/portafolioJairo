# 1. Exploraci´on y visualizaci´on de variables:
#i. Exploren la base de datos, realice los cambios necesarios y convenientes para poder trabajar con ella.

#setwd("C:/Users/regina/Desktop/6to Semestre/Minería de datos/portafolioJairo/parcial1/examen")
#df <- read.csv("Ejercicio 1.csv", sep = ",")


setwd("/home/jose/Escritorio/Semestre 6/Mineria de datos/portafolioJairo/parcial1/examen")
df <- read.csv("Ejercicio 1.csv", sep = ",")

#Trasponer las columnas del df para que las características de cada observacion estén ordenadas por columnas 
df_transposed <- as.data.frame(t(as.matrix(df)))

# Eliminar observaciones con valores NA
df_transposed_omitted<-na.omit(df_transposed)

# Colocar nombre a las columnas y eliminar la primera fila 
names(df_transposed_omitted) <- c("Peso","Estatura","Edad","Complexión","Papás_separados","Cantidad_hermanos",
                                  "Trabaja", "Horas_trab_dia", "Horas_trab_mes", "Salario_mes")

updated_data <- df_transposed_omitted[-c(1),] 

library(janitor)


frecuency_as_df<-as.data.frame(tabyl(updated_data$Peso, sort = TRUE))

names(frecuency_as_df) <- c("Peso","Frecuencia","Porcentaje")
final_weight_frecuency<-frecuency_as_df[-c(51),]



frecuency_as_df<-as.data.frame(tabyl(updated_data$Estatura, sort = TRUE))

names(frecuency_as_df) <- c("Estatura","Frecuencia","Porcentaje")
final_height_frecuency<-frecuency_as_df[-c(51),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Edad, sort = TRUE))

names(frecuency_as_df) <- c("Edad","Frecuencia","Porcentaje")
final_age_frecuency<-frecuency_as_df[-c(51),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Complexión, sort = TRUE))

names(frecuency_as_df) <- c("Complexion","Frecuencia","Porcentaje")
final_constitution_frecuency<-frecuency_as_df[-c(1),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Papás_separados, sort = TRUE))

names(frecuency_as_df) <- c("Papás_separados","Frecuencia","Porcentaje")
final_separated_parents_frecuency<-frecuency_as_df[-c(2),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Cantidad_hermanos, sort = TRUE))

names(frecuency_as_df) <- c("Cantidad_hermanos","Frecuencia","Porcentaje")
final_number_of_brothers_frecuency<-frecuency_as_df[-c(7),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Trabaja, sort = TRUE))

names(frecuency_as_df) <- c("Trabaja","Frecuencia","Porcentaje")
final_iswork_frecuency<-frecuency_as_df[-c(3),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Horas_trab_dia, sort = TRUE))

names(frecuency_as_df) <- c("Horas_trabajo x dia","Frecuencia","Porcentaje")
final_worktime_per_day_frecuency<-frecuency_as_df[-c(8),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Horas_trab_mes, sort = TRUE))

names(frecuency_as_df) <- c("Horas_trabajo x mes","Frecuencia","Porcentaje")
final_worktime_per_month_frecuency<-frecuency_as_df[-c(10),]


frecuency_as_df<-as.data.frame(tabyl(updated_data$Salario_mes, sort = TRUE))

names(frecuency_as_df) <- c("Salario x mes","Frecuencia","Porcentaje")
final_salary_per_month_frecuency<-frecuency_as_df[-c(24),]
