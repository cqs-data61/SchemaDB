DROP DATABASE IF EXISTS "schema2172";
CREATE DATABASE "schema2172";
USE "schema2172";
CREATE TABLE "vets" (
	"id" SERIAL,
	"name" VARCHAR,
	"age" INT,
	"date_of_graduation" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "species" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "specializations" (
	"species_id" INT,
	"vet_id" INT,
	 CONSTRAINT "fkeycon_specializations_to_vets" FOREIGN KEY ("vet_id") REFERENCES "vets" ("id"),
	 CONSTRAINT "fkeycon_specializations_to_species" FOREIGN KEY ("species_id") REFERENCES "species" ("id")
);

CREATE TABLE "owners" (
	"id" SERIAL,
	"full_name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "animals" (
	"id" SERIAL,
	"name" VARCHAR,
	"date_of_birth" DATE,
	"escape_attempts" INT,
	"neutered" BOOL,
	"weight_kg" DEC,
	"species_id" INT,
	"owner_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "owner_id" FOREIGN KEY ("owner_id") REFERENCES "owners" ("id"),
	 CONSTRAINT "species_id" FOREIGN KEY ("species_id") REFERENCES "species" ("id")
);

CREATE TABLE "visits" (
	"animal_id" INT,
	"vet_id" INT,
	"visit_date" DATE,
	 CONSTRAINT "fkeycon_visits_to_animals" FOREIGN KEY ("animal_id") REFERENCES "animals" ("id"),
	 CONSTRAINT "fkeycon_visits_to_vets" FOREIGN KEY ("vet_id") REFERENCES "vets" ("id")
);
