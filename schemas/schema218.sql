DROP DATABASE IF EXISTS "schema218";
CREATE DATABASE "schema218";
USE "schema218";
CREATE TABLE "comments" (
	"id" SERIAL,
	"comment" TEXT,
	"created_at" TIMESTAMP,
	"post_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "likes" (
	"user_id" INTEGER,
	"post_id" INTEGER
);

CREATE TABLE "tags_posts" (
	"tag_id" INTEGER,
	"post_id" INTEGER
);

CREATE TABLE "tags" (
	"id" SERIAL,
	"tag" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"url" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" TEXT,
	"email" TEXT,
	 PRIMARY KEY ("id")
);
