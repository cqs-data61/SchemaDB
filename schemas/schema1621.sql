DROP DATABASE IF EXISTS "schema1621";
CREATE DATABASE "schema1621";
USE "schema1621";
CREATE TABLE "specialties" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vets" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vet_specialties" (
	"vet_id" INT,
	"specialty_id" INT,
	 CONSTRAINT "fkeycon_vet_specialties_to_specialties" FOREIGN KEY ("specialty_id") REFERENCES "specialties" ("id"),
	 CONSTRAINT "fkeycon_vet_specialties_to_vets" FOREIGN KEY ("vet_id") REFERENCES "vets" ("id")
);
