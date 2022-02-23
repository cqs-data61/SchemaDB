DROP DATABASE IF EXISTS "schema1576";
CREATE DATABASE "schema1576";
USE "schema1576";
CREATE TABLE "success_sale" (
	"goods_id" BIGINT,
	"user_phone" BIGINT,
	"state" TINYINT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("goods_id","user_phone")
);

CREATE TABLE "goods" (
	"goods_id" BIGINT,
	"name" VARCHAR,
	"number" INT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("goods_id")
);
