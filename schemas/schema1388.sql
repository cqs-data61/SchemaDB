DROP DATABASE IF EXISTS "schema1388";
CREATE DATABASE "schema1388";
USE "schema1388";
CREATE TABLE "persona" (
	"username" VARCHAR,
	"nome" VARCHAR,
	"cognome" VARCHAR,
	"email" VARCHAR,
	"telefono" VARCHAR,
	"citta" VARCHAR,
	"tipo" INT,
	"comune" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "suggerimenti" (
	"id" INT,
	"titolo" VARCHAR,
	"testo" VARCHAR,
	"personausername" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "suggerimenti_ibfk_1" FOREIGN KEY ("personausername") REFERENCES "persona" ("username")
);

CREATE TABLE "attivita" (
	"idattivita" INT,
	"nome" VARCHAR,
	"comune" VARCHAR,
	"oraapertura" INT,
	"orachiusura" INT,
	"giornochiusura" VARCHAR,
	"indirizzo" VARCHAR,
	"telefono" VARCHAR,
	"numposti" INT,
	"mappa" VARCHAR,
	"personausername" VARCHAR,
	 PRIMARY KEY ("idattivita")
);

CREATE TABLE "recensione" (
	"idrecensione" INT,
	"valutazione" INT,
	"commento" VARCHAR,
	"personausername" VARCHAR,
	"attivitaidattivita" INT,
	 PRIMARY KEY ("idrecensione"),
	 CONSTRAINT "recensione_ibfk_2" FOREIGN KEY ("attivitaidattivita") REFERENCES "attivita" ("idattivita"),
	 CONSTRAINT "recensione_ibfk_1" FOREIGN KEY ("personausername") REFERENCES "persona" ("username")
);

CREATE TABLE "prenotazione" (
	"idpren" INT,
	"data" DATE,
	"ora" INT,
	"numposti" INT,
	"personausername" VARCHAR,
	"attivitaidattivita" INT,
	 PRIMARY KEY ("idpren"),
	 CONSTRAINT "prenotazione_ibfk_1" FOREIGN KEY ("personausername") REFERENCES "persona" ("username"),
	 CONSTRAINT "prenotazione_ibfk_2" FOREIGN KEY ("attivitaidattivita") REFERENCES "attivita" ("idattivita")
);

CREATE TABLE "preferiti" (
	"idpref" INT,
	"personausername" VARCHAR,
	"attivitaidattivita" INT,
	 PRIMARY KEY ("idpref"),
	 CONSTRAINT "preferiti_ibfk_2" FOREIGN KEY ("attivitaidattivita") REFERENCES "attivita" ("idattivita"),
	 CONSTRAINT "preferiti_ibfk_1" FOREIGN KEY ("personausername") REFERENCES "persona" ("username")
);

CREATE TABLE "piatti" (
	"idpiatto" INT,
	"piatto" VARCHAR,
	"descrizione" VARCHAR,
	"attivitaidattivita" INT,
	 PRIMARY KEY ("idpiatto"),
	 CONSTRAINT "piatti_ibfk_1" FOREIGN KEY ("attivitaidattivita") REFERENCES "attivita" ("idattivita")
);

CREATE TABLE "foto" (
	"foto" VARCHAR,
	"attivitaidattivita" INT,
	 PRIMARY KEY ("foto"),
	 CONSTRAINT "foto_ibfk_1" FOREIGN KEY ("attivitaidattivita") REFERENCES "attivita" ("idattivita")
);
