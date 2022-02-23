DROP DATABASE IF EXISTS "schema1237";
CREATE DATABASE "schema1237";
USE "schema1237";
CREATE TABLE "tags" (
	"shopid" INTEGER,
	"tag" TEXT
);

CREATE TABLE "shop" (
	"id" INTEGER,
	"name" TEXT,
	"place" TEXT,
	"type" TEXT,
	 PRIMARY KEY ("id")
);
