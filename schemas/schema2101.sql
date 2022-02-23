DROP DATABASE IF EXISTS "schema2101";
CREATE DATABASE "schema2101";
USE "schema2101";
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
