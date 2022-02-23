DROP DATABASE IF EXISTS "schema1835";
CREATE DATABASE "schema1835";
USE "schema1835";
CREATE TABLE "t_lighting_field" (
	"id" VARCHAR,
	"name" VARCHAR,
	"dataset_id" VARCHAR,
	"data_type" VARCHAR,
	"field_type" VARCHAR,
	"display_name" VARCHAR,
	"formula" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_lighting_dataset" (
	"id" VARCHAR,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"engine_type" VARCHAR,
	"size" DOUBLE,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_lighting_user" (
	"id" BIGINT,
	"name" TEXT,
	"age" INT,
	 PRIMARY KEY ("id")
);
