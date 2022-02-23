DROP DATABASE IF EXISTS "schema2099";
CREATE DATABASE "schema2099";
USE "schema2099";
CREATE TABLE "messages" (
	"id" BIGINT,
	"event_id" INT,
	"user_id" INT,
	"user_email" VARCHAR,
	"content" VARCHAR,
	"inserted_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" BIGINT,
	"fixture_id" INT,
	"home_team_id" INT,
	"home_team_name" VARCHAR,
	"home_team_image" VARCHAR,
	"home_team_score" INT,
	"visitor_team_id" INT,
	"visitor_team_name" VARCHAR,
	"visitor_team_image" VARCHAR,
	"visitor_team_score" INT,
	"venue" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"date" TIMESTAMP,
	"inserted_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" BIGINT,
	"title" VARCHAR,
	"description" VARCHAR,
	"inserted_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
