DROP DATABASE IF EXISTS "schema1459";
CREATE DATABASE "schema1459";
USE "schema1459";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"nbsucces" INT,
	"nbtentative" INT,
	"teacher" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cours" (
	"id_cours" INT,
	"titre" VARCHAR,
	"id_user" INT,
	"nbsucces" INT,
	"nbtentative" INT,
	 PRIMARY KEY ("id_cours"),
	 CONSTRAINT "fkeycon_cours_to_user" FOREIGN KEY ("id_user") REFERENCES "user" ("id")
);

CREATE TABLE "user_cours" (
	"id_user" INT,
	"id_cours" INT,
	 PRIMARY KEY ("id_user","id_cours"),
	 CONSTRAINT "fkeycon_user_cours_to_user" FOREIGN KEY ("id_user") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_user_cours_to_cours" FOREIGN KEY ("id_cours") REFERENCES "cours" ("id_cours")
);

CREATE TABLE "exo" (
	"id_exo" INT,
	"enonce" VARCHAR,
	"indice" VARCHAR,
	"reponse" VARCHAR,
	"nbsucces" INT,
	"nbtentative" INT,
	"id_cours" INT,
	 PRIMARY KEY ("id_exo"),
	 CONSTRAINT "fkeycon_exo_to_cours" FOREIGN KEY ("id_cours") REFERENCES "cours" ("id_cours")
);

CREATE TABLE "user_exo" (
	"id_user" INT,
	"id_exo" INT,
	"status" INT,
	 PRIMARY KEY ("id_user","id_exo"),
	 CONSTRAINT "fkeycon_user_exo_to_exo" FOREIGN KEY ("id_exo") REFERENCES "exo" ("id_exo"),
	 CONSTRAINT "fkeycon_user_exo_to_user" FOREIGN KEY ("id_user") REFERENCES "user" ("id")
);
