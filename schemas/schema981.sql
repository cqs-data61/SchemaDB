DROP DATABASE IF EXISTS "schema981";
CREATE DATABASE "schema981";
USE "schema981";
CREATE TABLE "users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"bio" TINYTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tweets" (
	"id" VARCHAR,
	"tweet" TEXT,
	"user_id" VARCHAR,
	"media" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" VARCHAR,
	"name" TINYTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag_tweet" (
	"tag_id" VARCHAR,
	"tweet_id" VARCHAR
);

CREATE TABLE "comments" (
	"id" VARCHAR,
	"comment" TEXT,
	"media" VARCHAR,
	"tweet_id" VARCHAR,
	"user_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag_comment" (
	"tag_id" VARCHAR,
	"comment_id" VARCHAR
);
