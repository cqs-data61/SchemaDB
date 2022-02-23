DROP DATABASE IF EXISTS "schema2377";
CREATE DATABASE "schema2377";
USE "schema2377";
CREATE TABLE "brukere" (
	"brukernavn" VARCHAR,
	"passord" VARCHAR,
	 PRIMARY KEY ("brukernavn")
);

CREATE TABLE "bil" (
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("type")
);

CREATE TABLE "motoreier" (
	"id" INTEGER,
	"persnr" VARCHAR,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"bilmerke" VARCHAR,
	"biltype" VARCHAR,
	 PRIMARY KEY ("id")
);
