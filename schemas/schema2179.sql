DROP DATABASE IF EXISTS "schema2179";
CREATE DATABASE "schema2179";
USE "schema2179";
CREATE TABLE "game" (
	"id" INTEGER,
	"dau1" INTEGER,
	"dau2" INTEGER,
	"resultat" BOOLEAN,
	"id_usuari" INTEGER
);

CREATE TABLE "players" (
	"id" INTEGER,
	"usuari" VARCHAR,
	"data" DATE
);
