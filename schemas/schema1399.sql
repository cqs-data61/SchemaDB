DROP DATABASE IF EXISTS "schema1399";
CREATE DATABASE "schema1399";
USE "schema1399";
CREATE TABLE "word_grade" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"code" VARCHAR,
	"grade" VARCHAR,
	"image" VARCHAR
);

CREATE TABLE "word" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"term" VARCHAR,
	"translate" VARCHAR,
	"status" VARCHAR,
	"frequency" INTEGER,
	"grade" VARCHAR,
	"user_id" VARCHAR
);

CREATE TABLE "food" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"image" VARCHAR,
	"type" BIGINT,
	"open_id" VARCHAR
);

CREATE TABLE "tv_classification" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"image" VARCHAR,
	"level" BIGINT,
	"pid" BIGINT
);

CREATE TABLE "tutorial_tv" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"image" VARCHAR,
	"tv" VARCHAR,
	"description" VARCHAR,
	"pid" BIGINT
);

CREATE TABLE "activity_detail" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"image" VARCHAR,
	"description" VARCHAR,
	"activity_id" BIGINT
);

CREATE TABLE "activity" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"keywords" VARCHAR,
	"image" VARCHAR,
	"description" VARCHAR,
	"theme_id" BIGINT,
	"user_id" BIGINT,
	"longitude" BIGINT,
	"latitude" BIGINT,
	"province" VARCHAR,
	"city" VARCHAR,
	"create_time" VARCHAR,
	"begin_time" VARCHAR,
	"end_time" VARCHAR,
	"star" BIGINT
);

CREATE TABLE "attractions_detail" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"image" VARCHAR,
	"description" VARCHAR,
	"attractions_id" BIGINT
);

CREATE TABLE "attractions" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"keywords" VARCHAR,
	"image" VARCHAR,
	"description" VARCHAR,
	"theme_id" BIGINT,
	"user_id" BIGINT,
	"longitude" BIGINT,
	"latitude" BIGINT,
	"province" VARCHAR,
	"city" VARCHAR
);

CREATE TABLE "theme" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"image" VARCHAR
);

CREATE TABLE "user" (
	"id" BIGINT,
	"version" BIGINT,
	"del_time" VARCHAR,
	"username" VARCHAR,
	"nickname" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR
);
