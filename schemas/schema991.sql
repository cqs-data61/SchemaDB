DROP DATABASE IF EXISTS "schema991";
CREATE DATABASE "schema991";
USE "schema991";
CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"create_at" DATETIME,
	"update_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" SERIAL,
	"title" VARCHAR,
	"content" VARCHAR,
	"create_at" DATETIME,
	"update_at" DATETIME,
	"author_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_users" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);

CREATE TABLE "confirmation_users" (
	"id" SERIAL,
	"activated" BOOLEAN,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_users" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);
