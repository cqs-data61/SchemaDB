DROP DATABASE IF EXISTS "schema2108";
CREATE DATABASE "schema2108";
USE "schema2108";
CREATE TABLE "users" (
	"id" INT,
	"realm" VARCHAR,
	"user_name" VARCHAR,
	"user_hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "property" (
	"id" INT,
	"uri" VARCHAR,
	"property_name" VARCHAR,
	"property_value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locks" (
	"id" INT,
	"resource" VARCHAR,
	"token" VARCHAR,
	"scope" INT,
	"depth" INT,
	"created" INT,
	"timeout" INT,
	"owner" TEXT,
	 PRIMARY KEY ("id")
);
