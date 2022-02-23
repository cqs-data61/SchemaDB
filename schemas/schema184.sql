DROP DATABASE IF EXISTS "schema184";
CREATE DATABASE "schema184";
USE "schema184";
CREATE TABLE "solicitud_modificacion" (
	"run" VARCHAR,
	"estado" VARCHAR,
	"rol" INT,
	"domicilio" VARCHAR,
	"num_habitantes" INT,
	"subsector_id" INT
);

CREATE TABLE "alerta" (
	"fecha_alerta" DATETIME,
	"rol" INT,
	"estado" ENUM
);

CREATE TABLE "corroboracion" (
	"fecha_reciclaje" DATE,
	"rol" INT
);

CREATE TABLE "desincripcion" (
	"run" VARCHAR,
	"motivo" TEXT
);

CREATE TABLE "vivienda" (
	"rol" INT,
	"domicilio" VARCHAR,
	"num_habitantes" INT,
	"telefono" VARCHAR,
	"fecha_incorporacion" DATE,
	"estado" ENUM,
	"subsector_id" INT,
	"run" VARCHAR
);

CREATE TABLE "usuario" (
	"run" VARCHAR,
	"nombre" VARCHAR,
	"tipo_usuario" ENUM,
	"email" VARCHAR,
	"contrasena" VARCHAR
);

CREATE TABLE "subsector" (
	"subsector_id" INT,
	"nombre" VARCHAR,
	"sector_id" INT
);

CREATE TABLE "sector" (
	"sector_id" INT,
	"nombre" VARCHAR
);
