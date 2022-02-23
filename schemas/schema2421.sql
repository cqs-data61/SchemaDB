DROP DATABASE IF EXISTS "schema2421";
CREATE DATABASE "schema2421";
USE "schema2421";
CREATE TABLE "comments" (
	"id" VARCHAR,
	"body" TEXT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"article_id" VARCHAR,
	"author_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" VARCHAR,
	"slug" CITEXT,
	"title" TEXT,
	"body" TEXT,
	"description" TEXT,
	"favorite_count" INTEGER,
	"tags" TEXT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"author_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"email" CITEXT,
	"username" CITEXT,
	"hash" TEXT,
	"bio" TEXT,
	"image" TEXT,
	 PRIMARY KEY ("id")
);
