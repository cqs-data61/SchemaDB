DROP DATABASE IF EXISTS "schema1843";
CREATE DATABASE "schema1843";
USE "schema1843";
CREATE TABLE "usuarios" (
	"id" INT,
	"usuario" VARCHAR,
	"password" VARCHAR,
	"creacion" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "planetas" (
	"id" INT,
	"nombre" VARCHAR,
	"masa" NUMERIC,
	"radio" NUMERIC,
	"orbitradio" NUMERIC,
	"gravedad" NUMERIC,
	"rotacion" NUMERIC,
	"orbita" NUMERIC,
	"creacion" TIMESTAMP,
	 PRIMARY KEY ("id")
);
