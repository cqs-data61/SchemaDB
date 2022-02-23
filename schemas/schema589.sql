DROP DATABASE IF EXISTS "schema589";
CREATE DATABASE "schema589";
USE "schema589";
CREATE TABLE "runs" (
	"id" INTEGER,
	"json" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" INTEGER,
	"version" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"disabled" BOOLEAN,
	"parent" INTEGER,
	"blob" TEXT,
	 PRIMARY KEY ("id")
);
