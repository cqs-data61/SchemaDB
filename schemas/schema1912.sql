DROP DATABASE IF EXISTS "schema1912";
CREATE DATABASE "schema1912";
USE "schema1912";
CREATE TABLE "isu_association_config" (
	"name" VARCHAR,
	"url" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "user" (
	"jia_user_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("jia_user_id")
);

CREATE TABLE "isu_condition" (
	"id" BIGINT,
	"jia_isu_uuid" CHAR,
	"timestamp" DATETIME,
	"is_sitting" TINYINT,
	"condition" VARCHAR,
	"message" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "isu" (
	"id" BIGINT,
	"jia_isu_uuid" CHAR,
	"name" VARCHAR,
	"image" LONGBLOB,
	"character" VARCHAR,
	"jia_user_id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
