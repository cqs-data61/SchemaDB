DROP DATABASE IF EXISTS "schema661";
CREATE DATABASE "schema661";
USE "schema661";
CREATE TABLE "notes" (
	"id" INT,
	"user_id" INT,
	"content" TEXT,
	"tag_id" INT,
	"created_at" DATETIME,
	"public" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hot_bookmarks" (
	"id" INT,
	"date" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"url" VARCHAR,
	"fav_count" SMALLINT,
	"created_by" VARCHAR,
	"created_at" BIGINT,
	"last_click" BIGINT,
	"snap_url" VARCHAR,
	"favicon_url" VARCHAR,
	"status" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "advices" (
	"id" INT,
	"user_id" INT,
	"comment" TEXT,
	"category" TINYINT,
	"created_at" DATETIME,
	"state" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags_bookmarks" (
	"tag_id" INT,
	"bookmark_id" INT,
	 PRIMARY KEY ("tag_id","bookmark_id")
);

CREATE TABLE "tags" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"last_use" DATETIME,
	"sort" TINYINT,
	"show" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookmarks" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"url" VARCHAR,
	"public" TINYINT,
	"click_count" SMALLINT,
	"created_at" DATETIME,
	"last_click" DATETIME,
	"snap_state" TINYINT,
	"favicon_state" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"created_at" DATETIME,
	"last_login" DATETIME,
	"show_style" CHAR,
	"search_history" VARCHAR,
	"quick_url" VARCHAR,
	 PRIMARY KEY ("id")
);
