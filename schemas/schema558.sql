DROP DATABASE IF EXISTS "schema558";
CREATE DATABASE "schema558";
USE "schema558";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"enabled" TINYINT,
	"authority" VARCHAR,
	"tempkey" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" INT,
	"user_id" INT,
	"type_id" INT,
	"title" VARCHAR,
	"detail" TEXT,
	"deadline" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_type" (
	"id" INT,
	"type" VARCHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("id")
);
