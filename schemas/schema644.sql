DROP DATABASE IF EXISTS "schema644";
CREATE DATABASE "schema644";
USE "schema644";
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
