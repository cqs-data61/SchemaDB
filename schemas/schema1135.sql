DROP DATABASE IF EXISTS "schema1135";
CREATE DATABASE "schema1135";
USE "schema1135";
CREATE TABLE "instrument" (
	"instrument_id" VARCHAR,
	 PRIMARY KEY ("instrument_id")
);

CREATE TABLE "singer" (
	"id" INT,
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
	 CONSTRAINT "FK_SINGER_INSTRUMENT_2" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id"),
	 CONSTRAINT "FK_SINGER_INSTRUMENT_1" FOREIGN KEY ("singer_id") REFERENCES "singer" ("id")
);

CREATE TABLE "album" (
	"id" INT,
	"singer_id" INT,
	"title" VARCHAR,
	"release_date" DATE,
	"version" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_ALBUM_SINGER" FOREIGN KEY ("singer_id") REFERENCES "singer" ("id")
);
