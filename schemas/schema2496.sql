DROP DATABASE IF EXISTS "schema2496";
CREATE DATABASE "schema2496";
USE "schema2496";
CREATE TABLE "accounts" (
	"id" SERIAL,
	"nickname" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" SERIAL,
	"account_id" INTEGER,
	"created_at" DATETIME,
	"title" VARCHAR,
	"content" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_account" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);

CREATE TABLE "profiles" (
	"account_id" INTEGER,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "fk_account" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);
