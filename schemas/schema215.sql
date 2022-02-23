DROP DATABASE IF EXISTS "schema215";
CREATE DATABASE "schema215";
USE "schema215";
CREATE TABLE "reply" (
	"reply_id" INTEGER,
	"root_reply_id" INTEGER,
	"author_id" INTEGER,
	"post_id" INTEGER,
	"body" TEXT,
	"score" INTEGER,
	"created_at" DATETIME
);

CREATE TABLE "post" (
	"post_id" INTEGER,
	"author_id" INTEGER,
	"title" TEXT,
	"content" TEXT,
	"created_at" DATETIME,
	"score" INTEGER
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"name" VARCHAR,
	"password" TEXT,
	"email" TEXT,
	"avatar" BLOB
);
