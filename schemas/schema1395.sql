DROP DATABASE IF EXISTS "schema1395";
CREATE DATABASE "schema1395";
USE "schema1395";
CREATE TABLE "address" (
	"id" INT,
	"address_line" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer" (
	"id" INT,
	"customer_type" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"address" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "customer_address_FK_1" FOREIGN KEY ("address") REFERENCES "address" ("id")
);
