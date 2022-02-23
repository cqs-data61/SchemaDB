DROP DATABASE IF EXISTS "schema1783";
CREATE DATABASE "schema1783";
USE "schema1783";
CREATE TABLE "clientes" (
	"id" INT,
	"usuario_id" INT,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "catalogo_de_usuarios" (
	"id" INT,
	"nombre" VARCHAR,
	"equipo_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "catalogo_de_equipos" (
	"id" INT,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id")
);
