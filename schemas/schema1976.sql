DROP DATABASE IF EXISTS "schema1976";
CREATE DATABASE "schema1976";
USE "schema1976";
CREATE TABLE "media_type" (
	"id" INT,
	"name" VARCHAR,
	"search" VARCHAR,
	"search_property" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "treasure" (
	"id" INT,
	"name" VARCHAR,
	"category" VARCHAR,
	"type" VARCHAR,
	"size" BIGINT,
	"location" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media" (
	"id" INT,
	"treasure_id" INT,
	"media_type_id" INT,
	"matched" BIT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_media_to_media_type" FOREIGN KEY ("media_type_id") REFERENCES "media_type" ("id"),
	 CONSTRAINT "fkeycon_media_to_treasure" FOREIGN KEY ("treasure_id") REFERENCES "treasure" ("id")
);
