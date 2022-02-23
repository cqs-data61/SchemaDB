DROP DATABASE IF EXISTS "schema984";
CREATE DATABASE "schema984";
USE "schema984";
CREATE TABLE "algo_data" (
	"idn" BIGINT,
	"ymd" VARCHAR,
	"quote" VARCHAR,
	"file_name" VARCHAR,
	"total_trades" INT,
	"buy_constraint_ath" VARCHAR,
	"buy_constraint_before_timing" VARCHAR,
	"buy_constraint_after_timing" VARCHAR,
	"buy_algo" VARCHAR,
	"sell_algo" VARCHAR,
	"canceled_buys_count" INT,
	"insufficient_funds_count" INT,
	"order_size" INT,
	"starting_cash" FLOAT,
	"ending_cash" FLOAT,
	"stock_leftover" INT,
	"total_value" FLOAT,
	"increase_dollars" FLOAT,
	"increase_percent" FLOAT,
	"order_size_cash_percent" FLOAT,
	 PRIMARY KEY ("idn")
);

CREATE TABLE "last_price" (
	"idn" BIGINT,
	"timestamped" BIGINT,
	"timestamp_milli" BIGINT,
	"symbol" VARCHAR,
	"price" FLOAT,
	"json" TEXT,
	 PRIMARY KEY ("idn")
);
