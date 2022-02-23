DROP DATABASE IF EXISTS "schema163";
CREATE DATABASE "schema163";
USE "schema163";
CREATE TABLE "page" (
	"lang" VARCHAR,
	"article_id" INT,
	"title" VARCHAR,
	 PRIMARY KEY ("lang","article_id")
);

CREATE TABLE "custom" (
	"id" INT,
	"article_id" INT,
	"lang" VARCHAR,
	"replacement" VARCHAR,
	"cs" TINYINT,
	"last_update" DATE,
	"reviewer" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "replacement2" (
	"id" INT,
	"article_id" INT,
	"lang" VARCHAR,
	"type" VARCHAR,
	"subtype" VARCHAR,
	"position" INT,
	"context" VARCHAR,
	"last_update" DATE,
	"reviewer" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);
