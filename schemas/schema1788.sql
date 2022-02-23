DROP DATABASE IF EXISTS "schema1788";
CREATE DATABASE "schema1788";
USE "schema1788";
CREATE TABLE "owners" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"telephone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "types" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pets" (
	"id" INT,
	"name" VARCHAR,
	"birth_date" DATE,
	"type_id" INT,
	"owner_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_pets_to_owners" FOREIGN KEY ("owner_id") REFERENCES "owners" ("id"),
	 CONSTRAINT "fkeycon_pets_to_types" FOREIGN KEY ("type_id") REFERENCES "types" ("id")
);

CREATE TABLE "visits" (
	"id" INT,
	"pet_id" INT,
	"visit_date" DATE,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_visits_to_pets" FOREIGN KEY ("pet_id") REFERENCES "pets" ("id")
);

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
