DROP DATABASE IF EXISTS "schema1860";
CREATE DATABASE "schema1860";
USE "schema1860";
CREATE TABLE "status" (
	"id" INTEGER,
	"wellbeing" TEXT,
	"projects" TEXT,
	"books" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
