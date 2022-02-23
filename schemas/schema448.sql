DROP DATABASE IF EXISTS "schema448";
CREATE DATABASE "schema448";
USE "schema448";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"email" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "todo" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"body" TEXT,
	"type" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_todo_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
