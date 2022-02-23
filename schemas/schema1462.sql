DROP DATABASE IF EXISTS "schema1462";
CREATE DATABASE "schema1462";
USE "schema1462";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"fullname" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "sessions" (
	"session_id" VARCHAR,
	"expires" INT,
	"data" MEDIUMTEXT
);

CREATE TABLE "assets" (
	"id" INT,
	"arrendatario" VARCHAR,
	"operacion" VARCHAR,
	"municipio" VARCHAR,
	"barrio" VARCHAR,
	"direccion" VARCHAR,
	"estrato" INT,
	"fecha_pago" VARCHAR,
	"valor" INT,
	"valor_danos" INT,
	"valor_admin" INT,
	"subida_en" TIMESTAMP,
	"alcobas" INT,
	"banios" INT,
	"garage" VARCHAR,
	"piscina" VARCHAR,
	"cuarto_util" VARCHAR,
	"unidad" VARCHAR,
	"porteria24h" VARCHAR,
	"vivienda" VARCHAR,
	"familia" VARCHAR,
	"servicios" VARCHAR,
	"gas" VARCHAR,
	"piso" INT,
	"ascensor" VARCHAR,
	"juegos" VARCHAR,
	"areas_comunes" VARCHAR,
	"area" FLOAT,
	"antiguedad" INT,
	"constructora" VARCHAR,
	"predial" INT,
	"descripcion" TEXT,
	"user_id" INT
);
