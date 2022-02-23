DROP DATABASE IF EXISTS "schema1127";
CREATE DATABASE "schema1127";
USE "schema1127";
CREATE TABLE "persons" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"zip_code" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "addresses" (
	"id" INT,
	"street_name" VARCHAR,
	"street_city" VARCHAR,
	"persons_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_addresses_persons" FOREIGN KEY ("persons_id") REFERENCES "persons" ("id")
);
