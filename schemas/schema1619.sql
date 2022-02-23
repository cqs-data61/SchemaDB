DROP DATABASE IF EXISTS "schema1619";
CREATE DATABASE "schema1619";
USE "schema1619";
CREATE TABLE "routine" (
	"id" INTEGER,
	"name" VARCHAR,
	"creator_id" INTEGER,
	"body" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"focus_group" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "exercise" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" TEXT,
	"category_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
