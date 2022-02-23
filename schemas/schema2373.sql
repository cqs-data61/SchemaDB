DROP DATABASE IF EXISTS "schema2373";
CREATE DATABASE "schema2373";
USE "schema2373";
CREATE TABLE "messages" (
	"id" INTEGER,
	"sender" INTEGER,
	"recipient" INTEGER,
	"type" TEXT,
	"url" TEXT,
	"text" TEXT,
	"timestamp" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"user_name" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
