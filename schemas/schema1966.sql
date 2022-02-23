DROP DATABASE IF EXISTS "schema1966";
CREATE DATABASE "schema1966";
USE "schema1966";
CREATE TABLE "persons" (
	"id" VARCHAR,
	"first_name" VARCHAR,
	"middle_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"date_of_birth" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address_segments" (
	"id" VARCHAR,
	"person_id" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"street_one" VARCHAR,
	"street_two" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip_code" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_address_segments_to_persons" FOREIGN KEY ("person_id") REFERENCES "persons" ("id")
);
