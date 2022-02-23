DROP DATABASE IF EXISTS "schema121";
CREATE DATABASE "schema121";
USE "schema121";
CREATE TABLE "remark" (
	"id" INT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	"consumer_id" INT,
	"item_id" VARCHAR,
	"order_id" VARCHAR,
	"score" TINYINT,
	"header" VARCHAR,
	"content" VARCHAR,
	"images" VARCHAR,
	"votes" INT,
	"user_name" VARCHAR,
	"user_face" VARCHAR,
	"status" TINYINT
);

CREATE TABLE "consumer" (
	"id" INT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	"mobile" VARCHAR,
	"nickname" VARCHAR,
	"password" VARCHAR,
	"face" VARCHAR,
	"level" TINYINT,
	"email" VARCHAR,
	"extension" VARCHAR
);
