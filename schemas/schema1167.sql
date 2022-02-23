DROP DATABASE IF EXISTS "schema1167";
CREATE DATABASE "schema1167";
USE "schema1167";
CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "todaysheadline" (
	"id" INT,
	"title" VARCHAR,
	"contents" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recommend_hotspot" (
	"id" INT,
	"title" VARCHAR,
	"contents" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recommend_activity" (
	"id" INT,
	"title" VARCHAR,
	"contents" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "monthlypick" (
	"id" INT,
	"title" VARCHAR,
	"img_url" VARCHAR,
	"contents" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "member" (
	"id" INT,
	"auth_type" VARCHAR,
	"member_id" VARCHAR,
	"member_pwd" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_day" (
	"id" INT,
	"title" VARCHAR,
	"contents" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "center" (
	"id" INT,
	"name" VARCHAR,
	"phone" VARCHAR,
	"publicphone" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "board" (
	"id" INT,
	"title" VARCHAR,
	"contents" VARCHAR,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"prod_id" INT,
	"prod_name" VARCHAR,
	"prod_price" INT
);
