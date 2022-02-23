DROP DATABASE IF EXISTS "schema1845";
CREATE DATABASE "schema1845";
USE "schema1845";
CREATE TABLE "tb_newbee_mall_user_token" (
	"user_id" BIGINT,
	"token" VARCHAR,
	"update_time" DATETIME,
	"expire_time" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "tb_newbee_mall_user_address" (
	"address_id" BIGINT,
	"user_id" BIGINT,
	"user_name" VARCHAR,
	"user_phone" VARCHAR,
	"default_flag" TINYINT,
	"province_name" VARCHAR,
	"city_name" VARCHAR,
	"region_name" VARCHAR,
	"detail_address" VARCHAR,
	"is_deleted" TINYINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "tb_newbee_mall_user" (
	"user_id" BIGINT,
	"nick_name" VARCHAR,
	"login_name" VARCHAR,
	"password_md5" VARCHAR,
	"introduce_sign" VARCHAR,
	"is_deleted" TINYINT,
	"locked_flag" TINYINT,
	"create_time" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "tb_newbee_mall_shopping_cart_item" (
	"cart_item_id" BIGINT,
	"user_id" BIGINT,
	"goods_id" BIGINT,
	"goods_count" INT,
	"is_deleted" TINYINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("cart_item_id")
);

CREATE TABLE "tb_newbee_mall_order_item" (
	"order_item_id" BIGINT,
	"order_id" BIGINT,
	"goods_id" BIGINT,
	"goods_name" VARCHAR,
	"goods_cover_img" VARCHAR,
	"selling_price" INT,
	"goods_count" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("order_item_id")
);

CREATE TABLE "tb_newbee_mall_order_address" (
	"order_id" BIGINT,
	"user_name" VARCHAR,
	"user_phone" VARCHAR,
	"province_name" VARCHAR,
	"city_name" VARCHAR,
	"region_name" VARCHAR,
	"detail_address" VARCHAR,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "tb_newbee_mall_order" (
	"order_id" BIGINT,
	"order_no" VARCHAR,
	"user_id" BIGINT,
	"total_price" INT,
	"pay_status" TINYINT,
	"pay_type" TINYINT,
	"pay_time" DATETIME,
	"order_status" TINYINT,
	"extra_info" VARCHAR,
	"is_deleted" TINYINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "tb_newbee_mall_index_config" (
	"config_id" BIGINT,
	"config_name" VARCHAR,
	"config_type" TINYINT,
	"goods_id" BIGINT,
	"redirect_url" VARCHAR,
	"config_rank" INT,
	"is_deleted" TINYINT,
	"create_time" DATETIME,
	"create_user" INT,
	"update_time" DATETIME,
	"update_user" INT,
	 PRIMARY KEY ("config_id")
);

CREATE TABLE "tb_newbee_mall_goods_info" (
	"goods_id" BIGINT,
	"goods_name" VARCHAR,
	"goods_intro" VARCHAR,
	"goods_category_id" BIGINT,
	"goods_cover_img" VARCHAR,
	"goods_carousel" VARCHAR,
	"goods_detail_content" TEXT,
	"original_price" INT,
	"selling_price" INT,
	"stock_num" INT,
	"tag" VARCHAR,
	"goods_sell_status" TINYINT,
	"create_user" INT,
	"create_time" DATETIME,
	"update_user" INT,
	"update_time" DATETIME,
	 PRIMARY KEY ("goods_id")
);

CREATE TABLE "tb_newbee_mall_goods_category" (
	"category_id" BIGINT,
	"category_level" TINYINT,
	"parent_id" BIGINT,
	"category_name" VARCHAR,
	"category_rank" INT,
	"is_deleted" TINYINT,
	"create_time" DATETIME,
	"create_user" INT,
	"update_time" DATETIME,
	"update_user" INT,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "tb_newbee_mall_carousel" (
	"carousel_id" INT,
	"carousel_url" VARCHAR,
	"redirect_url" VARCHAR,
	"carousel_rank" INT,
	"is_deleted" TINYINT,
	"create_time" DATETIME,
	"create_user" INT,
	"update_time" DATETIME,
	"update_user" INT,
	 PRIMARY KEY ("carousel_id")
);

CREATE TABLE "tb_newbee_mall_admin_user" (
	"admin_user_id" INT,
	"login_user_name" VARCHAR,
	"login_password" VARCHAR,
	"nick_name" VARCHAR,
	"locked" TINYINT,
	 PRIMARY KEY ("admin_user_id")
);
