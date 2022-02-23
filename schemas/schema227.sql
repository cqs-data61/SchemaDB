DROP DATABASE IF EXISTS "schema227";
CREATE DATABASE "schema227";
USE "schema227";
CREATE TABLE "session_b" (
	"id" INTEGER,
	"account_id" INTEGER,
	"maybe_account_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session_a" (
	"id" INTEGER,
	"fk_account_id" INTEGER,
	"fk_maybe_account" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
