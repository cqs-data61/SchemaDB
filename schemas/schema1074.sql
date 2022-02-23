DROP DATABASE IF EXISTS "schema1074";
CREATE DATABASE "schema1074";
USE "schema1074";
CREATE TABLE "users" (
	"id" INT,
	"username" TEXT,
	"hashpass" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "videos" (
	"id" INT,
	"slug" TEXT,
	"uploader" INT,
	"title" TEXT,
	"description" TEXT,
	"status" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_users" FOREIGN KEY ("uploader") REFERENCES "users" ("id")
);

CREATE TABLE "meta_info" (
	"version" INT,
	 PRIMARY KEY ("version")
);
