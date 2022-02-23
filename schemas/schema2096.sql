DROP DATABASE IF EXISTS "schema2096";
CREATE DATABASE "schema2096";
USE "schema2096";
CREATE TABLE "person" (
	"id" BIGINT,
	"name" VARCHAR,
	"age" INT,
	"creator" BIGINT,
	"creator_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"name" VARCHAR,
	"age" INT,
	"last_modified" DATETIME,
	 PRIMARY KEY ("id")
);
