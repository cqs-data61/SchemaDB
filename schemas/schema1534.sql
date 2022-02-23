DROP DATABASE IF EXISTS "schema1534";
CREATE DATABASE "schema1534";
USE "schema1534";
CREATE TABLE "mortalities" (
	"id" SERIAL,
	"country" TEXT,
	"year" INT,
	"gender" TEXT,
	"mortality_rate" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "water" (
	"id" SERIAL,
	"country" TEXT,
	"year" INT,
	"accessibility_percentage" FLOAT,
	 PRIMARY KEY ("id")
);
