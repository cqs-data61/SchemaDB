DROP DATABASE IF EXISTS "schema2169";
CREATE DATABASE "schema2169";
USE "schema2169";
CREATE TABLE "custom_user" (
	"id" SERIAL,
	"email" TEXT,
	"name" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" SERIAL,
	"title" TEXT,
	"author" TEXT,
	"genre" TEXT,
	 PRIMARY KEY ("id")
);
