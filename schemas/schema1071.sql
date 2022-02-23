DROP DATABASE IF EXISTS "schema1071";
CREATE DATABASE "schema1071";
USE "schema1071";
CREATE TABLE "phone_numbers_inventory" (
	"phone_number" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("phone_number")
);

CREATE TABLE "allocated_phone_numbers" (
	"phone_id" INT,
	"customer_id" INT,
	"contact_number" VARCHAR,
	 PRIMARY KEY ("phone_id")
);

CREATE TABLE "customer_data" (
	"customer_id" INT,
	"customer_name" VARCHAR,
	 PRIMARY KEY ("customer_id")
);
