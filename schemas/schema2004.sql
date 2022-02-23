DROP DATABASE IF EXISTS "schema2004";
CREATE DATABASE "schema2004";
USE "schema2004";
CREATE TABLE "heshop_initialize_prefix_user_statistical" (
	"id" BIGINT,
	"uid" BIGINT,
	"buy_number" INT,
	"buy_amount" DECIMAL,
	"last_buy_time" BIGINT,
	"last_visit_time" BIGINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_user_oauth" (
	"id" BIGINT,
	"uid" INT,
	"oauthid" VARCHAR,
	"unionid" VARCHAR,
	"type" VARCHAR,
	"format" TEXT,
	"is_deleted" TINYINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_user_label_log" (
	"id" BIGINT,
	"uid" BIGINT,
	"label_id" BIGINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_user_label" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" TINYINT,
	"status" TINYINT,
	"conditions_status" TINYINT,
	"conditions_setting" TEXT,
	"filter_user" TEXT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"users_number" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_user_export" (
	"id" BIGINT,
	"conditions" TEXT,
	"user_data" TEXT,
	"appid" VARCHAR,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_user_address" (
	"id" BIGINT,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"district" VARCHAR,
	"address" VARCHAR,
	"status" TINYINT,
	"uid" BIGINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_user" (
	"id" BIGINT,
	"nickname" VARCHAR,
	"mobile" BIGINT,
	"realname" VARCHAR,
	"avatar" VARCHAR,
	"gender" TINYINT,
	"source" VARCHAR,
	"status" TINYINT,
	"appid" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_store_setting" (
	"id" BIGINT,
	"keyword" VARCHAR,
	"content" TEXT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_store_address" (
	"id" BIGINT,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"district" VARCHAR,
	"address" VARCHAR,
	"status" TINYINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_statistical_visit_log" (
	"id" BIGINT,
	"uid" BIGINT,
	"appid" VARCHAR,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_statistical_upload_log" (
	"id" BIGINT,
	"size" INT,
	"url" VARCHAR,
	"uid" BIGINT,
	"appid" VARCHAR,
	"merchant_id" BIGINT,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_statistical_goods_visit_log" (
	"id" BIGINT,
	"goods_id" BIGINT,
	"uid" BIGINT,
	"appid" VARCHAR,
	"merchant_id" BIGINT,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_sms_code_log" (
	"id" BIGINT,
	"code" INT,
	"mobile" BIGINT,
	"type" TINYINT,
	"appid" VARCHAR,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_rules" (
	"id" BIGINT,
	"name" VARCHAR,
	"describe" VARCHAR,
	"api" LONGTEXT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"describe" VARCHAR,
	"visits" LONGTEXT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_pay" (
	"id" BIGINT,
	"pay_sn" VARCHAR,
	"order_list" TEXT,
	"total_amount" DECIMAL,
	"pay_type" TINYINT,
	"status" TINYINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_goods" (
	"id" BIGINT,
	"order_sn" VARCHAR,
	"freight_sn" VARCHAR,
	"goods_id" BIGINT,
	"goods_sn" VARCHAR,
	"goods_name" VARCHAR,
	"goods_image" VARCHAR,
	"goods_param_key" VARCHAR,
	"goods_param" VARCHAR,
	"goods_price" DECIMAL,
	"goods_cost_price" DECIMAL,
	"goods_weight" DECIMAL,
	"goods_number" INT,
	"total_amount" DECIMAL,
	"pay_amount" DECIMAL,
	"promotion_amount" DECIMAL,
	"after_sales" TINYINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"is_evaluate" TINYINT,
	"show_goods_param" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_freight" (
	"id" BIGINT,
	"order_sn" VARCHAR,
	"type" TINYINT,
	"code" VARCHAR,
	"logistics_company" VARCHAR,
	"freight_sn" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_export" (
	"id" BIGINT,
	"conditions" TEXT,
	"parameter" TEXT,
	"order_data" LONGTEXT,
	"merchant_id" BIGINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"appid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_evaluate" (
	"id" BIGINT,
	"order_sn" VARCHAR,
	"uid" BIGINT,
	"goods_name" VARCHAR,
	"goods_image" VARCHAR,
	"goods_id" BIGINT,
	"goods_param_key" VARCHAR,
	"goods_param" VARCHAR,
	"status" TINYINT,
	"star" TINYINT,
	"content" TEXT,
	"images" TEXT,
	"reply" TEXT,
	"appid" VARCHAR,
	"merchant_id" BIGINT,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	"show_goods_param" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_buyer" (
	"id" BIGINT,
	"order_sn" VARCHAR,
	"note" VARCHAR,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"district" VARCHAR,
	"address" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_batch_handle" (
	"id" BIGINT,
	"handle_sn" VARCHAR,
	"order_number" SMALLINT,
	"success_number" SMALLINT,
	"error_data" TEXT,
	"appid" VARCHAR,
	"merchant_id" BIGINT,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_after_export" (
	"id" BIGINT,
	"conditions" TEXT,
	"parameter" TEXT,
	"order_after_data" TEXT,
	"appid" VARCHAR,
	"merchant_id" BIGINT,
	"created_time" INT,
	"updated_time" INT,
	"deleted_time" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order_after" (
	"id" BIGINT,
	"order_sn" VARCHAR,
	"after_sn" VARCHAR,
	"order_goods_id" BIGINT,
	"uid" BIGINT,
	"type" TINYINT,
	"source" VARCHAR,
	"return_number" INT,
	"return_amount" DECIMAL,
	"images" TEXT,
	"status" SMALLINT,
	"return_address" TEXT,
	"user_note" VARCHAR,
	"user_freight_info" TEXT,
	"merchant_note" VARCHAR,
	"merchant_freight_info" TEXT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"return_reason" VARCHAR,
	"process" TEXT,
	"refuse_reason" VARCHAR,
	"second_refuse_reason" VARCHAR,
	"actual_refund" DECIMAL,
	"audit_time" BIGINT,
	"return_time" BIGINT,
	"exchange_time" BIGINT,
	"refuse_time" BIGINT,
	"finish_time" BIGINT,
	"salesexchange_time" BIGINT,
	"return_sn" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_order" (
	"id" BIGINT,
	"order_sn" VARCHAR,
	"uid" BIGINT,
	"total_amount" DECIMAL,
	"pay_amount" DECIMAL,
	"goods_amount" DECIMAL,
	"goods_reduced" DECIMAL,
	"freight_amount" DECIMAL,
	"freight_reduced" DECIMAL,
	"promotion_amount" DECIMAL,
	"status" SMALLINT,
	"cancel_time" BIGINT,
	"send_time" BIGINT,
	"received_time" BIGINT,
	"finish_time" BIGINT,
	"after_sales" TINYINT,
	"source" VARCHAR,
	"pay_number" VARCHAR,
	"pay_type" VARCHAR,
	"pay_time" BIGINT,
	"note" VARCHAR,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_recycle" TINYINT,
	"is_deleted" TINYINT,
	"is_evaluate" TINYINT,
	"evaluate_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_menus" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"modul_id" BIGINT,
	"apply" VARCHAR,
	"name" VARCHAR,
	"title" VARCHAR,
	"icon" VARCHAR,
	"type" VARCHAR,
	"path" VARCHAR,
	"page" VARCHAR,
	"is_hidden" TINYINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_logistics_package_free" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" TINYINT,
	"free_area" LONGTEXT,
	"status" TINYINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_logistics_freight_template" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" TINYINT,
	"freight_rules" LONGTEXT,
	"status" TINYINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods_service" (
	"id" BIGINT,
	"title" VARCHAR,
	"content" VARCHAR,
	"sort" SMALLINT,
	"status" TINYINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods_param" (
	"id" BIGINT,
	"goods_id" BIGINT,
	"param_data" LONGTEXT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods_group" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" BIGINT,
	"goods_show" TINYINT,
	"icon" VARCHAR,
	"image" VARCHAR,
	"path" VARCHAR,
	"sort" SMALLINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"type" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods_export" (
	"id" BIGINT,
	"conditions" TEXT,
	"goods_data" LONGTEXT,
	"merchant_id" BIGINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"appid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods_data" (
	"id" BIGINT,
	"goods_id" BIGINT,
	"param_value" VARCHAR,
	"price" DECIMAL,
	"stocks" INT,
	"cost_price" DECIMAL,
	"weight" DECIMAL,
	"goods_sn" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods_body" (
	"id" BIGINT,
	"goods_id" BIGINT,
	"content" LONGTEXT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_goods" (
	"id" BIGINT,
	"name" VARCHAR,
	"price" DECIMAL,
	"line_price" DECIMAL,
	"group" VARCHAR,
	"status" TINYINT,
	"param_type" TINYINT,
	"unit" VARCHAR,
	"slideshow" TEXT,
	"is_video" TINYINT,
	"video" VARCHAR,
	"video_cover" VARCHAR,
	"is_real" TINYINT,
	"is_sale" TINYINT,
	"tags" VARCHAR,
	"stocks" INT,
	"reduce_stocks" TINYINT,
	"ft_type" TINYINT,
	"ft_price" DECIMAL,
	"ft_id" BIGINT,
	"pfr_id" BIGINT,
	"limit_buy_status" TINYINT,
	"limit_buy_type" VARCHAR,
	"limit_buy_value" SMALLINT,
	"min_number" SMALLINT,
	"sort" SMALLINT,
	"services" VARCHAR,
	"visits" INT,
	"virtual_sales" INT,
	"sales" INT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_recycle" TINYINT,
	"is_deleted" TINYINT,
	"sales_amount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_gallery_group" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" BIGINT,
	"path" VARCHAR,
	"sort" SMALLINT,
	"uid" BIGINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"type" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_gallery" (
	"id" BIGINT,
	"title" VARCHAR,
	"type" TINYINT,
	"group_id" BIGINT,
	"url" VARCHAR,
	"thumbnail" VARCHAR,
	"sort" SMALLINT,
	"uid" BIGINT,
	"merchant_id" BIGINT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"size" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_fitment_template" (
	"id" BIGINT,
	"name" VARCHAR,
	"image" VARCHAR,
	"content" LONGTEXT,
	"background" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"writer" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_fitment_page" (
	"id" BIGINT,
	"name" VARCHAR,
	"goods_number" SMALLINT,
	"visit_number" INT,
	"content" LONGTEXT,
	"status" TINYINT,
	"background" VARCHAR,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_fitment" (
	"id" BIGINT,
	"keyword" VARCHAR,
	"content" TEXT,
	"appid" VARCHAR,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_cart" (
	"id" BIGINT,
	"goods_id" BIGINT,
	"uid" BIGINT,
	"goods_param" VARCHAR,
	"goods_number" INT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"is_deleted" TINYINT,
	"goods_name" VARCHAR,
	"goods_image" VARCHAR,
	"show_goods_param" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heshop_initialize_prefix_account" (
	"id" BIGINT,
	"mobile" BIGINT,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"roles" VARCHAR,
	"format" LONGTEXT,
	"status" TINYINT,
	"is_deleted" TINYINT,
	"created_time" BIGINT,
	"updated_time" BIGINT,
	"deleted_time" BIGINT,
	"avatar" VARCHAR,
	"name" VARCHAR,
	"type" TINYINT,
	"remark" VARCHAR,
	"form" TEXT,
	 PRIMARY KEY ("id")
);
