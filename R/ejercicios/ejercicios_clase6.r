
######################
## Codigo clase 6
##
## ###################

# Operaciones con vectores logicos
nums <- c(12, 9, 8, 14, 7, 16, 3, 2, 9)
any(nums > 10)
all(nums > 10)
which(nums > 10)
nums[which(nums > 10)]
nums[nums > 10]

# Chequeando la duplicidad de observaciones
data <- matrix(rep(c(1, 1, 2, 3), each = 3), ncol =3, byrow = TRUE)
duplicated(data)  # ve la dupplicidad en la fila 2 ya que en la 1 ya estaba ese vector
unique(data)      # me da los vectores unicos de mi matriz o lo que yo tenga especificado

# Testeo de observaciones
y <- rnorm(6)
x <- sample(factor(rep(1:3, each = 2), labels = 1:3))
xy <- data.frame(x,y) 

is.numeric(xy$x)
is.factor(xy$x)
attributes(xy$x)

# Creacion de factores
edad <- c(47, 14, 24, 33, 74, 43, 17, 73, 62, 10, 28, 71, 34, 28, 39)
cut(edad, breaks = 3)
cut(edad, breaks = c(0, 18, 65, Inf), labels = c("Niño", "Adulto", "Anciano"))

# Subcinjunto de datos
x <- data.frame(a = c(5, 9, 12, 15, 17, 11), b = c(8, NA, 12, 10, NA, 15))
x[x$b > 10,]
subset(x, b > 10)
subset(x, b > 10, b)


# Funcion apply
m <- matrix(1:4, ncol=2)
apply(m, 2, mean)
sujetos <- matrix(rnorm(50, mean = 1:5), nrow = 10, byrow = TRUE)

apply(sujetos, 2, mean)
apply(sujetos, 1, mean)

observaciones <- data.frame(pez = rep(1:5, 5), talla = rnorm(25, mean = 1:5))
tapply(observaciones$talla, observaciones$pez, mean)

# Orden de datos
cards <- sample(1:10)
sort(cards)    # ordena los datos
order(cards)   # Ordena segun el valor de datos del vector
cards[order(cards)]  
order.xy <- order(xy$x, xy$y)

xy[order.xy,]




