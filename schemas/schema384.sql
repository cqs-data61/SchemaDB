DROP DATABASE IF EXISTS "schema384";
CREATE DATABASE "schema384";
USE "schema384";
CREATE TABLE "tmcategoria" (
	"categoria_id" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	 PRIMARY KEY ("categoria_id")
);

CREATE TABLE "tmproducto" (
	"producto_id" INT,
	"categoria_id" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	"precio" FLOAT,
	"estado" INT,
	 PRIMARY KEY ("producto_id"),
	 CONSTRAINT "CATEGORIA_ID" FOREIGN KEY ("categoria_id") REFERENCES "tmcategoria" ("categoria_id")
);
