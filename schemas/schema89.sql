DROP DATABASE IF EXISTS "schema89";
CREATE DATABASE "schema89";
USE "schema89";
CREATE TABLE "result_events" (
	"id" BIGINT,
	"foreign_id" BIGINT,
	"timestamp" DATETIME,
	"type" INT
);

CREATE TABLE "results" (
	"id" BIGINT,
	"start_seq" BIGINT,
	"end_seq" BIGINT,
	"created_at" DATETIME,
	"results_json" BLOB
);

CREATE TABLE "trades" (
	"id" BIGINT,
	"seq" BIGINT,
	"seq_idx" INT,
	"is_buy" BOOL,
	"created_at" DATETIME,
	"maker_order_id" BIGINT,
	"taker_order_id" BIGINT,
	"price" DECIMAL,
	"volume" DECIMAL
);

CREATE TABLE "orders" (
	"id" BIGINT,
	"type" INT,
	"is_buy" BOOL,
	"status" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"update_seq" BIGINT,
	"limit_price" DECIMAL,
	"limit_volume" DECIMAL,
	"market_base" DECIMAL,
	"market_counter" DECIMAL
);

CREATE TABLE "order_events" (
	"id" BIGINT,
	"foreign_id" BIGINT,
	"timestamp" DATETIME,
	"type" INT,
	"metadata" BLOB
);

CREATE TABLE "cursors" (
	"id" VARCHAR,
	"last_event_id" BIGINT,
	"updated_at" DATETIME
);
