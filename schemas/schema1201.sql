DROP DATABASE IF EXISTS "schema1201";
CREATE DATABASE "schema1201";
USE "schema1201";
CREATE TABLE "vets" (
	"id" INT,
	"name" VARCHAR,
	"age" INT,
	"date_of_graduation" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "specializations" (
	"vet_id" INT,
	"species_id" INT,
	 PRIMARY KEY ("vet_id","species_id"),
	 CONSTRAINT "specializations_fk" FOREIGN KEY ("vet_id") REFERENCES "vets" ("id")
);

CREATE TABLE "owners" (
	"id" INT,
	"full_name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "animals" (
	"id" INT,
	"name" VARCHAR,
	"date_of_birth" DATE,
	"escape_attempts" INTEGER,
	"neutered" BOOLEAN,
	"weight_kg" DECIMAL,
	"species" VARCHAR,
	"species_id" INT,
	"owner_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "visits" (
	"date" DATE,
	"vet_id" INT,
	"animal_id" INT,
	 CONSTRAINT "visits_fk" FOREIGN KEY ("animal_id") REFERENCES "animals" ("id"),
	 CONSTRAINT "visits_fk_1" FOREIGN KEY ("vet_id") REFERENCES "vets" ("id")
);
