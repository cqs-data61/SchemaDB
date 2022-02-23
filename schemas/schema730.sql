DROP DATABASE IF EXISTS "schema730";
CREATE DATABASE "schema730";
USE "schema730";
CREATE TABLE "unit" (
	"id" BIGINT,
	"shop_id" BIGINT,
	"unit_id" BIGINT,
	"name" VARCHAR,
	"status" VARCHAR,
	"concurrency_version" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_stored_event" (
	"event_id" BIGINT,
	"event_body" TEXT,
	"occurred_on" DATETIME,
	"type_name" VARCHAR,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "tbl_es_event_store" (
	"event_id" BIGINT,
	"event_body" VARCHAR,
	"event_type" VARCHAR,
	"stream_name" VARCHAR,
	"stream_version" INT,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "tbl_dispatcher_last_event" (
	"event_id" BIGINT,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "spu" (
	"id" BIGINT,
	"concurrency_version" INT,
	"shop_id" BIGINT,
	"spu_id" BIGINT,
	"name" VARCHAR,
	"no" VARCHAR,
	"bar_codes" VARCHAR,
	"photos" VARCHAR,
	"category_id" BIGINT,
	"unit_id" BIGINT,
	"spec_define_tuple" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sku" (
	"id" BIGINT,
	"concurrency_version" INT,
	"shop_id" BIGINT,
	"spu_id" BIGINT,
	"sku_id" BIGINT,
	"spec_tuple" VARCHAR,
	"no" VARCHAR,
	"bar_codes" VARCHAR,
	"retail_price" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sale" (
	"id" BIGINT,
	"sale_id" BIGINT,
	"shop_id" BIGINT,
	"spu_id" BIGINT,
	"sale_channel" VARCHAR,
	"sku_sales" VARCHAR,
	"version" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" BIGINT,
	"category_id" BIGINT,
	"shop_id" BIGINT,
	"parent_id" BIGINT,
	"name" VARCHAR,
	"level" INT,
	"score" BIGINT,
	"version" INT,
	"deleted" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
