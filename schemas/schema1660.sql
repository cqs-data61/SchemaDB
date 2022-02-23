DROP DATABASE IF EXISTS "schema1660";
CREATE DATABASE "schema1660";
USE "schema1660";
CREATE TABLE "distribuidor" (
	"id" INT,
	"nombre" VARCHAR,
	"sitio_web" VARCHAR
);

CREATE TABLE "videojuego" (
	"id" INT,
	"nombre" VARCHAR,
	"descripcion" VARCHAR,
	"imagen_url" VARCHAR
);
