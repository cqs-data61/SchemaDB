DROP DATABASE IF EXISTS "schema1387";
CREATE DATABASE "schema1387";
USE "schema1387";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "post" (
	"id" INT,
	"author_id" INT,
	"created" TIMESTAMP,
	"title" TEXT,
	"body" TEXT,
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
