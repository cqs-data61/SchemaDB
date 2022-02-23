DROP DATABASE IF EXISTS "schema1628";
CREATE DATABASE "schema1628";
USE "schema1628";
CREATE TABLE "ingredients" (
	"id" BIGSERIAL,
	"nome" VARCHAR,
	"ativo" BOOLEAN,
	"criado_em" DATETIME,
	 PRIMARY KEY ("id")
);
