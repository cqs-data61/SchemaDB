DROP DATABASE IF EXISTS "schema104";
CREATE DATABASE "schema104";
USE "schema104";
CREATE TABLE "seances" (
	"code_formation" VARCHAR,
	"id_formateur" INT,
	"date_debut" DATE,
	"date_fin" DATE
);

CREATE TABLE "formations" (
	"code" VARCHAR,
	"libelle" VARCHAR,
	"descriptif" VARCHAR
);

CREATE TABLE "formateurs" (
	"id" INT,
	"nom" VARCHAR,
	"prenom" VARCHAR,
	"adresse_email" VARCHAR
);
