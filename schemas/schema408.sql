DROP DATABASE IF EXISTS "schema408";
CREATE DATABASE "schema408";
USE "schema408";
CREATE TABLE "type_lov" (
	"id" IDENTITY,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_on" DATETIME,
	"created_by" INT,
	"modified_on" DATETIME,
	"modified_by" INT,
	"active_sw" BOOLEAN,
	"version" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "type_model" (
	"id" IDENTITY,
	"type_lov_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_on" DATETIME,
	"created_by" INT,
	"modified_on" DATETIME,
	"modified_by" INT,
	"active_sw" BOOLEAN,
	"version" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_type_model_type_lov_id" FOREIGN KEY ("type_lov_id") REFERENCES "type_lov" ("id")
);
