DROP DATABASE IF EXISTS "schema504";
CREATE DATABASE "schema504";
USE "schema504";
CREATE TABLE "peptides" (
	"peptide" TEXT,
	 PRIMARY KEY ("peptide")
);

CREATE TABLE "alleles" (
	"allele" TEXT,
	 PRIMARY KEY ("allele")
);

CREATE TABLE "multiconf_files" (
	"id" INTEGER,
	"allele" TEXT,
	"peptide" TEXT,
	"binder" INTEGER,
	"num_confirmations" INTEGER,
	"folderpath" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_multiconf_files_to_peptides" FOREIGN KEY ("peptide") REFERENCES "peptides" ("peptide"),
	 CONSTRAINT "fkeycon_multiconf_files_to_alleles" FOREIGN KEY ("allele") REFERENCES "alleles" ("allele")
);

CREATE TABLE "singleconf_files" (
	"id" INTEGER,
	"allele" TEXT,
	"peptide" TEXT,
	"binder" INTEGER,
	"filepath" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_singleconf_files_to_alleles" FOREIGN KEY ("allele") REFERENCES "alleles" ("allele"),
	 CONSTRAINT "fkeycon_singleconf_files_to_peptides" FOREIGN KEY ("peptide") REFERENCES "peptides" ("peptide")
);
