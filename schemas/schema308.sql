DROP DATABASE IF EXISTS "schema308";
CREATE DATABASE "schema308";
USE "schema308";
CREATE TABLE "acteur" (
	"acteur_id" INT,
	"acteur_nom" VARCHAR,
	"acteur_prenom" INT,
	 PRIMARY KEY ("acteur_id")
);

CREATE TABLE "film" (
	"film_id" INT,
	"film_titre" VARCHAR,
	"film_description" INT,
	 PRIMARY KEY ("film_id")
);

CREATE TABLE "a_joue" (
	"acteur_id" INT,
	"film_id" INT,
	 PRIMARY KEY ("acteur_id","film_id"),
	 CONSTRAINT "fkeycon_a_joue_to_acteur" FOREIGN KEY ("acteur_id") REFERENCES "acteur" ("acteur_id"),
	 CONSTRAINT "fkeycon_a_joue_to_film" FOREIGN KEY ("film_id") REFERENCES "film" ("film_id")
);
