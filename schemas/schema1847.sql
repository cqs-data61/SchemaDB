DROP DATABASE IF EXISTS "schema1847";
CREATE DATABASE "schema1847";
USE "schema1847";
CREATE TABLE "osoby_jazyky" (
	"osoba_id" INTEGER,
	"jazyk_id" INTEGER,
	"akt_ucebnice_id" INTEGER
);

CREATE TABLE "jazyky" (
	"id" INTEGER,
	"nazev" VARCHAR,
	"to_speak" STRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "testovana_slovicka" (
	"osoba_id" INTEGER,
	"slovicko_id" INTEGER,
	"testovat" BOOLEAN
);

CREATE TABLE "vysledky" (
	"id" INTEGER,
	"osoba_id" INTEGER,
	"lekce_id" INTEGER,
	"uspesnost" INTEGER,
	"datum" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "slovicka" (
	"id" INTEGER,
	"cz" VARCHAR,
	"preklad" VARCHAR,
	"lekce_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lekce" (
	"id" INTEGER,
	"ucebnice_id" INTEGER,
	"cislo" INTEGER,
	"nazev" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ucebnice" (
	"id" INTEGER,
	"nazev" VARCHAR,
	"jazyk_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "osoby" (
	"id" INTEGER,
	"jmeno" TEXT,
	"akt_jazyk_id" INTEGER,
	 PRIMARY KEY ("id")
);
