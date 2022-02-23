DROP DATABASE IF EXISTS "schema1145";
CREATE DATABASE "schema1145";
USE "schema1145";
CREATE TABLE "cuadro" (
	"id_cuadro" INT,
	"tittle" VARCHAR,
	"author" VARCHAR,
	"prize" DOUBLE,
	 PRIMARY KEY ("id_cuadro")
);

CREATE TABLE "tienda" (
	"id_tienda" INT,
	"name" VARCHAR,
	"capacity" INT,
	 PRIMARY KEY ("id_tienda")
);

CREATE TABLE "cuadros_tiendas" (
	"tienda_id" INT,
	"cuadro_id" INT,
	"date" DATETIME,
	 PRIMARY KEY ("tienda_id","cuadro_id"),
	 CONSTRAINT "fktienda_id" FOREIGN KEY ("tienda_id") REFERENCES "tienda" ("id_tienda"),
	 CONSTRAINT "fkcuadro_id" FOREIGN KEY ("cuadro_id") REFERENCES "cuadro" ("id_cuadro")
);
