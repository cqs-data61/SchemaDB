DROP DATABASE IF EXISTS "schema1535";
CREATE DATABASE "schema1535";
USE "schema1535";
CREATE TABLE "unit" (
	"id" INTEGER,
	"create_time" INTEGER,
	"modify_time" INTEGER,
	"type_id" INTEGER,
	"name" TEXT,
	"abbreviation" TEXT,
	"metric_equivalent" REAL,
	"inbuilt" INTEGER,
	 PRIMARY KEY ("id")
);
