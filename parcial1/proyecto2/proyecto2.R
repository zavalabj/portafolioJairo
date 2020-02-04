library(dplyr)
library(ggplot2)
library(corrgram)

# Cargar base de datos del Facilities and Educational Data for Boston Public Schools.
setwd("C:/Users/regina/Desktop/6to Semestre/Minería de datos/portafolioJairo/parcial1/proyecto2")
df <- read.csv("buildbps.csv", sep = ",")
#df2 <- df %>% select(quality, fixed.acidity, volatile.acidity,citric.acid, residual.sugar, chlorides, free.sulfur.dioxide, total.sulfur.dioxide, density, pH, sulphates, alcohol)

#Exploramos la distribucion de los datos de las variables
summary(df$BPS_Year_Founded) #etiqueta
plot(df$BPS_Year_Founded, xaxs="i",  yaxs="i", main ="Número de escuelas fundadas con respecto al año", xlab = "Año de Fundación", ylab= " # Escuelas", col="blue")
#boxplot(df$quality,  main = "Boxplot de calidad")

plot(df$BPS_Open, main ="Hora de entrada", xlab = "Hora", ylab= "# Escuelas", col="blue")


#---------------------------------------------------------------------------------------------
# Variables con valores monetarios que podríamos analizar:
# BPS_Electric_ Bill, BPS_ Therms, BPS_Gas_Bill, BPS_Water_ft_cubic (se pueden incluir más)

# Variables categóricas que podríamos analizar:
# SMMA_FA_Life_Safety, SMMA_FA_Security_Entry, SMMA_FA_Deterioration_Roof, SMMA_Fa_Deterioration_Floor,
# SMMA_FA_Overall_Building_Condition, SMMA_FA_Emergency_Shelter, SMMA_FA_Overall_Community_Building, SMMA_FA_susceptible_climate_change_now,
# SMMA_FA_susceptible_climate_change_2100, SMMA_FA_site_includes_Playgrounds