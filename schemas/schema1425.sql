DROP DATABASE IF EXISTS "schema1425";
CREATE DATABASE "schema1425";
USE "schema1425";
CREATE TABLE "post" (
	"id" BIGINT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"author_id" BIGINT,
	"created_time" DATETIME
);

CREATE TABLE "member" (
	"id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR
);
