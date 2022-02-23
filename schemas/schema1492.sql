DROP DATABASE IF EXISTS "schema1492";
CREATE DATABASE "schema1492";
USE "schema1492";
CREATE TABLE "post" (
	"id" BIGINT,
	"posted_at" DATETIME,
	"title" VARCHAR,
	"content" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email_address" VARCHAR,
	"profile_pic_url" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
