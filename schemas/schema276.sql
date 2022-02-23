DROP DATABASE IF EXISTS "schema276";
CREATE DATABASE "schema276";
USE "schema276";
CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"age" INT,
	"phone_number" VARCHAR
);

CREATE TABLE "orders" (
	"id" INT,
	"date" DATE,
	"customer_id" INT,
	"product_name" VARCHAR,
	"amount" INT,
	 CONSTRAINT "fkeycon_orders_to_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
