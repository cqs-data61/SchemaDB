DROP DATABASE IF EXISTS "schema1311";
CREATE DATABASE "schema1311";
USE "schema1311";
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
