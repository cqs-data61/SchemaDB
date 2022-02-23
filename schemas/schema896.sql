DROP DATABASE IF EXISTS "schema896";
CREATE DATABASE "schema896";
USE "schema896";
CREATE TABLE "stanze" (
	"id" INT,
	"room_number" INT,
	"floor" INT,
	"beds" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "prenotazioni_has_ospiti" (
	"id" INT,
	"prenotazione_id" INT,
	"ospite_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "prenotazioni" (
	"id" INT,
	"stanza_id" INT,
	"configurazione_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "paganti" (
	"id" INT,
	"ospite_id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"address" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "pagamenti" (
	"id" INT,
	"status" VARCHAR,
	"price" FLOAT,
	"prenotazione_id" INT,
	"pagante_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ospiti" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"date_of_birth" DATETIME,
	"document_type" VARCHAR,
	"document_number" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "configurazioni" (
	"id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
