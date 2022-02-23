DROP DATABASE IF EXISTS "schema1830";
CREATE DATABASE "schema1830";
USE "schema1830";
CREATE TABLE "consumer" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item_type" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item_category" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menu" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "store" (
	"id" VARCHAR,
	"nickname" VARCHAR,
	 PRIMARY KEY ("id")
);
