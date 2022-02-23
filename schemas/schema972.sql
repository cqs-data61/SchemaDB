DROP DATABASE IF EXISTS "schema972";
CREATE DATABASE "schema972";
USE "schema972";
CREATE TABLE "dogcommando" (
	"id" SERIAL,
	"name_de" VARCHAR,
	"name_en" VARCHAR,
	"dogsport_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dogsport" (
	"id" SERIAL,
	"name_de" VARCHAR,
	"name_en" VARCHAR,
	"dogclub_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"dogclub_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dogclub" (
	"id" SERIAL,
	"name_de" VARCHAR,
	"name_en" VARCHAR,
	 PRIMARY KEY ("id")
);
