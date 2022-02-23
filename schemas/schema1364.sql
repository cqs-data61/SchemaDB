DROP DATABASE IF EXISTS "schema1364";
CREATE DATABASE "schema1364";
USE "schema1364";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"email" VARCHAR
);

CREATE TABLE "post" (
	"id" INTEGER,
	"title" VARCHAR,
	"content" TEXT,
	"createdat" TIMESTAMP,
	"authorid" INTEGER,
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("authorid") REFERENCES "user" ("id")
);
