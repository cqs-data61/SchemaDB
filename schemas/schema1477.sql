DROP DATABASE IF EXISTS "schema1477";
CREATE DATABASE "schema1477";
USE "schema1477";
CREATE TABLE "t_order1" (
	"order_id" BIGINT,
	"name" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "t_order0" (
	"order_id" BIGINT,
	"name" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);
