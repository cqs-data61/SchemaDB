DROP DATABASE IF EXISTS "schema1972";
CREATE DATABASE "schema1972";
USE "schema1972";
CREATE TABLE "questions" (
	"id" INT,
	"category_id" INT,
	"question" VARCHAR,
	"answer" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
