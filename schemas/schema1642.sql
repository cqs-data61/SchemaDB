DROP DATABASE IF EXISTS "schema1642";
CREATE DATABASE "schema1642";
USE "schema1642";
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
