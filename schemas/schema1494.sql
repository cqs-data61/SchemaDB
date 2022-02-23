DROP DATABASE IF EXISTS "schema1494";
CREATE DATABASE "schema1494";
USE "schema1494";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blog" (
	"id" INT,
	"title" VARCHAR,
	"content" TEXT,
	"create_date" DATETIME,
	"update_date" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"text" TEXT,
	"date" DATETIME,
	"user_id" INT,
	"blog_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "comment_ibfk_2" FOREIGN KEY ("blog_id") REFERENCES "blog" ("id")
);
