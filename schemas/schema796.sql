DROP DATABASE IF EXISTS "schema796";
CREATE DATABASE "schema796";
USE "schema796";
CREATE TABLE "candidate" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
