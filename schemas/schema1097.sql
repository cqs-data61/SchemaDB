DROP DATABASE IF EXISTS "schema1097";
CREATE DATABASE "schema1097";
USE "schema1097";
CREATE TABLE "tasklog" (
	"id" INTEGER,
	"ts" TEXT,
	"type" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
