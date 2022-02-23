DROP DATABASE IF EXISTS "schema790";
CREATE DATABASE "schema790";
USE "schema790";
CREATE TABLE "reply" (
	"id" INTEGER,
	"comment_id" INTEGER,
	"date" DATETIME,
	"user" VARCHAR,
	"right_bias" INTEGER,
	"left_bias" INTEGER,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "article" (
	"id" INTEGER,
	"date_written" DATETIME,
	"author" VARCHAR,
	"source" VARCHAR,
	"title" VARCHAR,
	"right_bias" INTEGER,
	"left_bias" INTEGER,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service" (
	"id" INTEGER,
	"name" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INTEGER,
	"article_id" INTEGER,
	"date" DATETIME,
	"user" VARCHAR,
	"right_bias" INTEGER,
	"left_bias" INTEGER,
	"content" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comment_to_user" FOREIGN KEY ("user") REFERENCES "user" ("username"),
	 CONSTRAINT "fkeycon_comment_to_article" FOREIGN KEY ("article_id") REFERENCES "article" ("id")
);
