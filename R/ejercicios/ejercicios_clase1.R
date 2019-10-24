## -----------------------##
##                        ##
##    CLASE 1 Codigo R    ##
##                        ##
## -----------------------##

# Este es un comentario

# Calculos simples
2 + 2
2^2
2 * (1 + 1)
2 * 1 + 1
exp(0)
log(2.718282)
log(2.718282, base = 10)
log(2.718282               # Comando incompleto
    , base = 10)



# CREACIÓN DE OBJETOS
variable <- log(2.718282)  
variable = log(2.718282)   
variable = log(2.718282, base = 10)
nombre <- "Juan"
nombre <- 'Juan'
( nombre <- "Juan Cavieres" ) 
print(variable)
nombre
variable * 10
ls()               
rm(variable)       
# rm(list = ls())  # Borra todo, así que debemos estar seguros de correr este comando
variable <- log(2.718282)

# TIPOS DE DATOS
mode(variable)       
is.numeric(variable) 
answer <- as.integer(variable)

is.character(variable)
is.character(nombre)
typeof(variable)
typeof(nombre)


# CREACION DE VECTORES

# - Todos los comandos siguientes son equivalentes
c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
1:10
seq(from=1, to=10, by=1)
seq(1, 10, 1)  

# - El siguiente comando no es equivalente          
( x <- 1:3 ) 
rep(x, length = 10)
rep(x, times = 2)
rep(x, each = 2)

# - Operaciones con vectores
log(x)     
x + 1
x * 2
y <- 4:6
x + y
x - y
x / y
x * y




# Introduciendo datos
co2 <- scan()    # Podemos dar manualmente los datos que queramos

# Data Co2 solo como ejemplo

co2 <- c(316,316.91, 317.63, 318.46, 319.02, 319.52, 320.09, 321.34, 
         322.13, 323.11, 324.6, 325.65, 326.32, 327.52, 329.61, 330.29, 
         331.16, 332.18, 333.88, 335.52, 336.89, 338.67, 339.95, 341.09, 
         342.75, 344.44, 345.86, 347.14, 348.99, 351.44, 352.94, 354.19, 
         355.62, 356.36, 357.1, 358.86, 360.9, 362.58, 363.84, 366.58, 
         368.3, 369.47, 371.04, 373.08, 375.61, 377.43)  # ppm 

# Funciones aritmeticas clasicas
min(co2)
max(co2)
mean(co2)
median(co2)
var(co2)
sd(co2)
range(co2)
quantile(co2)

# Determinar el largo del vector con la función "length()"
length(co2)   
nyears <- length(co2)
( years <- seq(from=1959, length=nyears) )



