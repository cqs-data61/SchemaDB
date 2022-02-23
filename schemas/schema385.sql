DROP DATABASE IF EXISTS "schema385";
CREATE DATABASE "schema385";
USE "schema385";
CREATE TABLE "notice_like" (
	"id" BIGINT,
	"notice_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notice" (
	"id" BIGINT,
	"title" VARCHAR,
	"contents" VARCHAR,
	"hits" INTEGER,
	"likes" INTEGER,
	"reg_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	"deleted" BOOLEAN,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"reg_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	"user_name" VARCHAR,
	 PRIMARY KEY ("id")
);
