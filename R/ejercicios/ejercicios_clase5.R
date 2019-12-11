## ---------------------------
##
## CODIGOS GRAFICOS CLASE 5
##
## ---------------------------

# Direcciono al path
# Direcciono donde estan los datos
setwd("C:/Users/alejandro.yanez/Desktop/Curso_IntroR/clase5")

datos <- read.csv("ejemplo5.csv", row.names=1)
head(datos, 3)

class(datos)
str(datos)

# primer grafico
x11()
plot(x = datos$peso, y = datos$altura)
plot(altura~peso, data = datos)   # Si no especificamos el eje, la primera variable es y

attach(datos)  # permite guardar los nombres de las colmunas de la base de datos
plot(x = peso, y = altura)
detach(datos)  # deja de guardar los nombres de la base de dato




# Agregar nombre a ejes x e y
x11()
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", main="GRAFICO 1",
     xlim = c(0,100), ylim = c(0,200))


# Limites a los ejes x e y
plot(altura ~ peso, data = datos, xlim = c(0,100), ylim = c(0,200))

# Cambiar color
plot(altura ~ peso, data = relacion, xlim = c(0,100), ylim = c(0,200), col = 3)
colors()

points.colors <- c("red", "orange","green", "blue", "magenta")
plot(altura ~peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", col = points.colors, pch=20)

# pch cambia el tipo de punto del grafico
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), col = points.colors, pch = 20)


# pch y cex cambian el tamaño del punto del grafico
x11()
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), 
     col = points.colors, pch = 4, cex = 3)

# pch in combination with bg
plot(altura ~ peso, data = relacion, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = point.colors, pch = 20, cex = 3)

# El comando "par" para cambiar parametros graficos
?par
par()   
oldPar <- par()   
par(cex = 1.25)

par(oldPar)   

x11()
par(mfcol=c(2,1)) # sirve para graficas diferentes variavles en una ventana
                  # en este caso 3 files y una columna

plot(altura ~peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", col = points.colors, pch=20)

# pch cambia el tipo de punto del grafico
plot(altura~peso, data = datos, xlab = "Peso (kg)", xlim = c(0,100), ylim = c(0,200), col = points.colors, pch = 20,
     yaxt = 'n')
axis(2, at =  , labels = "")




# Multiples caracteres (formas) para los puntos del grafico
x11()
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 1.25, pch = 19:23)

# locate a point
locator(1)
loc <- locator(1)

# Agregar una legenda al grafico


?legend # existen diferentes formas de poner la legenda en la posición que uno quiera en el grafico


x11()

# legend("topright", legend = rownames(datos), pt.bg = points.colors, pch = 21:25)
# legend("topleft", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n')
# legend("topleft", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25)
# legend("right", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n')
# legend("left", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n')
# legend("center", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n')
# legend("bottomleft", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n')
# legend("bottomright", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n', cex=3)

# cambio los niveles del eje y 
x11()
par(mfcol=c(1,2))
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25)
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25, yaxp = c(0,200,10))

plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25)
legend("topright", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n')

# Usar "axis" para cambiar controles de los ejes
x11()
par(mfcol=c(1,2), mar=c(2,2,2,1))
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25, yaxt = 'n', xaxt = 'n')
legend("topleft", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n', cex=2)
axis(2, at = c(0,30,60,90,120,150, 180), labels = c(0,30,60,"NA","NA","Juan", "Hola")) # eje y
axis(1, at = c(0,25,50,75,100), labels = c("","","","",""))    # eje x
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25, yaxt = 'n', xaxt = 'n')
legend("topleft", legend = rownames(relacion), pt.bg = points.colors, pch = 21:25, bty = 'n', cex=2)
axis(2, at = c(0,30,60,90,120,150, 180), labels = c("","","","","","", "")) # eje y
axis(1, at = c(0,25,50,75,100), labels = c(0,25,50,75,100))    # eje x

# Agrego niveles a los puntos (etiquetas)
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(50,100), ylim = c(150,200), bg = points.colors, cex = 3, pch = 21:25)
text(datos$peso, datos$altura, labels = rownames(datos), pos = 2, cex=2)    # pos da la ubicación de la etiqueta alrededor del punto

# Uso de "adj" para la distancia de la etiqueta al punto
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25)
text(datos$peso, datos$altura, labels = c("fernando", "cristobal", "felipe", "", "", ""), adj = 2, cex=2)    

# Idenfificar manualmente las etiquetas en el grafico
plot(altura ~ peso, data = relacion, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 1.25, pch = 21:25)
identify(relacion$peso, relacion$altura, labels = rownames(relacion), n = 5)    # n= numeros de datos en el grafico
                                                                                

# Agregar una línea al grafico (generalmente la función "plot" proyecta solo puntos)
# Uso de "adj" para la distancia de la etiqueta al punto
plot(altura ~ peso, data = datos, type="l",xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 3, pch = 21:25)
text(datos$peso, datos$altura, labels = rownames(datos), adj = 2, cex=2)    

lines(x = c(5,10,15,20), y = c(25,40,55,75), lwd = 3, lty = 2) # Hacemos coincidir manualmente los puntos x e y
lines(x = c(5,10,25,60), y = c(25,40,55,75), lwd = 1, lty = 1, col=2) # Hacemos coincidir manualmente los puntos x e y

# Agregar puntos al grafico
points(x = c(15,20,25,30), y = c(10,15,20,25), cex = 3, pch = 20, col="red")

# Ploteamos todo
plot(altura ~ peso, data = datos, xlab = "Peso (kg)", ylab = "Altura (cm)", xlim = c(0,100), ylim = c(0,200), bg = points.colors, cex = 1.25, pch = 21:25)
legend("topleft", legend = rownames(datos), pt.bg = points.colors, pch = 21:25, bty = 'n')
text(datos$peso, datos$altura, labels = rownames(datos), pos = 1)    
lines(x = c(5,10,15,20), y = c(25,40,55,75), lwd = 3, lty = 1)
points(x = c(15,20,25,30), y = c(10,15,20,25), cex = 3, pch = 20)




