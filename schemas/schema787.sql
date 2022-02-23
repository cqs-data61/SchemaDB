DROP DATABASE IF EXISTS "schema787";
CREATE DATABASE "schema787";
USE "schema787";
CREATE TABLE "topics" (
	"id" BIGINT,
	"user_id" BIGINT,
	"title" VARCHAR,
	"body" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"username" VARCHAR,
	"birthday" DATE,
	"email_confirmed" BOOLEAN,
	"email" VARCHAR,
	"gender" VARCHAR,
	"password_digest" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
