DROP DATABASE IF EXISTS "schema98";
CREATE DATABASE "schema98";
USE "schema98";
CREATE TABLE "user_presence" (
	"id" BIGINT,
	"create_date" DATETIME,
	"user_id" BIGINT,
	"status" ENUM,
	"game_name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "playtime_button" (
	"id" INTEGER,
	"create_date" DATETIME,
	"author_id" BIGINT,
	"user_ids" BIGINT,
	"username" CHARACTER VARYING,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"start_offset" INTEGER
);
