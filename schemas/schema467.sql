DROP DATABASE IF EXISTS "schema467";
CREATE DATABASE "schema467";
USE "schema467";
CREATE TABLE "cita" (
	"id" INT,
	"placa_vehiculo" VARCHAR,
	"id_cliente" VARCHAR,
	"fecha_registro" DATETIME,
	"fecha_entrada" DATETIME,
	"hora_entrada" TIME,
	"fecha_salida" DATETIME,
	"hora_salida" TIME,
	"valor" INT
);

CREATE TABLE "usuario" (
	"id" INT,
	"nombre" VARCHAR,
	"clave" VARCHAR,
	"fecha_creacion" DATETIME
);
