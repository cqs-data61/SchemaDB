DROP DATABASE IF EXISTS "schema2130";
CREATE DATABASE "schema2130";
USE "schema2130";
CREATE TABLE "employes" (
	"emp_id" NUMERIC,
	"emp_poste" VARCHAR,
	"emp_prenom" VARCHAR,
	"emp_nom" VARCHAR,
	"emp_superieur_hierarchique" NUMERIC,
	"emp_salaire" FLOAT,
	 PRIMARY KEY ("emp_id")
);

CREATE TABLE "lignes_factures" (
	"lig_produit" NUMERIC,
	"lig_facture" NUMERIC,
	"lig_prix_vente" NUMERIC,
	"lig_quantite" NUMERIC,
	 PRIMARY KEY ("lig_facture","lig_produit")
);

CREATE TABLE "factures" (
	"fac_num" NUMERIC,
	"fac_cli" NUMERIC,
	"fac_date" DATE,
	"fac_montant" NUMERIC,
	 PRIMARY KEY ("fac_num")
);

CREATE TABLE "clients" (
	"cli_id" NUMERIC,
	"cli_prenom" VARCHAR,
	"cli_nom" VARCHAR,
	 PRIMARY KEY ("cli_id")
);

CREATE TABLE "produits" (
	"prod_id" NUMERIC,
	"prod_al" NUMERIC,
	"prod_code_barre_ean" VARCHAR,
	"prod_type_support" VARCHAR,
	 PRIMARY KEY ("prod_id")
);

CREATE TABLE "albums" (
	"al_id" NUMERIC,
	"al_titre" VARCHAR,
	"al_sortie" DATE,
	 PRIMARY KEY ("al_id")
);
