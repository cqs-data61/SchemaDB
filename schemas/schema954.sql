DROP DATABASE IF EXISTS "schema954";
CREATE DATABASE "schema954";
USE "schema954";
CREATE TABLE "employee" (
	"id" SERIAL,
	"name" TEXT,
	"tel" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "memo" (
	"title" VARCHAR,
	"note" TEXT,
	 PRIMARY KEY ("title")
);
