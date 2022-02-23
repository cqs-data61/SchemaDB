DROP DATABASE IF EXISTS "schema2290";
CREATE DATABASE "schema2290";
USE "schema2290";
CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"name" VARCHAR,
	"image_url" VARCHAR,
	"platform" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lectures" (
	"id" BIGINT,
	"image_url" VARCHAR,
	"title" VARCHAR,
	"price" INT,
	"sale_price" INT,
	"rating" FLOAT,
	"instructor" VARCHAR,
	"url" VARCHAR,
	"view_count" INT,
	"platform" VARCHAR,
	"session_count" INT,
	"currency" VARCHAR,
	"description" VARCHAR,
	"skills" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"user_id" VARCHAR,
	"lecture_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_lectures" FOREIGN KEY ("lecture_id") REFERENCES "lectures" ("id")
);

CREATE TABLE "bookmarks" (
	"id" BIGINT,
	"user_id" VARCHAR,
	"lecture_id" BIGINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bookmarks_to_lectures" FOREIGN KEY ("lecture_id") REFERENCES "lectures" ("id")
);
