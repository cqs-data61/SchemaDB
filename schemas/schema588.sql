DROP DATABASE IF EXISTS "schema588";
CREATE DATABASE "schema588";
USE "schema588";
CREATE TABLE "estate_type" (
	"estate_type_id" INT,
	"estate_type" VARCHAR,
	 PRIMARY KEY ("estate_type_id")
);

CREATE TABLE "estate_new" (
	"estate_id" INT,
	"owner_id" INT,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip_code" INT,
	"estate_type_id" INT,
	 CONSTRAINT "fkeycon_estate_new_to_estate_type" FOREIGN KEY ("estate_type_id") REFERENCES "estate_type" ("estate_type_id")
);

CREATE TABLE "owners" (
	"owner_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("owner_id")
);

CREATE TABLE "estates" (
	"estate_id" INT,
	"owner_id" INT,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip_code" INT,
	 CONSTRAINT "fkeycon_estates_to_owners" FOREIGN KEY ("owner_id") REFERENCES "owners" ("owner_id")
);
