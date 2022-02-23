DROP DATABASE IF EXISTS "schema811";
CREATE DATABASE "schema811";
USE "schema811";
CREATE TABLE "image" (
	"id" BIGINT,
	"user_id" BIGINT,
	"md5" VARCHAR,
	"name" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "feedback" (
	"id" BIGINT,
	"user_id" BIGINT,
	"order_id" BIGINT,
	"type" TINYINT,
	"status" TINYINT,
	"img" VARCHAR,
	"content" VARCHAR,
	"response" VARCHAR,
	"deleted" TINYINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" BIGINT,
	"demand_id" BIGINT,
	"receiver_id" BIGINT,
	"status" TINYINT,
	"url_check" VARCHAR,
	"url_sent" VARCHAR,
	"deleted" TINYINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "demand" (
	"id" BIGINT,
	"type" TINYINT,
	"code" VARCHAR,
	"mobile" VARCHAR,
	"address" VARCHAR,
	"destination" VARCHAR,
	"expect_time" VARCHAR,
	"status" TINYINT,
	"sponsor_id" BIGINT,
	"price" INT,
	"comment" VARCHAR,
	"deleted" TINYINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);
