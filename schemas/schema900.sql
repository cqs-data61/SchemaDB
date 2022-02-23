DROP DATABASE IF EXISTS "schema900";
CREATE DATABASE "schema900";
USE "schema900";
CREATE TABLE "ventas" (
	"id" BIGINT,
	"fecha" DATETIME,
	"total" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "productos" (
	"id" BIGINT,
	"codigo" VARCHAR,
	"descripcion" VARCHAR,
	"precioventa" DECIMAL,
	"preciocompra" DECIMAL,
	"existencia" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "productos_vendidos" (
	"id" BIGINT,
	"id_producto" BIGINT,
	"cantidad" BIGINT,
	"id_venta" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_productos_vendidos_to_productos" FOREIGN KEY ("id_producto") REFERENCES "productos" ("id"),
	 CONSTRAINT "fkeycon_productos_vendidos_to_ventas" FOREIGN KEY ("id_venta") REFERENCES "ventas" ("id")
);
