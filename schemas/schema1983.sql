DROP DATABASE IF EXISTS "schema1983";
CREATE DATABASE "schema1983";
USE "schema1983";
CREATE TABLE "categorias" (
	"id" INT,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "marcas" (
	"id" INT,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "modelos" (
	"id" INT,
	"marca_id" INT,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_modelos_to_marcas" FOREIGN KEY ("marca_id") REFERENCES "marcas" ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usuarios" (
	"id" INT,
	"nombre" VARCHAR,
	"apellido" VARCHAR,
	"email" VARCHAR,
	"contrasena" VARCHAR,
	"avatar" VARCHAR,
	"rol_id" INT,
	"creado_en" DATE,
	"actualizado_en" DATE,
	"borrado" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_usuarios_to_roles" FOREIGN KEY ("rol_id") REFERENCES "roles" ("id")
);

CREATE TABLE "ventas" (
	"id" INT,
	"usuario_id" INT,
	"numero_factura" INT,
	"fecha_emision" DATE,
	"importe" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_ventas_to_usuarios" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id")
);

CREATE TABLE "productos" (
	"id" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	"categoria_id" INT,
	"marca_id" INT,
	"modelo_id" INT,
	"precio" DECIMAL,
	"stock_disponible" INT,
	"mas_vendido" BOOLEAN,
	"novedades" BOOLEAN,
	"creado_por" INT,
	"creado_en" DATE,
	"actualizado_por" INT,
	"actualizado_en" DATE,
	"borrado" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_productos_to_categorias" FOREIGN KEY ("categoria_id") REFERENCES "categorias" ("id"),
	 CONSTRAINT "fkeycon_productos_to_usuarios" FOREIGN KEY ("actualizado_por") REFERENCES "usuarios" ("id"),
	 CONSTRAINT "fkeycon_productos_to_modelos" FOREIGN KEY ("modelo_id") REFERENCES "modelos" ("id"),
	 CONSTRAINT "fkeycon_productos_to_marcas" FOREIGN KEY ("marca_id") REFERENCES "marcas" ("id")
);

CREATE TABLE "carrito" (
	"id" INT,
	"usuario_id" INT,
	"producto_id" INT,
	"cantidad" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_carrito_to_productos" FOREIGN KEY ("producto_id") REFERENCES "productos" ("id"),
	 CONSTRAINT "fkeycon_carrito_to_usuarios" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id")
);

CREATE TABLE "imagenes" (
	"id" INT,
	"producto_id" INT,
	"ruta" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_imagenes_to_productos" FOREIGN KEY ("producto_id") REFERENCES "productos" ("id")
);

CREATE TABLE "detalle_ventas" (
	"id" INT,
	"producto_id" INT,
	"venta_id" INT,
	"cantidad" INT,
	"precio" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_detalle_ventas_to_productos" FOREIGN KEY ("producto_id") REFERENCES "productos" ("id"),
	 CONSTRAINT "fkeycon_detalle_ventas_to_ventas" FOREIGN KEY ("venta_id") REFERENCES "ventas" ("id")
);
