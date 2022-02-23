DROP DATABASE IF EXISTS "schema2289";
CREATE DATABASE "schema2289";
USE "schema2289";
CREATE TABLE "todos" (
	"id" SERIAL,
	"list_id" INT,
	"name" TEXT,
	"completed" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lists" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
