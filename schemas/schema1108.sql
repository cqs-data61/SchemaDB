DROP DATABASE IF EXISTS "schema1108";
CREATE DATABASE "schema1108";
USE "schema1108";
CREATE TABLE "sync_information" (
	"id" SERIAL,
	"last_sync" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comics" (
	"comic_id" INT4,
	"digital_id" INT4,
	"title" VARCHAR,
	"description" TEXT,
	"modified" DATETIME,
	"img_path" TEXT,
	"img_ext" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("comic_id")
);

CREATE TABLE "creator_by_comics" (
	"creator_id" INT4,
	"comic_id" INT4,
	"name" VARCHAR,
	"role" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("creator_id"),
	 CONSTRAINT "fk_crearor_comics" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);

CREATE TABLE "characters" (
	"character_id" INT4,
	"name" VARCHAR,
	"description" TEXT,
	"img_path" TEXT,
	"img_ext" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("character_id")
);

CREATE TABLE "character_by_comics" (
	"character_id" INT4,
	"comic_id" INT4,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("character_id","comic_id"),
	 CONSTRAINT "fk_character_by_comics_character" FOREIGN KEY ("character_id") REFERENCES "characters" ("character_id"),
	 CONSTRAINT "fk_character_by_comics_ccomics" FOREIGN KEY ("comic_id") REFERENCES "comics" ("comic_id")
);
