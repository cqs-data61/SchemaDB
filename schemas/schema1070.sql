DROP DATABASE IF EXISTS "schema1070";
CREATE DATABASE "schema1070";
USE "schema1070";
CREATE TABLE "ryhmä" (
	"id" SERIAL,
	"nimi" TEXT,
	"ravintola_id" INTEGER,
	"type" TEXT,
	"kuvaus" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "arvostelu" (
	"id" SERIAL,
	"user_id" INTEGER,
	"ravintola_id" INTEGER,
	"arvostelu" INTEGER,
	"kommentti" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ravintola" (
	"id" SERIAL,
	"nimi" TEXT,
	"osoite" TEXT,
	"kuvaus" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"type" TEXT,
	 PRIMARY KEY ("id")
);
