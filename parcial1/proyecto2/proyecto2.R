library(dplyr)
library(ggplot2)
library(corrgram)
library(tidyr)

# Cargar base de datos del Facilities and Educational Data for Boston Public Schools.
setwd("C:/Users/regina/Desktop/6to Semestre/Minería de datos/portafolioJairo/parcial1/proyecto2")
df <- read.csv("buildbps.csv", sep = ",")

# Obtener nombres de variables que contienen valores NA
vars_to_exclude=df_status(df, print_results = F) %>% filter(p_na > 0) %>% .$variable

# Quitar variables con un alto número de ceros
vars_to_remove = filter(df_status(df), p_zeros > 30)  %>% .$variable

# Conservar todas las columnas excepto aquellas presentes en el vector 'vars_to_remove' y 'vars_to_Exclude'
df2 <- df %>% select(-vars_to_exclude, -vars_to_remove)

#---------------------------------------------------------------------------------------------
#Exploramos la distribucion de los datos de las variables
summary(df$BPS_Year_Founded) #etiqueta
plot(df$BPS_Year_Founded, xaxs="i",  yaxs="i", main ="Número de escuelas fundadas con respecto al año", xlab = "Año de Fundación", ylab= " # Escuelas", col="blue")
#boxplot(df$quality,  main = "Boxplot de calidad")

plot(df$BPS_Open, main ="Hora de entrada", xlab = "Hora", ylab= "# Escuelas", col="blue")



# Variables con valores monetarios que podríamos analizar:
# BPS_Electric_ Bill, BPS_ Therms, BPS_Gas_Bill, BPS_Water_ft_cubic (se pueden incluir más)

# Variables categóricas que podríamos analizar:
# SMMA_FA_Life_Safety, SMMA_FA_Security_Entry, SMMA_FA_Deterioration_Roof, SMMA_Fa_Deterioration_Floor,
# SMMA_FA_Overall_Building_Condition, SMMA_FA_Emergency_Shelter, SMMA_FA_Overall_Community_Building, SMMA_FA_susceptible_climate_change_now,
# SMMA_FA_susceptible_climate_change_2100, SMMA_FA_site_includes_Playgrounds

