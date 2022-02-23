DROP DATABASE IF EXISTS "schema2476";
CREATE DATABASE "schema2476";
USE "schema2476";
CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"age" INT,
	"phone_number" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"date" VARCHAR,
	"customer_id" INT,
	"product_name" VARCHAR,
	"amount" DOUBLE PRECISION,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_orders_to_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
