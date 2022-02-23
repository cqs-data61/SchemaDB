DROP DATABASE IF EXISTS "schema637";
CREATE DATABASE "schema637";
USE "schema637";
CREATE TABLE "proveedores" (
	"rifproveedor" DOMRIF,
	"razonsocial" VARCHAR,
	"direccion" DOMDIRECCIONES,
	"personacontacto" VARCHAR,
	"telefonocelular" DOMTELEFONOS,
	"telefonolocal" DOMTELEFONOS,
	 PRIMARY KEY ("rifproveedor")
);

CREATE TABLE "lineas" (
	"codlinea" INT,
	"descripcion" VARCHAR,
	 PRIMARY KEY ("codlinea")
);

CREATE TABLE "productos" (
	"codproducto" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	"codlinea" INT,
	"fabricante" VARCHAR,
	"esecologico" BOOL,
	"precio" DOMMONTOS,
	"nivelminimo" INT,
	"nivelmaximo" INT,
	"tipoproducto" VARCHAR,
	 PRIMARY KEY ("codproducto"),
	 CONSTRAINT "fkeycon_productos_to_lineas" FOREIGN KEY ("codlinea") REFERENCES "lineas" ("codlinea")
);

CREATE TABLE "distribuye" (
	"rifproveedor" DOMRIF,
	"codproducto" INT,
	 PRIMARY KEY ("rifproveedor","codproducto"),
	 CONSTRAINT "fkeycon_distribuye_to_productos" FOREIGN KEY ("codproducto") REFERENCES "productos" ("codproducto"),
	 CONSTRAINT "fkeycon_distribuye_to_proveedores" FOREIGN KEY ("rifproveedor") REFERENCES "proveedores" ("rifproveedor")
);

CREATE TABLE "productosventas" (
	"codproducto" INT,
	 PRIMARY KEY ("codproducto"),
	 CONSTRAINT "fkeycon_productosventas_to_productos" FOREIGN KEY ("codproducto") REFERENCES "productos" ("codproducto")
);

CREATE TABLE "productosservicios" (
	"codproducto" INT,
	 PRIMARY KEY ("codproducto"),
	 CONSTRAINT "fkeycon_productosservicios_to_productos" FOREIGN KEY ("codproducto") REFERENCES "productos" ("codproducto")
);

CREATE TABLE "modalidades" (
	"codmodalidad" INT,
	"nombremodalidad" VARCHAR,
	 PRIMARY KEY ("codmodalidad")
);

CREATE TABLE "facturasproveedores" (
	"nrofactura" INT,
	"fechapago" TIMESTAMP,
	"fechafacturacion" TIMESTAMP,
	"codordcompra" INT,
	 PRIMARY KEY ("nrofactura")
);

CREATE TABLE "servicios" (
	"codservicio" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	"mintiemporeserva" INTERVAL,
	"porcentajeabono" DOMPORCENTAJES,
	 PRIMARY KEY ("codservicio")
);

CREATE TABLE "actividades" (
	"codservicio" INT,
	"nroactividad" INT,
	"precio" DOMMONTOS,
	"descripcion" VARCHAR,
	"capacidad" DOMCANTIDADES,
	 PRIMARY KEY ("codservicio","nroactividad"),
	 CONSTRAINT "fkeycon_actividades_to_servicios" FOREIGN KEY ("codservicio") REFERENCES "servicios" ("codservicio")
);

CREATE TABLE "clientes" (
	"cedcliente" DOMCEDULAS,
	"nombre" VARCHAR,
	"email" VARCHAR,
	"tlfprincipal" DOMTELEFONOS,
	"tlfalternativo" DOMTELEFONOS,
	 PRIMARY KEY ("cedcliente")
);

CREATE TABLE "tiposvehiculos" (
	"codtipovehiculo" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	 PRIMARY KEY ("codtipovehiculo")
);

CREATE TABLE "modelos" (
	"marca" DOMMODELOS,
	"modelo" VARCHAR,
	"descripcion" VARCHAR,
	"peso" REAL,
	"octanaje" SMALLINT,
	"numpuestos" DOMCANTIDADES,
	"tipoaceitemotor" VARCHAR,
	"tipoaceitecaja" VARCHAR,
	"tiporefrigerante" VARCHAR,
	"codtipovehiculo" INT,
	 PRIMARY KEY ("marca","modelo"),
	 CONSTRAINT "fkeycon_modelos_to_tiposvehiculos" FOREIGN KEY ("codtipovehiculo") REFERENCES "tiposvehiculos" ("codtipovehiculo")
);

CREATE TABLE "debeaplicarse" (
	"marca" DOMMODELOS,
	"modelo" VARCHAR,
	"codproductoservicio" INT,
	"unidadmedida" VARCHAR,
	"cantidad" DOMCANTIDADES,
	 PRIMARY KEY ("marca","modelo","codproductoservicio"),
	 CONSTRAINT "fkeycon_debeaplicarse_to_modelos" FOREIGN KEY ("marca","modelo") REFERENCES "modelos" ("marca","modelo"),
	 CONSTRAINT "fkeycon_debeaplicarse_to_productosservicios" FOREIGN KEY ("codproductoservicio") REFERENCES "productosservicios" ("codproducto")
);

CREATE TABLE "listasmantenimientos" (
	"marca" DOMMODELOS,
	"modelo" DOMMODELOS,
	"tiempouso" INTERVAL,
	"kilometraje" REAL,
	"mantenimiento" VARCHAR,
	 PRIMARY KEY ("marca","modelo","tiempouso","kilometraje","mantenimiento"),
	 CONSTRAINT "fkeycon_listasmantenimientos_to_modelos" FOREIGN KEY ("marca","modelo") REFERENCES "modelos" ("marca","modelo")
);

CREATE TABLE "vehiculos" (
	"codvehiculo" INT,
	"placa" VARCHAR,
	"fechaadquisicion" DATE,
	"fecharegistro" TIMESTAMP,
	"cedcliente" DOMCEDULAS,
	"marca" DOMMODELOS,
	"modelo" DOMMODELOS,
	"nombremecanico" VARCHAR,
	"tlfmecanico" DOMTELEFONOS,
	 PRIMARY KEY ("codvehiculo"),
	 CONSTRAINT "fkeycon_vehiculos_to_modelos" FOREIGN KEY ("marca","modelo") REFERENCES "modelos" ("marca","modelo"),
	 CONSTRAINT "fkeycon_vehiculos_to_clientes" FOREIGN KEY ("cedcliente") REFERENCES "clientes" ("cedcliente")
);

CREATE TABLE "mantenimientospasados" (
	"codvehiculo" INT,
	"fechamant" DATE,
	"descripcion" VARCHAR,
	 PRIMARY KEY ("codvehiculo","fechamant"),
	 CONSTRAINT "fkeycon_mantenimientospasados_to_vehiculos" FOREIGN KEY ("codvehiculo") REFERENCES "vehiculos" ("codvehiculo")
);

CREATE TABLE "sucursales" (
	"rifsucursal" DOMRIF,
	"nombre" VARCHAR,
	"direccion" DOMDIRECCIONES,
	"ciudad" VARCHAR,
	"fechainvfisico" DATE,
	"fechainicioencargado" DATE,
	 PRIMARY KEY ("rifsucursal")
);

CREATE TABLE "ajusta" (
	"rifsucursal" DOMRIF,
	"codproducto" INT,
	"fechaajuste" TIMESTAMP,
	"cantidad" DOMCANTIDADES,
	"tipoajuste" VARCHAR,
	 PRIMARY KEY ("rifsucursal","codproducto"),
	 CONSTRAINT "fkeycon_ajusta_to_productos" FOREIGN KEY ("codproducto") REFERENCES "productos" ("codproducto"),
	 CONSTRAINT "fkeycon_ajusta_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal")
);

CREATE TABLE "almacena" (
	"rifsucursal" DOMRIF,
	"codproducto" INT,
	"existenciateorica" INT,
	"cantidadfisica" INT,
	 PRIMARY KEY ("rifsucursal","codproducto"),
	 CONSTRAINT "fkeycon_almacena_to_productos" FOREIGN KEY ("codproducto") REFERENCES "productos" ("codproducto"),
	 CONSTRAINT "fkeycon_almacena_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal")
);

CREATE TABLE "ordenescompra" (
	"codordcompra" INT,
	"fecha" TIMESTAMP,
	"rifproveedor" DOMRIF,
	"rifsucursal" DOMRIF,
	 PRIMARY KEY ("codordcompra"),
	 CONSTRAINT "fkeycon_ordenescompra_to_proveedores" FOREIGN KEY ("rifproveedor") REFERENCES "proveedores" ("rifproveedor"),
	 CONSTRAINT "fkeycon_ordenescompra_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal")
);

CREATE TABLE "pide" (
	"codordcompra" INT,
	"codproducto" INT,
	"cantidad" DOMCANTIDADES,
	"precio" DOMMONTOS,
	 PRIMARY KEY ("codordcompra","codproducto"),
	 CONSTRAINT "fkeycon_pide_to_productos" FOREIGN KEY ("codproducto") REFERENCES "productos" ("codproducto"),
	 CONSTRAINT "fkeycon_pide_to_ordenescompra" FOREIGN KEY ("codordcompra") REFERENCES "ordenescompra" ("codordcompra")
);

CREATE TABLE "solicitudesservicio" (
	"nrosolicitud" INT,
	"fechaentrada" TIMESTAMP,
	"fechasalidaestimada" TIMESTAMP,
	"fechasalidareal" TIMESTAMP,
	"codvehiculo" INT,
	"rifsucursal" DOMRIF,
	"nombreautorizado" VARCHAR,
	"tlfautorizado" DOMTELEFONOS,
	 PRIMARY KEY ("nrosolicitud"),
	 CONSTRAINT "fkeycon_solicitudesservicio_to_vehiculos" FOREIGN KEY ("codvehiculo") REFERENCES "vehiculos" ("codvehiculo"),
	 CONSTRAINT "fkeycon_solicitudesservicio_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal")
);

CREATE TABLE "detallessolicitudes" (
	"nrosolicitud" INT,
	"codservicio" INT,
	"nroactividad" INT,
	"monto" DOMMONTOS,
	 PRIMARY KEY ("nrosolicitud","codservicio","nroactividad"),
	 CONSTRAINT "fkeycon_detallessolicitudes_to_actividades" FOREIGN KEY ("codservicio","nroactividad") REFERENCES "actividades" ("codservicio","nroactividad"),
	 CONSTRAINT "fkeycon_detallessolicitudes_to_solicitudesservicio" FOREIGN KEY ("nrosolicitud") REFERENCES "solicitudesservicio" ("nrosolicitud")
);

CREATE TABLE "reservaciones" (
	"nroreserva" INT,
	"fechareserva" TIMESTAMP,
	"codservicio" INT,
	"fechaactividad" TIMESTAMP,
	"montoabonado" DOMMONTOS,
	"rifsucursal" DOMRIF,
	"cedcliente" DOMCEDULAS,
	"nrosolicitud" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("nroreserva"),
	 CONSTRAINT "fkeycon_reservaciones_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal"),
	 CONSTRAINT "fkeycon_reservaciones_to_servicios" FOREIGN KEY ("codservicio") REFERENCES "servicios" ("codservicio"),
	 CONSTRAINT "fkeycon_reservaciones_to_solicitudesservicio" FOREIGN KEY ("nrosolicitud") REFERENCES "solicitudesservicio" ("nrosolicitud"),
	 CONSTRAINT "fkeycon_reservaciones_to_clientes" FOREIGN KEY ("cedcliente") REFERENCES "clientes" ("cedcliente")
);

CREATE TABLE "facturasclientes" (
	"nrofactura" INT,
	"fechafacturacion" TIMESTAMP,
	"tipofactura" VARCHAR,
	"rifsucursal" DOMRIF,
	"cedcliente" DOMCEDULAS,
	"descuento" DOMPORCENTAJES,
	 PRIMARY KEY ("nrofactura"),
	 CONSTRAINT "fkeycon_facturasclientes_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal"),
	 CONSTRAINT "fkeycon_facturasclientes_to_clientes" FOREIGN KEY ("cedcliente") REFERENCES "clientes" ("cedcliente")
);

CREATE TABLE "pagos" (
	"nrofactura" INT,
	"nropago" INT,
	"monto" DOMMONTOS,
	"fechapago" TIMESTAMP,
	"moneda" VARCHAR,
	"nrotarjeta" INT,
	"banco" VARCHAR,
	"codmodalidad" INT,
	 PRIMARY KEY ("nrofactura","nropago"),
	 CONSTRAINT "fkeycon_pagos_to_modalidades" FOREIGN KEY ("codmodalidad") REFERENCES "modalidades" ("codmodalidad"),
	 CONSTRAINT "fkeycon_pagos_to_facturasclientes" FOREIGN KEY ("nrofactura") REFERENCES "facturasclientes" ("nrofactura")
);

CREATE TABLE "facturasventas" (
	"nrofactura" INT,
	 PRIMARY KEY ("nrofactura"),
	 CONSTRAINT "fkeycon_facturasventas_to_facturasclientes" FOREIGN KEY ("nrofactura") REFERENCES "facturasclientes" ("nrofactura")
);

CREATE TABLE "detallesfacturasventas" (
	"nrofacturaventa" INT,
	"codproductoventa" INT,
	"precio" DOMMONTOS,
	"cantidad" DOMCANTIDADES,
	 PRIMARY KEY ("nrofacturaventa","codproductoventa"),
	 CONSTRAINT "fkeycon_detallesfacturasventas_to_productosventas" FOREIGN KEY ("codproductoventa") REFERENCES "productosventas" ("codproducto"),
	 CONSTRAINT "fkeycon_detallesfacturasventas_to_facturasventas" FOREIGN KEY ("nrofacturaventa") REFERENCES "facturasventas" ("nrofactura")
);

CREATE TABLE "facturasservicios" (
	"nrofactura" INT,
	"nrosolicitud" INT,
	 PRIMARY KEY ("nrofactura"),
	 CONSTRAINT "fkeycon_facturasservicios_to_facturasclientes" FOREIGN KEY ("nrofactura") REFERENCES "facturasclientes" ("nrofactura"),
	 CONSTRAINT "fkeycon_facturasservicios_to_solicitudesservicio" FOREIGN KEY ("nrosolicitud") REFERENCES "solicitudesservicio" ("nrosolicitud")
);

CREATE TABLE "admite" (
	"rifsucursal" DOMRIF,
	"codtipovehiculo" INT,
	 PRIMARY KEY ("rifsucursal","codtipovehiculo"),
	 CONSTRAINT "fkeycon_admite_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal"),
	 CONSTRAINT "fkeycon_admite_to_tiposvehiculos" FOREIGN KEY ("codtipovehiculo") REFERENCES "tiposvehiculos" ("codtipovehiculo")
);

CREATE TABLE "empleados" (
	"cedempleado" DOMCEDULAS,
	"nombre" VARCHAR,
	"apellido" VARCHAR,
	"telefono" DOMTELEFONOS,
	"direccion" DOMDIRECCIONES,
	"sueldo" DOMMONTOS,
	"usuario" VARCHAR,
	"contrasena" VARCHAR,
	"rifsucursal" DOMRIF,
	"tipoempleado" VARCHAR,
	 PRIMARY KEY ("cedempleado"),
	 CONSTRAINT "fkeycon_empleados_to_sucursales" FOREIGN KEY ("rifsucursal") REFERENCES "sucursales" ("rifsucursal")
);

CREATE TABLE "ordenesservicio" (
	"nrosolicitud" INT,
	"codservicio" INT,
	"nroactividad" INT,
	"codproducto" INT,
	"fecha" TIMESTAMP,
	"cedempleado" DOMCEDULAS,
	"cantidad" DOMCANTIDADES,
	"unidadmedida" VARCHAR,
	 PRIMARY KEY ("nrosolicitud","codservicio","nroactividad","codproducto","fecha"),
	 CONSTRAINT "fkeycon_ordenesservicio_to_productosservicios" FOREIGN KEY ("codproducto") REFERENCES "productosservicios" ("codproducto"),
	 CONSTRAINT "fkeycon_ordenesservicio_to_detallessolicitudes" FOREIGN KEY ("nrosolicitud","codservicio","nroactividad") REFERENCES "detallessolicitudes" ("nrosolicitud","codservicio","nroactividad"),
	 CONSTRAINT "fkeycon_ordenesservicio_to_empleados" FOREIGN KEY ("cedempleado") REFERENCES "empleados" ("cedempleado")
);

CREATE TABLE "asignado" (
	"cedempleado" DOMCEDULAS,
	"codservicio" INT,
	"escoordinador" BOOL,
	 PRIMARY KEY ("cedempleado","codservicio"),
	 CONSTRAINT "fkeycon_asignado_to_servicios" FOREIGN KEY ("codservicio") REFERENCES "servicios" ("codservicio"),
	 CONSTRAINT "fkeycon_asignado_to_empleados" FOREIGN KEY ("cedempleado") REFERENCES "empleados" ("cedempleado")
);
