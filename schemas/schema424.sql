DROP DATABASE IF EXISTS "schema424";
CREATE DATABASE "schema424";
USE "schema424";
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
