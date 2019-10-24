## -----------------------##
##                        ##
##    CLASE 2 Codigo R    ##
##                        ##
## -----------------------##

# Subconjunto de vectores
x <- c(3, 4, 2, 2, 10, 7)
x[1]
x[3]
x[1:5]
x[c(2, 5)]


# Operadores boleanos
x <- 3
x == 3 & x < 10
x < -1
x > 0 & x < 10

x <- 1:5
x == 3
x < 10
x > 2 & x <= 4

# Operaciones lógicas
dia    <- c("Lunes","Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo")
lluvia <- c(rep("Si", 6), "No")
nieve  <- c(rep("No", 3), "Si", rep("No", 3))

lluvia == "Si"
lluvia != "No"   # Signo exclamación significa la negación del comando
nieve == "Si"

sum(lluvia == "Si")

as.numeric(rain == "Yes")

dia[lluvia == "Si"]
dia[nieve  == "Si"]
dia[lluvia == "Si" & nieve == "Si"]
dia[lluvia == "Si" | nieve == "Si"]


lluvia == "Si" || nieve == "Si"
lluvia == "Si" && nieve == "Si"
lluvia[4:7] == "Si" && nieve[4:7] == "Si"

which(lluvia == "Si")
any(lluvia == "Si")
all(lluvia == "Si")

# Ejercicio en clase

y <- c(3, 2, 15, -1, 22, 1, 9, 10, 17, 5)


# De ejercicio ejemplo1
co2 <- c(316,316.91, 317.63, 318.46, 319.02, 319.52, 320.09, 321.34, 
322.13, 323.11, 324.6, 325.65, 326.32, 327.52, 329.61, 330.29, 
331.16, 332.18, 333.88, 335.52, 336.89, 338.67, 339.95, 341.09, 
342.75, 344.44, 345.86, 347.14, 348.99, 351.44, 352.94, 354.19, 
355.62, 356.36, 357.1, 358.86, 360.9, 362.58, 363.84, 366.58, 
368.3, 369.47, 371.04, 373.08, 375.61, 377.43)  

co2

years <- seq(from = 1959, length = length(co2))


# data frames
co2Data <- data.frame(years, co2)
head(co2Data)
names(co2Data)



names(co2Data) <- c("Años", "CO2")
head(co2Data)
#co2Data <- data.frame(years, co2)
co2Data <- data.frame(Year = Años, co2 = co2) # Nombres alternativos que yo quiera
head(co2Data)

Year
ls()

co2Data$Años[1]
co2Data$CO2

co2Data[1:4,]


# Data de ejemplo
indice <- c(2, 3, 5, 7, 8, 9, 15, 21, 23, 26)
peso <- c(14.8, 21, 19.7, 23.2, 16, 16.1, 20, 29.3, 17.8, 21.2)
condicion <- c("good", "fair", "fair", "poor", "fair", "good", "good", "fair", "fair", "poor")

# good = bueno, fair = razonable, poor = pobre

exampleData <- data.frame(indice, peso, condicion)
head(exampleData) # esta linea tambien pued escribirse como:
head(exampleData, 3) 



# Subconjunto de datos (matrices, data frames, listas)
exampleData$peso
(peso <- rep(20, 10)) # si yo asigno nuevos valores a "peso", este no cambia en el data.frame
exampleData$peso

exampleData[, 2]
exampleData[, -1]

exampleData[1,]
exampleData[c(1, 4),]
exampleData[1, 2]
exampleData$peso[1]

exampleData[, 2:3]
exampleData[c("indice", "condicion")]

exampleData[c(4, 8),]
exampleData[exampleData$peso > 22,]
exampleData[exampleData$peso < 20 & exampleData$condicion == "fair",]

exampleData[exampleData$peso < 20 & exampleData$condicion == "fair",]
exampleData[exampleData$peso < 15 | exampleData$condicion > 25,]

# Dimension de los datos, vectores, listas, etc.
length(exampleData)
dim(exampleData)
nrow(exampleData)
ncol(exampleData)

# 
exampleData[, 2, drop = FALSE]      # todas las filas pero selecciono la columna 2
dim(exampleData[, 2, drop = FALSE]) # dimension de las filas y columnas (solo tomando la columna 2)
dim(exampleData[, 2])               # Por default, si no espeficido FALSE me asume TRUE


# Ejercicio casa
# data.frame pacientes
pacientes <- data.frame(id = c(31, 62, 50, 99, 53, 75, 54, 58, 4, 74), 
					   edad = c(12, 18, 20, 17, 14, 8, 12, 24, 24, 21), 
					   sexo = c("M", "F", "F", "M", "F", "M", "M", "F", "F", "M") )
head(pacientes, n = 2)




# Valores perdidos (NA)
capturas <- c(20, 35, 14, NA, 53, 22, 45)
mean(capturas)
mean(capturas, na.rm = TRUE)

na.omit(capturas)
capturas[!is.na(capturas)]





