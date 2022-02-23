DROP DATABASE IF EXISTS "schema550";
CREATE DATABASE "schema550";
USE "schema550";
CREATE TABLE "stock" (
	"id" SMALLINT,
	"shop_id" SMALLINT,
	"mark_id" SMALLINT,
	"quantity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mark" (
	"id" SMALLINT,
	"name" VARCHAR,
	"manufacturer_id" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "manufacturer" (
	"id" SMALLINT,
	"name" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shop" (
	"id" SMALLINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
