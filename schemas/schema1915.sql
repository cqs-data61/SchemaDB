DROP DATABASE IF EXISTS "schema1915";
CREATE DATABASE "schema1915";
USE "schema1915";
CREATE TABLE "genus" (
	"id" VARCHAR,
	"genus" VARCHAR,
	"pokemon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "egg_groups" (
	"id" VARCHAR,
	"egg_group" VARCHAR,
	"pokemon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "types" (
	"id" VARCHAR,
	"type" VARCHAR,
	"pokemon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "abilities" (
	"id" VARCHAR,
	"ability" VARCHAR,
	"pokemon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trainers" (
	"id" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pokemon" (
	"id" VARCHAR,
	"name" VARCHAR,
	"types" VARCHAR,
	"height" INT,
	"weight" INT,
	"abilities" VARCHAR,
	"egg_groups" VARCHAR,
	"stats" VARCHAR,
	"genus" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);
