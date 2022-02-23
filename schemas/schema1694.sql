DROP DATABASE IF EXISTS "schema1694";
CREATE DATABASE "schema1694";
USE "schema1694";
CREATE TABLE "feed" (
	"id" INT,
	"created_date" DATETIME,
	"user_id" INT,
	"data" TINYTEXT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message" (
	"id" INT,
	"from_id" INT,
	"to_id" INT,
	"content" TEXT,
	"created_date" DATETIME,
	"has_read" INT,
	"conversation_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"content" TEXT,
	"user_id" INT,
	"entity_id" INT,
	"entity_type" INT,
	"created_date" DATETIME,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "login_ticket" (
	"id" INT,
	"user_id" INT,
	"ticket" VARCHAR,
	"expired" DATETIME,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"head_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "question" (
	"id" INT,
	"title" VARCHAR,
	"content" TEXT,
	"user_id" INT,
	"created_date" DATETIME,
	"comment_count" INT,
	 PRIMARY KEY ("id")
);
