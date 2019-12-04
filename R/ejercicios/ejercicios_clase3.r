## -----------------------##
##                        ##
##    CLASE 3 Codigo R    ##
##                        ##
## -----------------------##

# Del codigo "ejemplo1"
co2 <- c(316,316.91, 317.63, 318.46, 319.02, 319.52, 320.09, 321.34, 
322.13, 323.11, 324.6, 325.65, 326.32, 327.52, 329.61, 330.29, 
331.16, 332.18, 333.88, 335.52, 336.89, 338.67, 339.95, 341.09, 
342.75, 344.44, 345.86, 347.14, 348.99, 351.44, 352.94, 354.19, 
355.62, 356.36, 357.1, 358.86, 360.9, 362.58, 363.84, 366.58, 
368.3, 369.47, 371.04, 373.08, 375.61, 377.43)  
years <- seq(from = 1959, length = length(co2))
nyears <- length(years)


# data frames
df.co2 <- data.frame(years, co2)

# matrices
matrix(1:4, ncol=2)
mat.co2 <- matrix(c(years, co2), ncol=2, nrow=length(years))
head(mat.co2, n=3)
mat.co2 <- cbind(years,co2)
head(mat.co2, n=3)

mat.co2.row <- rbind(years,co2)
t(mat.co2.row)
dim(mat.co2)
dim(mat.co2.row)
nrow(mat.co2)
ncol(mat.co2)   

apply(mat.co2,2,mean)
apply(mat.co2.row,1,mean)

# Arrays ("arreglos")
array.co2 <- array(data=c(years,co2), dim=c(nyears,2))
head(array.co2, n=3)
is.array(array.co2)   # por que es un arrays
is.array(mat.co2)     # por que es una matriz
is.array(df.co2)      # por que es un data.frame  

# Los arrays pueden tener cualquier tipo de dimension
array(1:24, dim=c(3,4,2))     # valores de 1 a 24 en 3 filas, 4 columnas y 2 matrices.

# listas
descripcion <- "Concentracion de co2 (ppm)"
lista.co2 <- list(Descri = descripcion, Years = nyears, data = mat.co2)
lista.co2

lista.co2$Years
lista.co2[[2]]

# datos de pacientes
id <- c(31, 62, 50, 99, 53, 75, 54, 58, 4, 74)
age <- c(12, 18, 20, 17, 14, 8, 12, 24, 24, 21)
sex <- c("M", "F", "F", "M", "F", "M", "M", "F", "F", "M")
dat.df <- data.frame(id, age, sex)
head(dat.df, n = 2)


# subconjuntos de una lista
data.lista <- as.list(dat.df)
data.lista
data.lista[[1]]            # extraemos el primer vector de la lista (en este caso, id)
data.lista$id              # es lo mismo que el comando anterior
data.lista[[1]][1]         # Extramos el primer elemento del primer vector (id)
data.lista$id[1]

data.lista[[2]][2]         # Extramos el segundo elemento del segundo vector (age)
data.lista$age[2]

data.lista$id <- matrix(data.lista$id, ncol = 2)  # divido "id" en una matriz ya que las listas
                                                  # no necesitan tener la misma dimension en sus vectores
data.lista
data.lista[[1]][1, 1]
data.lista[[1]][1,]

# Factores en R
estrato <- c("demersal", "demersal", "demersal", "pelagic", "pelagic", "pelagic", "demersal", "pelagic", "pelagic", "demersal")
str(estrato)   # me dice que tipo de variable es

is.factor(estrato)
estrato <- factor(estrato)  # lo declaro factor
is.character(estrato)       # pregunto si es caracter
is.factor(estrato)          # pregunto si es factor

levels(estrato)             # niveles del factor



# Ejercicio clase
A <- matrix(1:4, nrow=2, ncol=2)
A
B <- matrix(5:100, nrow=2, ncol=3)
B

sexo <- c(1,1,2,1,2,2,2,1,1,1)
sexo <- c("femenino", "femenino","masculino", "femenino", "masculino", "masculino", 
          "masculino", "femenino", "femenino", "femenino")
is.factor(sexo)
sexo <- factor(sexo)
is.factor(sexo)

lista <- list(A, B, sexo)
lista

elementoA <- lista[[1]][1,]
