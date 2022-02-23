DROP DATABASE IF EXISTS "schema1823";
CREATE DATABASE "schema1823";
USE "schema1823";
CREATE TABLE "customers" (
	"id" VARCHAR,
	"first_name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bikes" (
	"id" VARCHAR,
	"model_name" VARCHAR,
	"weight" NUMERIC,
	"price_per_h" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservations" (
	"id" VARCHAR,
	"status" ENUM,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"bike_id" VARCHAR,
	"customer_id" VARCHAR,
	"total_value" INTEGER,
	"applied_discount" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bikes_fk" FOREIGN KEY ("bike_id") REFERENCES "bikes" ("id"),
	 CONSTRAINT "reservations_fk" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
