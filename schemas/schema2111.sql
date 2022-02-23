DROP DATABASE IF EXISTS "schema2111";
CREATE DATABASE "schema2111";
USE "schema2111";
CREATE TABLE "kunde" (
	"brukernavn" VARCHAR,
	"passord" VARCHAR,
	"rettighet" VARCHAR,
	 PRIMARY KEY ("brukernavn")
);

CREATE TABLE "biler" (
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("type")
);

CREATE TABLE "motorvogn" (
	"id" SMALLINT,
	"personnr" CHAR,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_motorvogn_to_biler" FOREIGN KEY ("type") REFERENCES "biler" ("type")
);
