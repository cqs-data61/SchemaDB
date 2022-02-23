DROP DATABASE IF EXISTS "schema436";
CREATE DATABASE "schema436";
USE "schema436";
CREATE TABLE "success_killed" (
	"seckill_id" BIGINT,
	"user_phone" BIGINT,
	"state" TINYINT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("seckill_id","user_phone")
);

CREATE TABLE "seckill" (
	"seckill_id" BIGINT,
	"name" VARCHAR,
	"number" INT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("seckill_id")
);
