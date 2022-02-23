DROP DATABASE IF EXISTS "schema750";
CREATE DATABASE "schema750";
USE "schema750";
CREATE TABLE "allebiler" (
	"bil_id" INTEGER,
	"merke" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("bil_id")
);

CREATE TABLE "allekunder" (
	"id" INTEGER,
	"persnr" VARCHAR,
	"navn" VARCHAR,
	"adr" VARCHAR,
	"regnr" VARCHAR,
	"merke" VARCHAR,
	"type" VARCHAR,
	"passord" VARCHAR,
	 PRIMARY KEY ("id")
);
