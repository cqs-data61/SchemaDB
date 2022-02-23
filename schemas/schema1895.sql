DROP DATABASE IF EXISTS "schema1895";
CREATE DATABASE "schema1895";
USE "schema1895";
CREATE TABLE "analitics" (
	"id" BIGSERIAL,
	"user_name" VARCHAR,
	"balance" BIGINT,
	"planned_consumption" BIGINT,
	"fact_consumption" BIGINT,
	"expensive_purchase" BIGINT,
	"consumption_category" VARCHAR
);

CREATE TABLE "payment_category" (
	"id" BIGSERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payment_statistic" (
	"id" BIGSERIAL,
	"created_dt" TIMESTAMP,
	"sum" NUMERIC,
	"category_id" BIGINT,
	"comment" VARCHAR,
	"user_name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "payments_category_id_fk" FOREIGN KEY ("category_id") REFERENCES "payment_category" ("id")
);

CREATE TABLE "files" (
	"id" BIGSERIAL,
	"file_name" VARCHAR,
	"url" CHARACTER VARYING,
	"payment_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "payment_id_fk" FOREIGN KEY ("payment_id") REFERENCES "payment_statistic" ("id")
);
