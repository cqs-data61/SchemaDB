DROP DATABASE IF EXISTS "schema153";
CREATE DATABASE "schema153";
USE "schema153";
CREATE TABLE "customers" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INTEGER,
	"customer_id" INTEGER,
	"address" VARCHAR,
	"totalprice" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_orders_to_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
