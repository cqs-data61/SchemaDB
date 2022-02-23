DROP DATABASE IF EXISTS "schema736";
CREATE DATABASE "schema736";
USE "schema736";
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
