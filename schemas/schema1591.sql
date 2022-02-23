DROP DATABASE IF EXISTS "schema1591";
CREATE DATABASE "schema1591";
USE "schema1591";
CREATE TABLE "tarefas" (
	"id" INT,
	"descricao" VARCHAR,
	"data" DATETIME,
	"realizado" BOOLEAN,
	"categoria_id" INT
);

CREATE TABLE "categorias" (
	"id" INT,
	"descricao" VARCHAR,
	"cor" VARCHAR
);

CREATE TABLE "usuarios" (
	"id" INT,
	"email" VARCHAR,
	"senha" VARCHAR
);
