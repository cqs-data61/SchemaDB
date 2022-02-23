DROP DATABASE IF EXISTS "schema832";
CREATE DATABASE "schema832";
USE "schema832";
CREATE TABLE "kunde" (
	"id" INT,
	"name" VARCHAR,
	"telefonnummer" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kaufvertrag" (
	"id" INT,
	"auto_id" INT,
	"kaufpreis" FLOAT,
	"rabatt" FLOAT,
	"skonto" FLOAT,
	"kaufdatum" DATE,
	"kunde_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "modell_motor" (
	"motor_id" INT,
	"modell_id" INT
);

CREATE TABLE "motor" (
	"id" INT,
	"bezeichnung" VARCHAR,
	"leistung" FLOAT,
	"hubraum" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auto_ausstattung" (
	"auto_id" INT,
	"ausstattung_id" INT
);

CREATE TABLE "ausstattung" (
	"id" INT,
	"bezeichnung" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auto" (
	"id" INT,
	"modell_id" INT,
	"farbe" VARCHAR,
	"preis" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "modell" (
	"id" INT,
	"hersteller_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hersteller" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
