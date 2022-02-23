DROP DATABASE IF EXISTS "schema1265";
CREATE DATABASE "schema1265";
USE "schema1265";
CREATE TABLE "users" (
	"userid" INT,
	"userfullname" VARCHAR,
	"createddate" TIMESTAMP
);

CREATE TABLE "services" (
	"id" INT,
	"code" VARCHAR,
	"userid" INT,
	"carid" INT,
	"carmodelid" INT,
	"repairtypeid" INT,
	"repairplaceid" INT,
	"repairdate" TIMESTAMP,
	"repaircompletedate" TIMESTAMP,
	"createddate" TIMESTAMP
);

CREATE TABLE "repairtypeandplace" (
	"id" INT,
	"type_id" INT,
	"place_id" INT
);

CREATE TABLE "repairtype" (
	"id" INT,
	"type" VARCHAR
);

CREATE TABLE "repairplace" (
	"id" INT,
	"place" VARCHAR,
	"monthlycapacity" INT
);

CREATE TABLE "models" (
	"id" INT,
	"model" VARCHAR,
	"carid" INT,
	"year" INT
);

CREATE TABLE "cars" (
	"id" INT,
	"brand" VARCHAR
);
