DROP DATABASE IF EXISTS "schema378";
CREATE DATABASE "schema378";
USE "schema378";
CREATE TABLE "compte_comptable" (
	"numero" INTEGER,
	"libelle" VARCHAR,
	 PRIMARY KEY ("numero")
);

CREATE TABLE "journal_comptable" (
	"code" VARCHAR,
	"libelle" VARCHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "ecriture_comptable" (
	"id" INTEGER,
	"journal_code" VARCHAR,
	"reference" VARCHAR,
	"date" TIMESTAMP,
	"libelle" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "journal_comptable_ecriture_comptable_fk" FOREIGN KEY ("journal_code") REFERENCES "journal_comptable" ("code")
);

CREATE TABLE "ligne_ecriture_comptable" (
	"ecriture_id" INTEGER,
	"ligne_id" INTEGER,
	"compte_comptable_numero" INTEGER,
	"libelle" VARCHAR,
	"debit" NUMERIC,
	"credit" NUMERIC,
	 PRIMARY KEY ("ecriture_id","ligne_id"),
	 CONSTRAINT "compte_comptable_ligne_ecriture_comptable_fk" FOREIGN KEY ("compte_comptable_numero") REFERENCES "compte_comptable" ("numero"),
	 CONSTRAINT "ecriture_comptable_ligne_ecriture_comptable_fk" FOREIGN KEY ("ecriture_id") REFERENCES "ecriture_comptable" ("id")
);

CREATE TABLE "sequence_ecriture_comptable" (
	"journal_code" VARCHAR,
	"annee" INTEGER,
	"derniere_valeur" INTEGER,
	 PRIMARY KEY ("journal_code","annee"),
	 CONSTRAINT "journal_comptable_sequence_ecriture_comptable_fk" FOREIGN KEY ("journal_code") REFERENCES "journal_comptable" ("code")
);
