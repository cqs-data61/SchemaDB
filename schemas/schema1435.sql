DROP DATABASE IF EXISTS "schema1435";
CREATE DATABASE "schema1435";
USE "schema1435";
CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"code" INTEGER,
	"cost" DOUBLE,
	 PRIMARY KEY ("code")
);

CREATE TABLE "customer" (
	"id" INT,
	"name" VARCHAR,
	"uniqueid" VARCHAR,
	"total_points" DOUBLE,
	 PRIMARY KEY ("uniqueid")
);
