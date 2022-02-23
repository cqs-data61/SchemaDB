DROP DATABASE IF EXISTS "schema931";
CREATE DATABASE "schema931";
USE "schema931";
CREATE TABLE "address" (
	"addressid" INT,
	"personid" INT,
	"city" VARCHAR,
	"state" VARCHAR
);

CREATE TABLE "person" (
	"personid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR
);
