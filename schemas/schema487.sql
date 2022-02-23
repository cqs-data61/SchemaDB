DROP DATABASE IF EXISTS "schema487";
CREATE DATABASE "schema487";
USE "schema487";
CREATE TABLE "logs" (
	"id" SERIAL,
	"message" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"account_id" INTEGER,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" SERIAL,
	"name" VARCHAR,
	"disabled" BOOLEAN,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
