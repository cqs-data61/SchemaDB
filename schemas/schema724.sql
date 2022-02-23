DROP DATABASE IF EXISTS "schema724";
CREATE DATABASE "schema724";
USE "schema724";
CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"roles" LONGTEXT,
	"password" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "post" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"created_at" DATETIME,
	"short_content" VARCHAR,
	"views" INT
);

CREATE TABLE "migration_versions" (
	"version" VARCHAR,
	"executed_at" DATETIME
);

CREATE TABLE "comment" (
	"id" INT,
	"post_id" INT,
	"content" LONGTEXT,
	"create_at" DATETIME,
	"user_id" INT
);
