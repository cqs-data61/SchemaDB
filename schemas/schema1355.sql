DROP DATABASE IF EXISTS "schema1355";
CREATE DATABASE "schema1355";
USE "schema1355";
CREATE TABLE "reserver" (
	"id" INT,
	"date" DATETIME,
	"name" VARCHAR,
	"phone" VARCHAR,
	"mail" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "prestation" (
	"id" INT,
	"genre_id" INT,
	"categorie_id" INT,
	"libelle" VARCHAR,
	"prix" DOUBLE,
	"nbr_seance" INT,
	"description" VARCHAR,
	"reserverid_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genre" (
	"id" INT,
	"libelle" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entreprise" (
	"id" INT,
	"nom" VARCHAR,
	"description" VARCHAR,
	"adresse" VARCHAR,
	"cp" VARCHAR,
	"ville" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "doctrine_migration_versions" (
	"version" VARCHAR,
	"executed_at" DATETIME,
	"execution_time" INT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "contact" (
	"id" INT,
	"nom" VARCHAR,
	"prenom" VARCHAR,
	"mail" VARCHAR,
	"message" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categorie" (
	"id" INT,
	"libelle" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "avis" (
	"id" INT,
	"title" VARCHAR,
	"text" LONGTEXT,
	"created_at" DATETIME,
	"nom" VARCHAR,
	"prenom" VARCHAR,
	 PRIMARY KEY ("id")
);
