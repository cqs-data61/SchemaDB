DROP DATABASE IF EXISTS "schema743";
CREATE DATABASE "schema743";
USE "schema743";
CREATE TABLE "entries" (
	"id" BIGINT,
	"blog_id" BIGINT,
	"title" VARCHAR,
	"body" MEDIUMTEXT,
	"body_html" MEDIUMTEXT,
	"published_at" TIMESTAMP,
	"edited_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blogs" (
	"id" BIGINT,
	"user_id" BIGINT,
	"path" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" BIGINT,
	"user_id" BIGINT,
	"key" VARCHAR,
	"expires_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"account_id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
