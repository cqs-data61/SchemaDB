DROP DATABASE IF EXISTS "schema2151";
CREATE DATABASE "schema2151";
USE "schema2151";
CREATE TABLE "users" (
	"id" INTEGER,
	"registered_at" TIMESTAMP,
	"last_login" TIMESTAMP,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INTEGER,
	"tag" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tags_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "notes" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"note_title" VARCHAR,
	"note" TEXT,
	"note_markdown" TEXT,
	"tags" VARCHAR,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);
