DROP DATABASE IF EXISTS "schema619";
CREATE DATABASE "schema619";
USE "schema619";
CREATE TABLE "customer" (
	"id" INT,
	"customername" VARCHAR,
	"address" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "invoice" (
	"id" VARCHAR,
	"idcustomer" INT,
	"orderdate" DATE,
	"subtotal" FLOAT,
	"discount" FLOAT,
	"region" VARCHAR,
	"salesperson" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "invoice_FK" FOREIGN KEY ("idcustomer") REFERENCES "customer" ("id")
);
