DROP DATABASE IF EXISTS "schema2119";
CREATE DATABASE "schema2119";
USE "schema2119";
CREATE TABLE "burgers" (
	"id" INT,
	"burger_name" VARCHAR,
	"devoured" BOOLEAN,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "devourers" (
	"id" INT,
	"devourer_name" VARCHAR,
	"burgerid" INT,
	"createdat" TIMESTAMP,
	"updatedat" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_devourers_to_burgers" FOREIGN KEY ("burgerid") REFERENCES "burgers" ("id")
);
