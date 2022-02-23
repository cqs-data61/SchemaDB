DROP DATABASE IF EXISTS "schema2150";
CREATE DATABASE "schema2150";
USE "schema2150";
CREATE TABLE "course" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
