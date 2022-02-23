DROP DATABASE IF EXISTS "schema1115";
CREATE DATABASE "schema1115";
USE "schema1115";
CREATE TABLE "bruker" (
	"id" INTEGER,
	"brukernavn" VARCHAR,
	"passord" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bil" (
	"id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "motorvogn" (
	"id" INTEGER,
	"personnr" VARCHAR,
	"navn" VARCHAR,
	"adresse" VARCHAR,
	"kjennetegn" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);
