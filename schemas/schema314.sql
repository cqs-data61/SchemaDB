DROP DATABASE IF EXISTS "schema314";
CREATE DATABASE "schema314";
USE "schema314";
CREATE TABLE "comment" (
	"id" INT,
	"comment" TEXT,
	"user_id" INT,
	"entity_id" INT,
	"entity_type" INT,
	"created_date" DATETIME,
	"status" INT
);

CREATE TABLE "login_ticket" (
	"id" INT,
	"user_id" INT,
	"expired" DATETIME,
	"ticket" VARCHAR,
	"status" INT
);

CREATE TABLE "news" (
	"id" INT,
	"title" VARCHAR,
	"link" VARCHAR,
	"image" VARCHAR,
	"like_count" INT,
	"comment_count" INT,
	"created_date" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"head_url" VARCHAR
);
