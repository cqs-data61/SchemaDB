DROP DATABASE IF EXISTS "schema1001";
CREATE DATABASE "schema1001";
USE "schema1001";
CREATE TABLE "client" (
	"code" CHAR,
	"societe" CHAR,
	"contact" CHAR,
	"fonction" CHAR,
	"adresse" CHAR,
	"ville" CHAR,
	"region" CHAR,
	"code_postal" CHAR,
	"pays" CHAR,
	"telephone" CHAR,
	"fax" CHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "commande" (
	"numero" INT,
	"client" CHAR,
	"saisiele" DATETIME,
	"envoyeele" DATETIME,
	"port" DECIMAL,
	"destinataire" CHAR,
	"adresse_livraison" CHAR,
	"ville_livraison" CHAR,
	"region_livraison" CHAR,
	"code_postal_livrais" CHAR,
	"pays_livraison" CHAR,
	"remise" FLOAT,
	 PRIMARY KEY ("numero"),
	 CONSTRAINT "fkeycon_commande_to_client" FOREIGN KEY ("client") REFERENCES "client" ("code")
);

CREATE TABLE "categorie" (
	"code" INT,
	"libelle" VARCHAR,
	"description" LONGTEXT,
	 PRIMARY KEY ("code")
);

CREATE TABLE "produit" (
	"reference" INT,
	"nom" CHAR,
	"fournisseur" INT,
	"categorie" INT,
	"quantite_par_unite" CHAR,
	"prix_unitaire" DECIMAL,
	"unites_en_stock" SMALLINT,
	"unites_commandees" SMALLINT,
	"niveau_de_reapprovi" SMALLINT,
	"indisponible" TINYINT,
	 PRIMARY KEY ("reference"),
	 CONSTRAINT "fkeycon_produit_to_categorie" FOREIGN KEY ("categorie") REFERENCES "categorie" ("code")
);

CREATE TABLE "ligne" (
	"commande" INT,
	"produit" INT,
	"quantite" SMALLINT,
	 PRIMARY KEY ("commande","produit"),
	 CONSTRAINT "fkeycon_ligne_to_commande" FOREIGN KEY ("commande") REFERENCES "commande" ("numero"),
	 CONSTRAINT "fkeycon_ligne_to_produit" FOREIGN KEY ("produit") REFERENCES "produit" ("reference")
);
