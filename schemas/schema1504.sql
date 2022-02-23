DROP DATABASE IF EXISTS "schema1504";
CREATE DATABASE "schema1504";
USE "schema1504";
CREATE TABLE "tags_bookmarks" (
	"id" VARCHAR,
	"bookmark_id" VARCHAR,
	"tag_id" VARCHAR,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag" (
	"id" VARCHAR,
	"tag_name" VARCHAR,
	"user_id" VARCHAR,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookmark" (
	"id" VARCHAR,
	"url_id" VARCHAR,
	"user_id" VARCHAR,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"expiration_time" TIMESTAMP,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" VARCHAR,
	"user_email" VARCHAR,
	"name" VARCHAR,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "url" (
	"id" VARCHAR,
	"protocol" VARCHAR,
	"host" VARCHAR,
	"path" VARCHAR,
	"url" VARCHAR,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);
