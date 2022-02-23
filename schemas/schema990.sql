DROP DATABASE IF EXISTS "schema990";
CREATE DATABASE "schema990";
USE "schema990";
CREATE TABLE "letters" (
	"id" SERIAL,
	"title" VARCHAR,
	"raw_content" LONGTEXT,
	"status" ENUM,
	"sender_id" SERIAL,
	"recipient_id" SERIAL,
	"sent_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
