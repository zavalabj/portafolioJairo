library(dplyr)
library(ggplot2)
library(corrgram)
library(tidyr)


#---------------------------------------------------------------------------------------------
# Trabajando con el csv limpio

# Cargar base de datos del Facilities and Educational Data for Boston Public Schools.
setwd("C:/Users/regina/Desktop/6to Semestre/Minería de datos/portafolioJairo/parcial1/proyecto2")
df <- read.csv("Buildbps limpio.csv", sep = ",")

# Remover formato moneda a columnas

df$BPS_Electric_Bill = as.numeric(gsub("[\\$,]", "", df$BPS_Electric_Bill))
df$BPS_Water_Bill= as.numeric(gsub("[\\$,]", "", df$BPS_Water_Bill))
df$BPS_Gas_Bill = as.numeric(gsub("[\\$,]", "", df$BPS_Gas_Bill))
df$BPS_Total_Energy_Cost = as.numeric(gsub("[\\$,]", "", df$BPS_Total_Energy_Cost))

#Exploramos la distribucion de los datos de las variables

summary(df$BPS_Electric_Bill)
hist(df$BPS_Electric_Bill)

summary(df$BPS_Water_Bill)
hist(df$BPS_Water_Bill)

summary(df$BPS_Gas_Bill)
hist(df$BPS_Gas_Bill)

summary(df$BPS_Total_Energy_Cost)
hist(df$BPS_Total_Energy_Cost)

summary(df$BPS_Year_Founded) 
plot(df$BPS_Year_Founded, xaxs="i",  yaxs="i", main ="Número de escuelas fundadas con respecto al año", xlab = "Año de Fundación", ylab= " # Escuelas", col="blue")


# --------------------------------------------------------------------------------------------------

# Variables con valores monetarios que podríamos analizar:
# BPS_Electric_ Bill, BPS_ Therms, BPS_Gas_Bill, BPS_Water_ft_cubic (se pueden incluir más)

# Variables categóricas que podríamos analizar:
# SMMA_FA_Life_Safety, SMMA_FA_Security_Entry, SMMA_FA_Deterioration_Roof, SMMA_Fa_Deterioration_Floor,
# SMMA_FA_Overall_Building_Condition, SMMA_FA_Emergency_Shelter, SMMA_FA_Overall_Community_Building, SMMA_FA_susceptible_climate_change_now,
# SMMA_FA_susceptible_climate_change_2100, SMMA_FA_site_includes_Playgrounds

#--------------------------------------------------------------------------------------------------

# Cargar base de datos del Facilities and Educational Data for Boston Public Schools.
setwd("C:/Users/regina/Desktop/6to Semestre/Minería de datos/portafolioJairo/parcial1/proyecto2")
df <- read.csv("buildbps.csv", sep = ",")
datos <- df %>% select(BPS_School_Name, BPS_Year_Founded, BPS_Year_Built, MSBA_Year_Reno, BPS_Address, SMMA_latitude, SMMA_longitude, SMMA_Typology, BPS_Property_Status, BPS_Total_GSF, SMMA_Site_SF, DOE_Total, GSF...Student.Value, BPS_KWH, BPS_Electric_Bill, BPS_Therms, BPS_Gas_Bill, BPS_Water_Bill, BPS_Total_Energy_Cost, Climate_Priority, SMMA_FA_Status, SMMA_FA_School_Enrollment, SMMA_FA_Enrollment_Building, SMMA_FA_Major_Investments, 
                     SMMA_FA_Life_Safety, SMMA_FA_Building_suitability_school, SMMA_FA_susceptible_climate_change_now, SMMA_FA_susceptible_climate_change_2100, SMMA_FA_Electrical_Service, SMMA_FA_Security_Entry, SMMA_FA_Deterioration_Walls_Columns, SMMA_FA_Deterioration_Facade, SMMA_FA_Overall_Building_Condition, SMMA_FA_Emergency_Shelter, SMMA_FA_Community_Use_spaces, SMMA_FA_Neighborhood_Streets, SMMA_FA_Parking_Quality, SMMA_FA_DropOff_PickUp, 
                     SMMA_FA_Walkways_Curbs_Sidewalks, SMMA_FA_MAABADA_Accessibility, SMMA_FA_Play_Areas, SMMA_FA_Walkable)

# Distribución de estudiantes según el nivel de estudios
high <- filter(datos, SMMA_Typology == "High School")
special <- filter(datos, SMMA_Typology == "Special")
elementary <- filter(datos, SMMA_Typology == "Elementary School")
early <- filter(datos, SMMA_Typology == "Early Learning")
k8 <- filter(datos, SMMA_Typology == "K-8")
middle <- filter(datos, SMMA_Typology == "Middle School")

# Cantidad de alumnos matrículados dependiendo en nivel de estudios
cantidad_estudiantes <- c(sum(high$DOE_Total), sum(middle$DOE_Total), sum(special$DOE_Total),
                          sum(k8$DOE_Total), sum(elementary$DOE_Total), sum(early$DOE_Total))

matriculados <- data.frame(Grade_Typology=c("High School", "Middle School", "Special", "K-8", "Elementary School", "Early Learning"), Amount=cantidad_estudiantes)
ggplot(matriculados, aes(x=Grade_Typology, y=Amount)) + geom_bar(stat = "identity") + coord_flip() + labs(title="Student Distribution by Grade Typology")+
geom_text(aes(y=Amount, label=cantidad_estudiantes), vjust=1.5, color="white", size=3.5, hjust="right")
