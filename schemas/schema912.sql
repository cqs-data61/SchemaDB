DROP DATABASE IF EXISTS "schema912";
CREATE DATABASE "schema912";
USE "schema912";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "article" (
	"id" INTEGER,
	"uploader_id" INTEGER,
	"uploaded" TIMESTAMP,
	"published" TEXT,
	"author" TEXT,
	"title" TEXT,
	"body" TEXT,
	"sentiment" TEXT,
	"article_url" TEXT,
	"keyword" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_article_to_user" FOREIGN KEY ("uploader_id") REFERENCES "user" ("id")
);
