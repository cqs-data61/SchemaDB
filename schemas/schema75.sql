DROP DATABASE IF EXISTS "schema75";
CREATE DATABASE "schema75";
USE "schema75";
CREATE TABLE "child_table" (
	"id" INT,
	"id_parent" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "parent_table" (
	"id" INT,
	"column1" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "some table $$" (
	"id" INT,
	"class" VARCHAR,
	"data" BINARY
);

CREATE TABLE "ship_class" (
	"id" INT,
	"class_name" VARCHAR,
	"tonange" DECIMAL,
	"max_length" DECIMAL,
	"start_build" YEAR,
	"max_guns_size" INT
);

CREATE TABLE "guns" (
	"id" INT,
	"power" DECIMAL,
	"callibr" DECIMAL
);

CREATE TABLE "ships_guns" (
	"guns_id" INT,
	"ship_id" INT
);

CREATE TABLE "ships" (
	"name" VARCHAR,
	"class_id" INT,
	"id" INT
);

CREATE TABLE "log_table" (
	"row" VARCHAR
);
