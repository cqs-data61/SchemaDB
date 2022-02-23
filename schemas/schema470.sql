DROP DATABASE IF EXISTS "schema470";
CREATE DATABASE "schema470";
USE "schema470";
CREATE TABLE "users" (
	"id" INT,
	"datereg" DATETIME,
	"email" CHAR,
	"name" CHAR,
	"password" CHAR,
	"contacts" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" INT,
	"datecreate" DATETIME,
	"datedone" DATETIME,
	"name" TEXT,
	"file" TEXT,
	"datelimit" DATETIME,
	"projectid" TEXT,
	"usersid" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project" (
	"id" INT,
	"name" CHAR,
	"usersid" TEXT,
	 PRIMARY KEY ("id")
);
