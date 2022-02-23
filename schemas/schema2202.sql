DROP DATABASE IF EXISTS "schema2202";
CREATE DATABASE "schema2202";
USE "schema2202";
CREATE TABLE "bands" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "albums" (
	"id" INT,
	"name" VARCHAR,
	"release_year" INT,
	"band_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_albums_to_bands" FOREIGN KEY ("band_id") REFERENCES "bands" ("id")
);
