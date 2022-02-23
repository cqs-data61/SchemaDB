DROP DATABASE IF EXISTS "schema1260";
CREATE DATABASE "schema1260";
USE "schema1260";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"question_id" INT,
	"content" VARCHAR,
	"user_id" INT,
	"posted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions" (
	"id" INT,
	"code" VARCHAR,
	"content" VARCHAR,
	"user_id" INT,
	"posted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
