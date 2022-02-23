DROP DATABASE IF EXISTS "schema711";
CREATE DATABASE "schema711";
USE "schema711";
CREATE TABLE "clientes" (
	"id" VARCHAR,
	"nombre" VARCHAR,
	"apellidos" VARCHAR,
	"celular" NUMERIC,
	"direccion" VARCHAR,
	"correo_electronico" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "compras" (
	"id_compra" SERIAL,
	"id_cliente" VARCHAR,
	"fecha" TIMESTAMP,
	"medio_pago" CHAR,
	"comentario" VARCHAR,
	"estado" CHAR,
	 PRIMARY KEY ("id_compra"),
	 CONSTRAINT "fk_COMPRAS_CLIENTES1" FOREIGN KEY ("id_cliente") REFERENCES "clientes" ("id")
);

CREATE TABLE "categorias" (
	"id_categoria" SERIAL,
	"descripcion" VARCHAR,
	"estado" BOOLEAN,
	 PRIMARY KEY ("id_categoria")
);

CREATE TABLE "productos" (
	"id_producto" SERIAL,
	"nombre" VARCHAR,
	"id_categoria" INT,
	"codigo_barras" VARCHAR,
	"precio_venta" DECIMAL,
	"cantidad_stock" INT,
	"estado" BOOLEAN,
	 PRIMARY KEY ("id_producto"),
	 CONSTRAINT "fk_PRODUCTOS_CATEGORIAS" FOREIGN KEY ("id_categoria") REFERENCES "categorias" ("id_categoria")
);

CREATE TABLE "compras_productos" (
	"id_compra" INT,
	"id_producto" INT,
	"cantidad" INT,
	"total" DECIMAL,
	"estado" BOOLEAN,
	 PRIMARY KEY ("id_compra","id_producto"),
	 CONSTRAINT "fk_COMPRAS_PRODUCTOS_PRODUCTOS1" FOREIGN KEY ("id_producto") REFERENCES "productos" ("id_producto"),
	 CONSTRAINT "fk_COMPRAS_PRODUCTOS_COMPRAS1" FOREIGN KEY ("id_compra") REFERENCES "compras" ("id_compra")
);
