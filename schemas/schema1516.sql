DROP DATABASE IF EXISTS "schema1516";
CREATE DATABASE "schema1516";
USE "schema1516";
CREATE TABLE "toy" (
	"minion" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "string_id_minion" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "minion" (
	"id" BIGINT,
	"version" INT,
	"name" VARCHAR,
	"number_of_eyes" VARCHAR,
	"color" BIGINT,
	"evil_master" BIGINT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "color" (
	"id" BIGINT,
	"version" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
