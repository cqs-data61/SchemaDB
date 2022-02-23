DROP DATABASE IF EXISTS "schema1594";
CREATE DATABASE "schema1594";
USE "schema1594";
CREATE TABLE "clientes" (
	"id" INT,
	"nome" VARCHAR,
	"cpf" VARCHAR
);

CREATE TABLE "cities" (
	"id" INT,
	"name" VARCHAR,
	"population" INT
);
