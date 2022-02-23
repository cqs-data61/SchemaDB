DROP DATABASE IF EXISTS "schema2071";
CREATE DATABASE "schema2071";
USE "schema2071";
CREATE TABLE "parsing_info" (
	"id" BIGINT,
	"user_open_id" VARCHAR,
	"download_url" VARCHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"cover" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wx_user" (
	"id" BIGINT,
	"name" VARCHAR,
	"video_number" INT,
	"sign_in_sum" INT,
	"end_sign_in_time" DATETIME,
	"open_id" VARCHAR,
	"create_time" DATETIME,
	"last_parsing_time" DATETIME,
	 PRIMARY KEY ("id")
);
