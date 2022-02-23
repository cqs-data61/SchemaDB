DROP DATABASE IF EXISTS "schema31";
CREATE DATABASE "schema31";
USE "schema31";
CREATE TABLE "offer" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"price" INTEGER,
	"delivery_time" INTEGER,
	"revisions" INTEGER,
	"file_id" VARCHAR,
	"subcategory_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file" (
	"id" VARCHAR,
	"content_type" VARCHAR,
	"data" OID,
	"name" VARCHAR,
	"size" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subcategory" (
	"id" INTEGER,
	"name" VARCHAR,
	"category_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"name" VARCHAR,
	"icon" VARCHAR,
	 PRIMARY KEY ("id")
);
