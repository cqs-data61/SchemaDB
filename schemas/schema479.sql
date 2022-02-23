DROP DATABASE IF EXISTS "schema479";
CREATE DATABASE "schema479";
USE "schema479";
CREATE TABLE "tbl_tag" (
	"id" INTEGER,
	"name" VARCHAR,
	"frequency" INTEGER
);

CREATE TABLE "tbl_user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"profile" TEXT
);

CREATE TABLE "tbl_post" (
	"id" INTEGER,
	"title" VARCHAR,
	"content" TEXT,
	"tags" TEXT,
	"status" INTEGER,
	"create_time" INTEGER,
	"update_time" INTEGER,
	"author_id" INTEGER,
	 CONSTRAINT "FK_post_author" FOREIGN KEY ("author_id") REFERENCES "tbl_user" ("id")
);

CREATE TABLE "tbl_comment" (
	"id" INTEGER,
	"content" TEXT,
	"status" INTEGER,
	"create_time" INTEGER,
	"author" VARCHAR,
	"email" VARCHAR,
	"url" VARCHAR,
	"post_id" INTEGER,
	 CONSTRAINT "FK_comment_post" FOREIGN KEY ("post_id") REFERENCES "tbl_post" ("id")
);

CREATE TABLE "tbl_lookup" (
	"id" INTEGER,
	"name" VARCHAR,
	"code" INTEGER,
	"type" VARCHAR,
	"position" INTEGER
);
