DROP DATABASE IF EXISTS "schema2382";
CREATE DATABASE "schema2382";
USE "schema2382";
CREATE TABLE "instrument" (
	"instrument_id" VARCHAR,
	 PRIMARY KEY ("instrument_id")
);

CREATE TABLE "singer_audit" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"birth_date" DATE,
	"version" INT,
	"created_by" VARCHAR,
	"created_date" TIMESTAMP,
	"last_modified_by" VARCHAR,
	"last_modified_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "singer" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"birth_date" DATE,
	"version" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "singer_instrument" (
	"singer_id" INT,
	"instrument_id" VARCHAR,
	 PRIMARY KEY ("singer_id","instrument_id"),
	 CONSTRAINT "fk_singer_instrument_1" FOREIGN KEY ("singer_id") REFERENCES "singer" ("id"),
	 CONSTRAINT "fk_singer_instrument_2" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "album" (
	"id" SERIAL,
	"singer_id" INT,
	"title" VARCHAR,
	"release_date" DATE,
	"version" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_album_singer" FOREIGN KEY ("singer_id") REFERENCES "singer" ("id")
);
