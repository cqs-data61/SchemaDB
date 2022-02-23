DROP DATABASE IF EXISTS "schema775";
CREATE DATABASE "schema775";
USE "schema775";
CREATE TABLE "thumb" (
	"id" INT,
	"source_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INT,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pages" (
	"manga_id" INT,
	"source_url" VARCHAR,
	"order" INT
);

CREATE TABLE "meta" (
	"id" INT,
	"type" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "manga_tags" (
	"manga_id" INT,
	"tag_id" INT,
	"order" INT
);

CREATE TABLE "manga" (
	"id" INT,
	"source_id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"thumb_id" INT,
	"artist_meta_id" INT,
	"language_meta_id" INT,
	"magazine_meta_id" INT,
	"publisher_meta_id" INT,
	 PRIMARY KEY ("id")
);
