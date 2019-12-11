## -----------------------##
##                        ##
##    CLASE 4 Codigo R    ##
##                        ##
## -----------------------##
# Borro objetos creados
rm(list=ls())

# Direcciono donde estan los datos
setwd("C:/Users/joaquin.cavieres/Desktop/Curso_IntroR/clase4") # Aquí deben colocar la dirección
                                                               # de la carpeta en donde se encuentran los archivos (.txt o .csv)

# Leo los datos
read.table("data0.dat", header = TRUE)  # me dice que no existe por que el formato es .dat

read.table("data0.txt", header = TRUE)  # Ahora debería leerlo.

read.table("data0.txt", col.names = c("id", "age", "sex")) # le agregamos los nombres a las columnas

read.csv("data2.csv", header = TRUE) # Este es un archivo .csv que es muy parecido a un archivo de excel
                                     # pero pesa bastante menos.

data2 <- read.csv("data2.csv", header = TRUE)
ncol(data2) # me dice que tiene solo una columna y es por que todos los datos estan almacenados ahí.


# Entonces podemos leer de otra forma el archivo.
data2 <- read.csv("data2.csv", header = TRUE, sep = " ")
head(data2)
ncol(data2)

# Estos mismos comandos para otro tipo de lecturas
read.csv("data2.csv", sep = "/", header = TRUE)
read.csv("data2.csv", header = TRUE, sep = ",")



# PASAMOS A LECTURA 5


