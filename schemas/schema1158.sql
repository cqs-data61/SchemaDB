DROP DATABASE IF EXISTS "schema1158";
CREATE DATABASE "schema1158";
USE "schema1158";
CREATE TABLE "user" (
	"id" TINYINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"fullname" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trade" (
	"trade_id" TINYINT,
	"account" VARCHAR,
	"type" VARCHAR,
	"buy_quantity" DOUBLE,
	"sell_quantity" DOUBLE,
	"buy_price" DOUBLE,
	"sell_price" DOUBLE,
	"benchmark" VARCHAR,
	"trade_date" TIMESTAMP,
	"security" VARCHAR,
	"status" VARCHAR,
	"trader" VARCHAR,
	"book" VARCHAR,
	"creation_name" VARCHAR,
	"creation_date" TIMESTAMP,
	"revision_name" VARCHAR,
	"revision_date" TIMESTAMP,
	"deal_name" VARCHAR,
	"deal_type" VARCHAR,
	"source_list_id" VARCHAR,
	"side" VARCHAR,
	 PRIMARY KEY ("trade_id")
);

CREATE TABLE "rule_name" (
	"id" TINYINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"json" VARCHAR,
	"template" VARCHAR,
	"sql_str" VARCHAR,
	"sql_part" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rating" (
	"id" TINYINT,
	"moodys_rating" VARCHAR,
	"sand_p_rating" VARCHAR,
	"fitch_rating" VARCHAR,
	"order_number" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "curve_point" (
	"id" TINYINT,
	"curve_id" TINYINT,
	"as_of_date" TIMESTAMP,
	"term" DOUBLE,
	"value" DOUBLE,
	"creation_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bid_list" (
	"bid_list_id" TINYINT,
	"account" VARCHAR,
	"type" VARCHAR,
	"bid_quantity" DOUBLE,
	"ask_quantity" DOUBLE,
	"bid" DOUBLE,
	"ask" DOUBLE,
	"benchmark" VARCHAR,
	"bid_list_date" TIMESTAMP,
	"commentary" VARCHAR,
	"security" VARCHAR,
	"status" VARCHAR,
	"trader" VARCHAR,
	"book" VARCHAR,
	"creation_name" VARCHAR,
	"creation_date" TIMESTAMP,
	"revision_name" VARCHAR,
	"revision_date" TIMESTAMP,
	"deal_name" VARCHAR,
	"deal_type" VARCHAR,
	"source_list_id" VARCHAR,
	"side" VARCHAR,
	 PRIMARY KEY ("bid_list_id")
);
