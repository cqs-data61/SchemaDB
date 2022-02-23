DROP DATABASE IF EXISTS "schema1947";
CREATE DATABASE "schema1947";
USE "schema1947";
CREATE TABLE "pd_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_shipping" (
	"add_id" BIGINT,
	"user_id" BIGINT,
	"receiver_name" VARCHAR,
	"receiver_phone" VARCHAR,
	"receiver_mobile" VARCHAR,
	"receiver_state" VARCHAR,
	"receiver_city" VARCHAR,
	"receiver_district" VARCHAR,
	"receiver_address" VARCHAR,
	"receiver_zip" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"status" TINYINT,
	"is_default" TINYINT,
	 PRIMARY KEY ("add_id")
);

CREATE TABLE "pd_order_item" (
	"id" VARCHAR,
	"item_id" VARCHAR,
	"order_id" VARCHAR,
	"num" INT,
	"title" VARCHAR,
	"price" DOUBLE,
	"total_fee" DOUBLE,
	"pic_path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_order" (
	"order_id" VARCHAR,
	"user_id" BIGINT,
	"add_id" BIGINT,
	"payment" DOUBLE,
	"payment_type" INT,
	"post_fee" DOUBLE,
	"status" INT,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"payment_time" TIMESTAMP,
	"consign_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"close_time" TIMESTAMP,
	"shipping_name" VARCHAR,
	"shipping_code" VARCHAR,
	"buyer_message" VARCHAR,
	"buyer_nick" VARCHAR,
	"buyer_rate" INT,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "pd_item_param_item" (
	"id" BIGINT,
	"item_id" BIGINT,
	"item_param_id" BIGINT,
	"param_data" TEXT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_item_param" (
	"id" BIGINT,
	"item_cat_id" BIGINT,
	"param_data" TEXT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_item_desc" (
	"item_id" BIGINT,
	"item_desc" TEXT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "pd_item_cat" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"name" VARCHAR,
	"status" INT,
	"sort_order" INT,
	"is_parent" TINYINT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_item" (
	"id" BIGINT,
	"brand" VARCHAR,
	"model" VARCHAR,
	"title" VARCHAR,
	"sell_point" VARCHAR,
	"price" DOUBLE,
	"num" INT,
	"barcode" VARCHAR,
	"image" VARCHAR,
	"cid" BIGINT,
	"status" TINYINT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_content_category" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"name" VARCHAR,
	"status" INT,
	"sort_order" INT,
	"is_parent" TINYINT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_content" (
	"id" BIGINT,
	"category_id" BIGINT,
	"title" VARCHAR,
	"sub_title" VARCHAR,
	"title_desc" VARCHAR,
	"url" VARCHAR,
	"pic" VARCHAR,
	"pic2" VARCHAR,
	"content" TEXT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_collect_item" (
	"id" BIGINT,
	"user_id" BIGINT,
	"item_id" BIGINT,
	"title" VARCHAR,
	"price" DOUBLE,
	"pic_path" VARCHAR,
	"item_param_data" VARCHAR,
	"status" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pd_cart_item" (
	"id" BIGINT,
	"user_id" BIGINT,
	"item_id" BIGINT,
	"num" INT,
	"status" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);
