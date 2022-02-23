DROP DATABASE IF EXISTS "schema705";
CREATE DATABASE "schema705";
USE "schema705";
CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"org_id" INT,
	"access_level" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "team_creation_queue" (
	"id" INT,
	"team_name" VARCHAR,
	"created_by" VARCHAR,
	"under_tribe" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "card_queue" (
	"queue_id" INT,
	"cid" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"image_url" VARCHAR,
	"bookmark" VARCHAR,
	"tribe" VARCHAR,
	"team" VARCHAR,
	"hidden" BOOLEAN,
	"remove" BOOLEAN,
	"suggested_by" VARCHAR,
	 PRIMARY KEY ("queue_id")
);

CREATE TABLE "tags" (
	"id" INT,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "org" (
	"id" INT,
	"tribe_name" VARCHAR,
	"team_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "card" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"image_url" VARCHAR,
	"bookmark" VARCHAR,
	"hidden" BOOLEAN,
	"tribe" VARCHAR,
	"team" VARCHAR,
	"created_by" VARCHAR,
	"last_updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "card_tag" (
	"id" INT,
	"cid" INT,
	"tid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_card_tag_to_card" FOREIGN KEY ("cid") REFERENCES "card" ("id"),
	 CONSTRAINT "fkeycon_card_tag_to_tags" FOREIGN KEY ("tid") REFERENCES "tags" ("id")
);
