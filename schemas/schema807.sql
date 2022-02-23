DROP DATABASE IF EXISTS "schema807";
CREATE DATABASE "schema807";
USE "schema807";
CREATE TABLE "card_trash" (
	"id" BIGINT,
	"email" VARCHAR,
	"version" INT,
	"created_on" TIMESTAMP,
	"updated_on" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "card_master" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"version" INT,
	"created_on" TIMESTAMP,
	"updated_on" TIMESTAMP,
	 PRIMARY KEY ("id")
);
