DROP DATABASE IF EXISTS "schema941";
CREATE DATABASE "schema941";
USE "schema941";
CREATE TABLE "authors" (
	"id" VARCHAR,
	"name" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quotes" (
	"id" VARCHAR,
	"channel" VARCHAR,
	"author_id" VARCHAR,
	"author" VARCHAR,
	"avatar" VARCHAR,
	"quote" VARCHAR,
	"added_at" DATETIME,
	 PRIMARY KEY ("id")
);
