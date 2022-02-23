DROP DATABASE IF EXISTS "schema1121";
CREATE DATABASE "schema1121";
USE "schema1121";
CREATE TABLE "users" (
	"id" TEXT,
	"user_name" TEXT,
	"name" TEXT,
	"profile" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recommendations" (
	"user_id" TEXT,
	"title" TEXT,
	"artist" TEXT,
	"cover" TEXT,
	"uri" TEXT
);

CREATE TABLE "analytics" (
	"user_id" TEXT,
	"analytic_type" TEXT,
	"title" TEXT,
	"artist" TEXT,
	"cover" TEXT,
	"greatest" REAL,
	"average" REAL
);

CREATE TABLE "toptracks" (
	"user_id" TEXT,
	"title" TEXT,
	"artist" TEXT,
	"cover" TEXT
);

CREATE TABLE "topartists" (
	"user_id" TEXT,
	"name" TEXT,
	"profile" TEXT
);
