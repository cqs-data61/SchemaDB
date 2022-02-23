DROP DATABASE IF EXISTS "schema1532";
CREATE DATABASE "schema1532";
USE "schema1532";
CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INT,
	"title" VARCHAR,
	"text" TEXT,
	"category_id" INT,
	"user_id" INT,
	"pic_url" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "post_ibfk_1" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);
