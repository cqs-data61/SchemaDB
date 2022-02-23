DROP DATABASE IF EXISTS "schema1058";
CREATE DATABASE "schema1058";
USE "schema1058";
CREATE TABLE "users_suggestions_notifications" (
	"id" INT,
	"id_user" INT,
	"issuecode" VARCHAR,
	"text" TEXT,
	"date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_points" (
	"id" INT,
	"id_utilisateur" INT,
	"typecontribution" ENUM,
	"nbpoints" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_permissions" (
	"id" INT,
	"username" VARCHAR,
	"role" VARCHAR,
	"privilege" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_password_tokens" (
	"id" INT,
	"id_user" INT,
	"token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"accepterpartage" TINYINT,
	"dateinscription" DATE,
	"email" VARCHAR,
	"recommandationslistemags" TINYINT,
	"betauser" TINYINT,
	"affichervideo" TINYINT,
	"bibliotheque_texture1" VARCHAR,
	"bibliotheque_sous_texture1" VARCHAR,
	"bibliotheque_texture2" VARCHAR,
	"bibliotheque_sous_texture2" VARCHAR,
	"dernieracces" DATETIME,
	"precedentacces" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_options" (
	"id" INT,
	"id_user" INT,
	"option_nom" ENUM,
	"option_valeur" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_options_users_ID_fk" FOREIGN KEY ("id_user") REFERENCES "users" ("id")
);

CREATE TABLE "tranches_pretes_sprites_urls" (
	"id" INT,
	"sprite_name" VARCHAR,
	"version" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tranches_pretes_sprites_size" (
	"sprite_name" VARCHAR,
	"size" INT
);

CREATE TABLE "tranches_pretes_sprites" (
	"id" INT,
	"id_tranche" INT,
	"sprite_name" VARCHAR,
	"sprite_size" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tranches_pretes_contributions" (
	"id" INT,
	"id_tranche" INT,
	"id_user" INT,
	"dateajout" TIMESTAMP,
	"contribution" ENUM,
	"points_new" INT,
	"points_total" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tranches_pretes_contributeurs" (
	"publicationcode" VARCHAR,
	"issuenumber" VARCHAR,
	"contributeur" INT,
	"contribution" ENUM,
	 PRIMARY KEY ("publicationcode","issuenumber","contributeur","contribution")
);

CREATE TABLE "tranches_pretes" (
	"id" INT,
	"publicationcode" VARCHAR,
	"issuenumber" VARCHAR,
	"dateajout" TIMESTAMP,
	"points" INT,
	"slug" VARCHAR,
	"issuecode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tranches_doublons" (
	"id" INT,
	"pays" VARCHAR,
	"magazine" VARCHAR,
	"numero" VARCHAR,
	"numeroreference" VARCHAR,
	"tranchereference" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "numeros_popularite" (
	"pays" VARCHAR,
	"magazine" VARCHAR,
	"numero" VARCHAR,
	"popularite" INT,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "numeros" (
	"id" INT,
	"pays" VARCHAR,
	"magazine" VARCHAR,
	"numero" VARCHAR,
	"numero_nospace" VARCHAR,
	"etat" ENUM,
	"id_acquisition" INT,
	"av" TINYINT,
	"abonnement" TINYINT,
	"id_utilisateur" INT,
	"dateajout" TIMESTAMP,
	"issuecode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "magazines" (
	"paysabrege" VARCHAR,
	"nomabrege" VARCHAR,
	"nomcomplet" VARCHAR,
	"redirigedepuis" VARCHAR,
	"neparaitplus" TINYINT,
	 PRIMARY KEY ("paysabrege","nomabrege","redirigedepuis")
);

CREATE TABLE "demo" (
	"id" INT,
	"datedernierinit" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bouquineries" (
	"id" INT,
	"nom" VARCHAR,
	"adresse" TEXT,
	"adressecomplete" TEXT,
	"codepostal" INT,
	"ville" VARCHAR,
	"pays" VARCHAR,
	"commentaire" TEXT,
	"id_utilisateur" INT,
	"coordx" DOUBLE,
	"coordy" DOUBLE,
	"dateajout" TIMESTAMP,
	"actif" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_contributions" (
	"id" INT,
	"id_user" INT,
	"date" DATETIME,
	"contribution" VARCHAR,
	"points_new" INT,
	"points_total" INT,
	"emails_sent" TINYINT,
	"id_tranche" INT,
	"id_bookstore" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_contributions___fk_user" FOREIGN KEY ("id_user") REFERENCES "users" ("id"),
	 CONSTRAINT "FK_7FDC16F3A5778B6C" FOREIGN KEY ("id_bookstore") REFERENCES "bouquineries" ("id"),
	 CONSTRAINT "FK_7FDC16F375567043" FOREIGN KEY ("id_tranche") REFERENCES "tranches_pretes" ("id")
);

CREATE TABLE "bibliotheque_ordre_magazines" (
	"id" INT,
	"id_utilisateur" INT,
	"publicationcode" VARCHAR,
	"ordre" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bibliotheque_contributeurs" (
	"id" INT,
	"nom" VARCHAR,
	"texte" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auteurs_pseudos" (
	"id" INT,
	"nomauteurabrege" VARCHAR,
	"id_user" INT,
	"notation" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "achats" (
	"id_acquisition" INT,
	"id_user" INT,
	"date" DATE,
	"description" VARCHAR,
	 PRIMARY KEY ("id_acquisition")
);

CREATE TABLE "abonnements_sorties" (
	"pays" VARCHAR,
	"magazine" VARCHAR,
	"numero" VARCHAR,
	"date_sortie" DATE,
	"numeros_ajoutes" TINYINT,
	 PRIMARY KEY ("pays","magazine","numero")
);

CREATE TABLE "abonnements" (
	"id" INT,
	"id_utilisateur" INT,
	"pays" VARCHAR,
	"magazine" VARCHAR,
	"date_debut" DATE,
	"date_fin" DATE,
	 PRIMARY KEY ("id")
);
