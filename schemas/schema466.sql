DROP DATABASE IF EXISTS "schema466";
CREATE DATABASE "schema466";
USE "schema466";
CREATE TABLE "chord_type" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chord_type_note" (
	"id" BIGSERIAL,
	"chord_type_id" BIGINT,
	"note" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_chord_type_note_type_id" FOREIGN KEY ("chord_type_id") REFERENCES "chord_type" ("id")
);

CREATE TABLE "note_type" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"letter" VARCHAR,
	"note" INTEGER,
	"note_type_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_note_note_type" FOREIGN KEY ("note_type_id") REFERENCES "note_type" ("id")
);

CREATE TABLE "letter" (
	"id" BIGSERIAL,
	"letter" VARCHAR,
	"letter_ordinal" INTEGER,
	 PRIMARY KEY ("id")
);
