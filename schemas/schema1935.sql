DROP DATABASE IF EXISTS "schema1935";
CREATE DATABASE "schema1935";
USE "schema1935";
CREATE TABLE "orders" (
	"id" BIGINT,
	"openid" VARCHAR,
	"trade_id" VARCHAR,
	"type" CHAR,
	"num_iid" VARCHAR,
	"item_title" VARCHAR,
	"item_num" INT,
	"price" DOUBLE,
	"pay_price" DOUBLE,
	"commission" DOUBLE,
	"commission_rate" DOUBLE,
	"create_time" TIMESTAMP,
	"earning_time" TIMESTAMP,
	"tk_status" INT,
	"order_type" VARCHAR,
	"income_rate" DOUBLE,
	"pub_share_pre_fee" DOUBLE,
	"subsidy_rate" DOUBLE,
	"adzone_id" VARCHAR,
	"adzone_name" VARCHAR,
	"alipay_total_price" DOUBLE,
	"total_commission_rate" DOUBLE,
	"total_commission_fee" DOUBLE,
	"async_time" TIMESTAMP,
	"extend" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "withdraws" (
	"id" INT,
	"openid" VARCHAR,
	"aliname" VARCHAR,
	"alipay" VARCHAR,
	"balance" DOUBLE,
	"status" INT,
	"created_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"extend" LONGTEXT
);

CREATE TABLE "wallets" (
	"id" INT,
	"openid" VARCHAR,
	"promoter" VARCHAR,
	"aliname" VARCHAR,
	"alipay" VARCHAR,
	"balance" DOUBLE,
	"total_balance" DOUBLE,
	"rate" DOUBLE,
	"brokerage" DOUBLE,
	"brokerage_rate" DOUBLE,
	"created_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"extend" LONGTEXT
);

CREATE TABLE "wx_events" (
	"id" BIGINT,
	"event" VARCHAR,
	"created_time" TIMESTAMP,
	"extend" LONGTEXT
);

CREATE TABLE "tb_pids" (
	"id" INT,
	"name" VARCHAR,
	"pid" VARCHAR,
	"p3" CHAR,
	"type" VARCHAR
);

CREATE TABLE "wx_customers" (
	"id" INT,
	"openid" VARCHAR,
	"nickname" VARCHAR,
	"sex" CHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"province" VARCHAR,
	"head_img_url" VARCHAR,
	"created_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"async_time" TIMESTAMP,
	"extend" LONGTEXT
);
