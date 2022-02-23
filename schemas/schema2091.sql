DROP DATABASE IF EXISTS "schema2091";
CREATE DATABASE "schema2091";
USE "schema2091";
CREATE TABLE "bruker8" (
	"id" INTEGER,
	"brukernavn" VARCHAR,
	"passord" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bil8" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn8" (
	"id" INTEGER,
	"personnr" VARCHAR,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bil7" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn7" (
	"id" INTEGER,
	"personnr" VARCHAR,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bil6" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn6" (
	"id" INTEGER,
	"personnr" INTEGER,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bil4" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn4" (
	"personnr" INTEGER,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("personnr")
);
