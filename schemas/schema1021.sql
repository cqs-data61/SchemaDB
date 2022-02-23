DROP DATABASE IF EXISTS "schema1021";
CREATE DATABASE "schema1021";
USE "schema1021";
CREATE TABLE "users" (
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "todos" (
	"id" SERIAL,
	"title" TEXT,
	"done" BOOLEAN,
	"username" TEXT,
	"todolist_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "todolists" (
	"id" SERIAL,
	"title" TEXT,
	"username" TEXT,
	 PRIMARY KEY ("id")
);
