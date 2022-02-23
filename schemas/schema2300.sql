DROP DATABASE IF EXISTS "schema2300";
CREATE DATABASE "schema2300";
USE "schema2300";
CREATE TABLE "category" (
	"cat_id" INT,
	"cat_desc" VARCHAR
);

CREATE TABLE "calendar_member" (
	"cal_mem_id" INT,
	"cal_id" INT,
	"user_id" VARCHAR
);

CREATE TABLE "calendar_item" (
	"item_id" INT,
	"item_cat" VARCHAR,
	"item_desc" TEXT,
	"item_date" DATE,
	"item_time" INT,
	"cal_id" INT,
	"created_by" INT,
	"isprivate" BOOLEAN
);

CREATE TABLE "calendar" (
	"cal_id" INT,
	"cal_name" VARCHAR,
	"created_by" INT
);

CREATE TABLE "user_profile" (
	"user_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR
);
