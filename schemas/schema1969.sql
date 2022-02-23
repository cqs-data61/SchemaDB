DROP DATABASE IF EXISTS "schema1969";
CREATE DATABASE "schema1969";
USE "schema1969";
CREATE TABLE "lancamento" (
	"id" BIGSERIAL,
	"descricao" CHARACTER VARYING,
	"mes" INTEGER,
	"ano" INTEGER,
	"valor" NUMERIC,
	"tipo" CHARACTER VARYING,
	"status" CHARACTER VARYING,
	"id_usuario" BIGINT,
	"data_cadastro" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usuario" (
	"id" BIGSERIAL,
	"nome" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"senha" CHARACTER VARYING,
	"data_cadastro" DATE,
	 PRIMARY KEY ("id")
);
