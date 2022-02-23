DROP DATABASE IF EXISTS "schema1103";
CREATE DATABASE "schema1103";
USE "schema1103";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"fullname" VARCHAR
);

CREATE TABLE "links" (
	"id" INT,
	"title" VARCHAR,
	"url" VARCHAR,
	"description" TEXT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
