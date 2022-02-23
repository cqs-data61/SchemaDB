DROP DATABASE IF EXISTS "schema1125";
CREATE DATABASE "schema1125";
USE "schema1125";
CREATE TABLE "matricula" (
	"identificacion_alumno" VARCHAR,
	"nombre_alumno" VARCHAR,
	"periodo_escolar_id" BIGINT,
	"asignatura_id" BIGINT,
	 PRIMARY KEY ("identificacion_alumno","periodo_escolar_id","asignatura_id")
);

CREATE TABLE "periodo_escolar" (
	"id" BIGINT,
	"periodo_inicio" INT,
	"periodo_fin" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profesor" (
	"id" BIGINT,
	"nombre" VARCHAR,
	"apellido_pat" VARCHAR,
	"apellido_mat" VARCHAR,
	"ciudad" VARCHAR,
	"direccion" VARCHAR,
	"telefono" VARCHAR,
	"fecha_nacimiento" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "asignatura" (
	"id" BIGINT,
	"nombre" VARCHAR,
	"creditos" INT,
	"profesor_id" BIGINT,
	 PRIMARY KEY ("id")
);
