DROP DATABASE IF EXISTS "schema14";
CREATE DATABASE "schema14";
USE "schema14";
CREATE TABLE "users" (
	"id" INT,
	"nom" VARCHAR,
	"prenom" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"admin" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "forum" (
	"id" INT,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"userid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conversation" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"title" VARCHAR,
	"forum_id" INT,
	"userid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message" (
	"id" INT,
	"conversation_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"content" TEXT,
	"userid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "message_conversation_id_fk" FOREIGN KEY ("conversation_id") REFERENCES "conversation" ("id")
);
