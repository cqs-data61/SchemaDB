DROP DATABASE IF EXISTS "schema1718";
CREATE DATABASE "schema1718";
USE "schema1718";
CREATE TABLE "bruker9" (
	"id" INTEGER,
	"brukernavn" VARCHAR,
	"passord" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bil9" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn9" (
	"id" INTEGER,
	"personnr" VARCHAR,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

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

CREATE TABLE "bil" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn" (
	"personnr" INTEGER,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("personnr")
);
