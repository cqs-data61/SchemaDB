DROP DATABASE IF EXISTS "schema1893";
CREATE DATABASE "schema1893";
USE "schema1893";
CREATE TABLE "tapahtumaloki" (
	"id" INTEGER,
	"aikaleima" TEXT,
	"komento" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "symbolit" (
	"id" INTEGER,
	"tietokannan_versio" INTEGER,
	"muuttolaatikoiden_määrä" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tilaukset" (
	"id" INTEGER,
	"asiakas_id" INTEGER,
	"toimitustapa_id" INTEGER,
	"toimituspvm" TEXT,
	"varausnumero" INTEGER,
	"lisätiedot" TEXT,
	"poistettu" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "asiakkaat" (
	"id" INTEGER,
	"nimi" TEXT,
	"puhelinnumero" TEXT,
	"osoite" TEXT,
	"lisätiedot" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "muuttolaatikkovuokrat" (
	"id" INTEGER,
	"asiakas_id" INTEGER,
	"laatikoiden_määrä" INTEGER,
	"vastike" TEXT,
	"alkupvm" TEXT,
	"loppupvm" TEXT,
	"lisätiedot" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "toimitustavat" (
	"id" INTEGER,
	"kuvaus" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tilat" (
	"id" INTEGER,
	"kuvaus" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sijainnit" (
	"id" INTEGER,
	"kuvaus" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tuotteet" (
	"id" INTEGER,
	"saapumispvm" TEXT,
	"kuvaus" TEXT,
	"hinta" TEXT,
	"koodi" TEXT,
	"sijainti_id" INTEGER,
	"tila_id" INTEGER,
	"lisätiedot" TEXT,
	"tilaus_id" INTEGER,
	"poistettu" BOOLEAN,
	 PRIMARY KEY ("id")
);
