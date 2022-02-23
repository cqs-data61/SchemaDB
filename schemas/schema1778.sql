DROP DATABASE IF EXISTS "schema1778";
CREATE DATABASE "schema1778";
USE "schema1778";
CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"roles" LONGTEXT,
	"password" VARCHAR,
	"nom" VARCHAR,
	"prenom" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pratiquer" (
	"id" INT,
	"activite_id" INT,
	"enfant_id" INT,
	"date" DATE,
	"duree" TIME,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migration_versions" (
	"version" VARCHAR,
	"executed_at" DATETIME,
	 PRIMARY KEY ("version")
);

CREATE TABLE "enfant_activite" (
	"enfant_id" INT,
	"activite_id" INT,
	 PRIMARY KEY ("enfant_id","activite_id")
);

CREATE TABLE "enfant" (
	"id" INT,
	"nom" VARCHAR,
	"prenom" VARCHAR,
	"datenaiss" DATE,
	"pathologie" VARCHAR,
	"parent_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "activite" (
	"id" INT,
	"libelle" VARCHAR,
	 PRIMARY KEY ("id")
);
