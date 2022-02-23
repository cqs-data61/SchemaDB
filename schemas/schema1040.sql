DROP DATABASE IF EXISTS "schema1040";
CREATE DATABASE "schema1040";
USE "schema1040";
CREATE TABLE "orders" (
	"id" INT,
	"date" VARCHAR,
	"customer_id" INT,
	"product_name" VARCHAR,
	"amount" DOUBLE
);

CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"age" INT,
	"phone_number" INT
);
