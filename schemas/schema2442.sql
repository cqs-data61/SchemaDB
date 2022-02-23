DROP DATABASE IF EXISTS "schema2442";
CREATE DATABASE "schema2442";
USE "schema2442";
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
	 PRIMARY KEY ("personnr"),
	 CONSTRAINT "fkeycon_motorvogn_to_biler" FOREIGN KEY ("type") REFERENCES "biler" ("type")
);
