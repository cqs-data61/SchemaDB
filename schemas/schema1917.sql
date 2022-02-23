DROP DATABASE IF EXISTS "schema1917";
CREATE DATABASE "schema1917";
USE "schema1917";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session" (
	"sid" VARCHAR,
	"expires" DATETIME,
	"data" TEXT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "post" (
	"id" INT,
	"title" VARCHAR,
	"post_url" VARCHAR,
	"user_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vote" (
	"id" INT,
	"user_id" INT,
	"post_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "vote_ibfk_2" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "vote_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"comment_text" VARCHAR,
	"user_id" INT,
	"post_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
