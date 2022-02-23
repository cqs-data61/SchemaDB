DROP DATABASE IF EXISTS "schema67";
CREATE DATABASE "schema67";
USE "schema67";
CREATE TABLE "comments" (
	"id" VARCHAR,
	"blog_id" VARCHAR,
	"user_id" VARCHAR,
	"user_name" VARCHAR,
	"user_image" VARCHAR,
	"content" MEDIUMTEXT,
	"created_at" REAL
);

CREATE TABLE "blogs" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"user_name" VARCHAR,
	"user_image" VARCHAR,
	"name" VARCHAR,
	"summary" VARCHAR,
	"content" MEDIUMTEXT,
	"created_at" REAL
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"passwd" VARCHAR,
	"admin" BOOL,
	"name" VARCHAR,
	"image" VARCHAR,
	"created_at" REAL
);
