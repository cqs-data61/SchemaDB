DROP DATABASE IF EXISTS "schema433";
CREATE DATABASE "schema433";
USE "schema433";
CREATE TABLE "catting" (
	"id" INTEGER,
	"note_id" INTEGER,
	"cat_id" INTEGER,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cats" (
	"id" INTEGER,
	"name" TEXT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tagging" (
	"id" INTEGER,
	"snip_id" INTEGER,
	"tag_id" INTEGER,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INTEGER,
	"name" TEXT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snips" (
	"id" INTEGER,
	"name" TEXT,
	"content" TEXT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notes" (
	"id" INTEGER,
	"name" TEXT,
	"content" TEXT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);
