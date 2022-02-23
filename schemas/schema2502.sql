DROP DATABASE IF EXISTS "schema2502";
CREATE DATABASE "schema2502";
USE "schema2502";
CREATE TABLE "tags" (
	"name" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "offers" (
	"id" SERIAL,
	"owner_id" INTEGER,
	"title" TEXT,
	"description" TEXT,
	"creation_timestamp" TIMESTAMP,
	"is_archived" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "thumbnails" (
	"id" SERIAL,
	"offer_id" SERIAL,
	"url" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_offer" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);

CREATE TABLE "tiers" (
	"id" SERIAL,
	"offer_id" SERIAL,
	"title" TEXT,
	"description" TEXT,
	"price" NUMERIC,
	"delivery_time" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_offer" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);

CREATE TABLE "offers_tags" (
	"offer_id" SERIAL,
	"tag_name" TEXT,
	 PRIMARY KEY ("offer_id","tag_name"),
	 CONSTRAINT "fk_tag" FOREIGN KEY ("tag_name") REFERENCES "tags" ("name"),
	 CONSTRAINT "fk_offer" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);
