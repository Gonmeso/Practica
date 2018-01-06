#En este script vamos a hacer la modificación de datos original, añadiendo las cabeceras

setwd("D:/Mis Documentos/uni/UOC/Minería de datos/Practica")

tienda <- read.csv('tienda.cvs', encoding = 'UTF-8', header = FALSE)

#View(tienda)
cabeceraTienda <- c('Nombre', 'Direccion', 'Superficie', 'Formato_Tienda', 'Pais', 'Tipo_Zona')

colnames(tienda) <- cabeceraTienda
# head(tienda)

#Pais
pais <- read.csv('pais.cvs', encoding = 'UTF-8', header = FALSE)

# View(pais)
cabeceraPais <- c('NombrePais', 'Extension', 'Poblacion', 'NombreRegion')

colnames(pais) <- cabeceraPais
# head(pais)

#Región

region <- read.csv('regiongeografica.cvs', encoding = 'UTF-8', header = FALSE)

# View(region)
cabeceraRegion <- c('NombreRegion', 'Continente')

colnames(region) <- cabeceraRegion
# head(region)


#Cliente

cliente <- read.csv('cliente.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraCliente <- c('CodCliente', 'NombreCliente', 'Sexo', 'FechaNaciemiento',
                     'EstadoCivil', 'Direccion', 'Profesion', 'NumeroHijos',
                     'Region', 'Nacionalidad', 'TotalCompras', 'PuntosAcumulados')

colnames(cliente) <- cabeceraCliente
# head(cliente)

#Producto

producto <- read.csv('producto.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraProducto <- c('CodProducto', 'Descripcion',
                      'NombrePais', 'Coste', 'PrecioVenta', 'TipoUnidad',
                      'NombreSubFamilia', 'Marca', 'CodProveedor')

colnames(producto) <- cabeceraProducto
# head(producto)

#Proveedor

proveedor <- read.csv('proveedor.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraProveedor <- c('CodProveedor', 'NombreProveedor', 'PersonaContacto',
                       'Direccion', 'Telefono', 'PeriodoPago', 
                       'PagoPendiente', 'TipoProveedor', 'Alcance')

colnames(proveedor) <- cabeceraProveedor
# head(proveedor)

#Subfamilia

subfamilia <- read.csv('subfamilia.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraSubfamilia <- c('NombreSubFamilia', 'Descripcion', 'Nombrefamilia')

colnames(subfamilia) <- cabeceraSubfamilia
# head(subfamilia)

#Familia

familia <- read.csv('familia.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraFamilia <- c('NombreFamilia', 'Descripción', 'NombreSeccion')

colnames(familia) <- cabeceraFamilia
# head(familia)

#Seccion

seccion <- read.csv('seccion.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraSeccion <- c('NombreSeccion', 'Descripcion')

colnames(seccion) <- cabeceraSeccion
# head(seccion)


#CabeceraTicket

cabecera <- read.csv('cabeceraticket.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraCTicket <- c('CodVenta', 'NombreTienda', 'Fecha', 'Hora',
                     'FormaPago', 'CodCliente', 'ImporteTotal',
                     'TotalUnidades', 'PuntosTicket')

colnames(cabecera) <- cabeceraCTicket
# head(cabecera)

#Lineas Ticket
lineas <- read.csv('lineasticket.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraLineas <- c('CodLinea', 'CodVenta', 'NombreTienda', 'CodProducto',
                    'Cantidad', 'PrecioVenta', 'NombrePromocion', 'CodCabecera')

colnames(lineas) <- cabeceraLineas
head(lineas)

#Promocion
promocion <- read.csv('promocion.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraPromocion <- c('NombrePromocion', 'TipoPromocion', 'Coste', 'FechaInicio',
                       'FechaFin', 'CodProducto', 'NombreFamilia', 'NombreSeccion',
                       'NombreTienda', 'NombreRegion', 'NombrePais')

colnames(promocion) <- cabeceraPromocion
# head(promocion)


#Pedido
pedido <- read.csv('pedido.cvs', encoding = 'UTF-8', header = FALSE)

cabeceraPedido <- c('CodPedido', 'NombreTienda', 'CodProducto', 'PrecioCompra',
                    'CantidadSolicitada', 'FechaSolicitud', 'CantidadEntregada',
                    'FechaEntrega')

colnames(pedido) <- cabeceraPedido
# head(pedido)
