DROP DATABASE IF EXISTS "schema388";
CREATE DATABASE "schema388";
USE "schema388";
CREATE TABLE "short_message" (
	"id" INT,
	"author_id" INT,
	"posted_time" TIMESTAMP,
	"message_text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"author_id" INT,
	"role" VARCHAR
);

CREATE TABLE "author" (
	"id" INT,
	"username" VARCHAR,
	"fullname" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
