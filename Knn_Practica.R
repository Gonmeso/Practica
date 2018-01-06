setwd("D:/Mis Documentos/uni/UOC/Minería de datos/Practica")
#Llamamos al script que lee los ficheros y les pone las cabeceras
source('addHeader.R', encoding = 'UTF-8')
library(ggplot2)

str(producto)
summary(producto)

ggplot(producto, aes(x = Coste, y = PrecioVenta))+
  geom_point()+
  theme_bw()

prod_km <- producto[, c("CodProducto", "PrecioVenta", "Coste")]
prod_km$Profit <- prod_km$PrecioVenta - prod_km$Coste
head(prod_km)
summary(prod_km)

head(cabecera)
head(lineas)
prod_km$CodProducto <- as.character(prod_km$CodProducto)
lineas$CodProducto <- as.character(lineas$CodProducto)

lineas$CodProducto <-  gsub(pattern = ' ', x = lineas$CodProducto, replacement = '')
ventasProd <- merge(prod_km, lineas, by ='CodProducto')

head(ventasProd)

ventasProd$VentaTotal <- as.integer(ventasProd$Cantidad) * ventasProd$PrecioVenta.x
ventasProd$CosteTotal <- as.integer(ventasProd$Cantidad) * ventasProd$Coste
ventasProd$ProfitTotal <- ventasProd$VentaTotal - ventasProd$CosteTotal

ggplot(ventasProd, aes(y = VentaTotal, x = NombreTienda, fill = NombreTienda))+
  geom_bar(stat = 'identity')+
  theme_bw()
  
ggplot(ventasProd, aes(x = CodProducto, fill = CodProducto))+
  geom_bar(show.legend = FALSE)+
  theme(axis.text.x=element_blank())

#A partir de este punto queremos ordenar los datos y ver como se muestran, para ello usamos el paquete dplyr (podriamos usar tidyR tambien)
library(dplyr)

ingresoProducto <- as.data.frame(group_by(ventasProd, CodProducto) %>%
                                   summarise(sum(VentaTotal)))

ggplot(ingresoProducto, aes( y = ingresoProducto$`sum(VentaTotal)`, x = CodProducto, fill = CodProducto))+
  geom_bar(stat = 'identity', show.legend = FALSE)+
  ylab('Ingresos Totales')+
  xlab('Productos') +
  theme( axis.text.x =element_blank())
