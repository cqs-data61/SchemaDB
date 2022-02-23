DROP DATABASE IF EXISTS "schema348";
CREATE DATABASE "schema348";
USE "schema348";
CREATE TABLE "categorias" (
	"idcategoria" SERIAL,
	"descripcion" VARCHAR,
	"estado" BOOLEAN,
	 PRIMARY KEY ("idcategoria")
);

CREATE TABLE "productos" (
	"idprodcuto" SERIAL,
	"nombre" VARCHAR,
	"idcategoria" INT,
	"codigobarras" VARCHAR,
	"precioventa" DECIMAL,
	"cantidadstock" INT,
	"estado" BOOLEAN,
	 PRIMARY KEY ("idprodcuto"),
	 CONSTRAINT "FK_PRODUCTOS_CATEGORIAS" FOREIGN KEY ("idcategoria") REFERENCES "categorias" ("idcategoria")
);
