DROP DATABASE IF EXISTS "schema1726";
CREATE DATABASE "schema1726";
USE "schema1726";
CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	"authority_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authorities" (
	"id" SERIAL,
	"authority" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts_discussions" (
	"post_id" BIGINT,
	"discussion_id" BIGINT,
	 PRIMARY KEY ("post_id","discussion_id")
);

CREATE TABLE "posts" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "discussions" (
	"id" BIGSERIAL,
	"description" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
