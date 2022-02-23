DROP DATABASE IF EXISTS "schema748";
CREATE DATABASE "schema748";
USE "schema748";
CREATE TABLE "product_details" (
	"id" BIGINT,
	"create_date" TIMESTAMP,
	"investing_amount" BIGINT,
	"user_id" BIGINT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" BIGINT,
	"finished_at" TIMESTAMP,
	"started_at" TIMESTAMP,
	"status" VARCHAR,
	"title" VARCHAR,
	"total_invest_amount" BIGINT,
	"version" BIGINT,
	 PRIMARY KEY ("id")
);
