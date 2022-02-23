DROP DATABASE IF EXISTS "schema1602";
CREATE DATABASE "schema1602";
USE "schema1602";
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
