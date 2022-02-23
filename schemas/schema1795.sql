DROP DATABASE IF EXISTS "schema1795";
CREATE DATABASE "schema1795";
USE "schema1795";
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
