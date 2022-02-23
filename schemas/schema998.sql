DROP DATABASE IF EXISTS "schema998";
CREATE DATABASE "schema998";
USE "schema998";
CREATE TABLE "zjhj_bd_cloud_template" (
	"id" INT,
	"name" VARCHAR,
	"pics" TEXT,
	"detail" TEXT,
	"price" DECIMAL,
	"type" VARCHAR,
	"version" VARCHAR,
	"package" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_wxapp_template" (
	"id" INT,
	"mall_id" INT,
	"tpl_name" VARCHAR,
	"tpl_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_wxapp_jump_appid" (
	"id" INT,
	"mall_id" INT,
	"appid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_wxapp_config" (
	"id" INT,
	"mall_id" INT,
	"appid" VARCHAR,
	"appsecret" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"mchid" VARCHAR,
	"key" VARCHAR,
	"cert_pem" VARCHAR,
	"key_pem" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_we7_app" (
	"id" INT,
	"mall_id" INT,
	"acid" INT,
	"is_delete" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_video" (
	"id" INT,
	"mall_id" INT,
	"title" VARCHAR,
	"type" TINYINT,
	"url" VARCHAR,
	"pic_url" VARCHAR,
	"content" LONGTEXT,
	"sort" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_info" (
	"id" INT,
	"user_id" INT,
	"avatar" VARCHAR,
	"platform_user_id" VARCHAR,
	"integral" INT,
	"total_integral" INT,
	"balance" DECIMAL,
	"total_balance" DECIMAL,
	"parent_id" INT,
	"is_blacklist" TINYINT,
	"contact_way" VARCHAR,
	"remark" VARCHAR,
	"is_delete" TINYINT,
	"junior_at" DATETIME,
	"platform" VARCHAR,
	"temp_parent_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_identity" (
	"id" INT,
	"user_id" INT,
	"is_super_admin" TINYINT,
	"is_admin" TINYINT,
	"is_operator" TINYINT,
	"member_level" INT,
	"is_distributor" TINYINT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_coupon_member" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"member_level" INT,
	"user_coupon_id" INT,
	"is_delete" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_coupon_center" (
	"id" INT,
	"mall_id" INT,
	"user_coupon_id" INT,
	"user_id" INT,
	"is_delete" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_coupon_auto" (
	"id" INT,
	"user_coupon_id" INT,
	"auto_coupon_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_coupon" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"coupon_id" INT,
	"sub_price" DECIMAL,
	"discount" DECIMAL,
	"coupon_min_price" DECIMAL,
	"type" INT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"is_use" TINYINT,
	"is_delete" SMALLINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"receive_type" VARCHAR,
	"coupon_data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_card" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"card_id" INT,
	"name" VARCHAR,
	"pic_url" VARCHAR,
	"content" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_use" INT,
	"clerk_id" INT,
	"store_id" INT,
	"clerked_at" TIMESTAMP,
	"order_id" INT,
	"order_detail_id" INT,
	"data" LONGTEXT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user_auth_login" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"token" VARCHAR,
	"is_pass" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_user" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"auth_key" VARCHAR,
	"access_token" VARCHAR,
	"mobile" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_topic_type" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"status" TINYINT,
	"sort" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_topic_favorite" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"topic_id" INT,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_topic" (
	"id" INT,
	"mall_id" INT,
	"type" INT,
	"title" VARCHAR,
	"sub_title" VARCHAR,
	"content" LONGTEXT,
	"layout" SMALLINT,
	"sort" INT,
	"cover_pic" VARCHAR,
	"read_count" INT,
	"agree_count" INT,
	"virtual_read_count" INT,
	"virtual_agree_count" INT,
	"virtual_favorite_count" INT,
	"qrcode_pic" VARCHAR,
	"app_share_title" VARCHAR,
	"is_chosen" TINYINT,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_template_record" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"status" INT,
	"data" LONGTEXT,
	"error" LONGTEXT,
	"created_at" TIMESTAMP,
	"token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_store" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"address" VARCHAR,
	"province_id" INT,
	"city_id" INT,
	"district_id" INT,
	"longitude" VARCHAR,
	"latitude" VARCHAR,
	"score" INT,
	"cover_url" VARCHAR,
	"pic_url" TEXT,
	"business_hours" VARCHAR,
	"description" TEXT,
	"scope" MEDIUMTEXT,
	"is_default" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_user" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"ratio" INT,
	"step_currency" DECIMAL,
	"parent_id" INT,
	"invite_ratio" INT,
	"is_remind" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_setting" (
	"id" INT,
	"mall_id" INT,
	"convert_max" INT,
	"convert_ratio" INT,
	"currency_name" VARCHAR,
	"activity_pic" VARCHAR,
	"ranking_pic" VARCHAR,
	"qrcode_pic" LONGTEXT,
	"invite_ratio" INT,
	"remind_at" VARCHAR,
	"rule" LONGTEXT,
	"activity_rule" LONGTEXT,
	"ranking_num" INT,
	"title" VARCHAR,
	"share_title" VARCHAR,
	"qrcode_title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	"is_share" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	"is_territorial_limitation" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_order" (
	"id" INT,
	"order_id" INT,
	"mall_id" INT,
	"num" INT,
	"total_pay_price" DECIMAL,
	"user_id" INT,
	"currency" DECIMAL,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"token" VARCHAR,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_log" (
	"id" INT,
	"mall_id" INT,
	"step_id" INT,
	"type" INT,
	"currency" DECIMAL,
	"remark" VARCHAR,
	"data" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_goods_attr" (
	"id" INT,
	"mall_id" INT,
	"attr_id" INT,
	"currency" DECIMAL,
	"goods_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_goods" (
	"id" INT,
	"mall_id" INT,
	"currency" DECIMAL,
	"goods_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_daily" (
	"id" INT,
	"mall_id" INT,
	"step_id" INT,
	"ratio" INT,
	"real_num" INT,
	"num" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_banner_relation" (
	"id" INT,
	"mall_id" INT,
	"banner_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_ad" (
	"id" INT,
	"mall_id" INT,
	"unit_id" VARCHAR,
	"site" INT,
	"status" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_activity_log" (
	"id" INT,
	"mall_id" INT,
	"step_id" INT,
	"activity_id" INT,
	"step_currency" DECIMAL,
	"reward_currency" DECIMAL,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"raffled_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_activity_info" (
	"id" INT,
	"mall_id" INT,
	"activity_log_id" INT,
	"num" INT,
	"open_date" DATE,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_step_activity" (
	"id" INT,
	"mall_id" INT,
	"title" VARCHAR,
	"currency" DECIMAL,
	"step_num" INT,
	"bail_currency" DECIMAL,
	"status" TINYINT,
	"type" SMALLINT,
	"begin_at" DATE,
	"end_at" DATE,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_shopping_setting" (
	"id" INT,
	"mall_id" INT,
	"is_open" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_shopping_like_users" (
	"id" INT,
	"user_id" INT,
	"like_id" INT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_shopping_likes" (
	"id" INT,
	"mall_id" INT,
	"goods_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_shopping_buys" (
	"id" INT,
	"mall_id" INT,
	"order_id" INT,
	"user_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_share_setting" (
	"id" INT,
	"mall_id" INT,
	"key" VARCHAR,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"is_delete" INT,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_share_order_log" (
	"id" INT,
	"mall_id" INT,
	"share_setting" LONGTEXT,
	"order_share_info" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_share_order" (
	"id" INT,
	"mall_id" INT,
	"order_id" INT,
	"order_detail_id" INT,
	"user_id" INT,
	"first_parent_id" INT,
	"second_parent_id" INT,
	"third_parent_id" INT,
	"first_price" DECIMAL,
	"second_price" DECIMAL,
	"third_price" DECIMAL,
	"is_refund" TINYINT,
	"is_transfer" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_share_cash_log" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"type" INT,
	"price" DECIMAL,
	"desc" LONGTEXT,
	"custom_desc" LONGTEXT,
	"is_delete" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_share_cash" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"order_no" VARCHAR,
	"price" DECIMAL,
	"service_charge" DECIMAL,
	"type" VARCHAR,
	"extra" LONGTEXT,
	"status" INT,
	"is_delete" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"content" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_share" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"money" DECIMAL,
	"status" INT,
	"total_money" DECIMAL,
	"content" LONGTEXT,
	"is_delete" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"apply_at" DATETIME,
	"become_at" DATETIME,
	"reason" LONGTEXT,
	"first_children" INT,
	"all_children" INT,
	"all_money" DECIMAL,
	"all_order" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_scratch_setting" (
	"id" INT,
	"mall_id" INT,
	"title" VARCHAR,
	"type" SMALLINT,
	"probability" INT,
	"oppty" INT,
	"start_at" TIMESTAMP,
	"end_at" TIMESTAMP,
	"deplete_integral_num" INT,
	"rule" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_scratch_order" (
	"id" INT,
	"mall_id" INT,
	"scratch_log_id" INT,
	"order_id" INT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_scratch_log_coupon_relation" (
	"id" INT,
	"mall_id" INT,
	"user_coupon_id" INT,
	"scratch_log_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_scratch_log" (
	"id" INT,
	"mall_id" INT,
	"scratch_id" INT,
	"user_id" INT,
	"status" INT,
	"type" INT,
	"num" INT,
	"detail" LONGTEXT,
	"price" DECIMAL,
	"order_id" INT,
	"goods_id" INT,
	"raffled_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_scratch" (
	"id" INT,
	"mall_id" INT,
	"type" INT,
	"status" TINYINT,
	"goods_id" INT,
	"num" INT,
	"price" DECIMAL,
	"coupon_id" INT,
	"stock" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_refund_address" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"address_detail" VARCHAR,
	"mobile" VARCHAR,
	"remark" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_recharge_orders" (
	"id" INT,
	"mall_id" INT,
	"order_no" VARCHAR,
	"user_id" INT,
	"pay_price" DECIMAL,
	"send_price" DECIMAL,
	"pay_type" TINYINT,
	"is_pay" TINYINT,
	"pay_time" TIMESTAMP,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"send_integral" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_recharge" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"pay_price" DECIMAL,
	"send_price" DECIMAL,
	"is_delete" SMALLINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"send_integral" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_quick_shop_cats" (
	"id" INT,
	"mall_id" INT,
	"cat_id" INT,
	"sort" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_qr_code_parameter" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"token" VARCHAR,
	"data" MEDIUMTEXT,
	"created_at" TIMESTAMP,
	"path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_printer_setting" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"printer_id" INT,
	"block_id" INT,
	"status" TINYINT,
	"is_attr" TINYINT,
	"type" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_printer" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"type" VARCHAR,
	"name" VARCHAR,
	"setting" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_postage_rules" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"detail" LONGTEXT,
	"status" TINYINT,
	"type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pond_setting" (
	"id" INT,
	"mall_id" INT,
	"title" VARCHAR,
	"type" SMALLINT,
	"probability" INT,
	"oppty" INT,
	"start_at" TIMESTAMP,
	"end_at" TIMESTAMP,
	"deplete_integral_num" INT,
	"rule" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pond_order" (
	"id" INT,
	"mall_id" INT,
	"pond_log_id" INT,
	"order_id" INT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pond_log_coupon_relation" (
	"id" INT,
	"mall_id" INT,
	"user_coupon_id" INT,
	"pond_log_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pond_log" (
	"id" INT,
	"mall_id" INT,
	"pond_id" INT,
	"user_id" INT,
	"status" INT,
	"type" INT,
	"num" INT,
	"detail" VARCHAR,
	"goods_id" INT,
	"price" DECIMAL,
	"order_id" INT,
	"raffled_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pond" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"type" INT,
	"goods_id" INT,
	"num" INT,
	"price" DECIMAL,
	"image_url" VARCHAR,
	"coupon_id" INT,
	"stock" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_setting" (
	"id" INT,
	"mall_id" INT,
	"is_share" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	"rules" TEXT,
	"is_territorial_limitation" TINYINT,
	"advertisement" TEXT,
	"is_advertisement" TINYINT,
	"created_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_order_relation" (
	"id" INT,
	"order_id" INT,
	"user_id" INT,
	"pintuan_order_id" INT,
	"is_parent" TINYINT,
	"is_groups" TINYINT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_orders" (
	"id" INT,
	"preferential_price" DECIMAL,
	"mall_id" INT,
	"success_time" TIMESTAMP,
	"status" TINYINT,
	"people_num" INT,
	"pintuan_time" INT,
	"pintuan_goods_groups_id" INT,
	"goods_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_goods_share" (
	"id" INT,
	"share_commission_first" DECIMAL,
	"share_commission_second" DECIMAL,
	"share_commission_third" DECIMAL,
	"goods_id" INT,
	"goods_attr_id" INT,
	"pintuan_goods_groups_id" INT,
	"pintuan_goods_attr_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_goods_member_price" (
	"id" INT,
	"level" INT,
	"price" DECIMAL,
	"goods_id" INT,
	"goods_attr_id" INT,
	"pintuan_goods_groups_id" INT,
	"pintuan_goods_attr_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_goods_groups" (
	"id" INT,
	"goods_id" INT,
	"people_num" INT,
	"preferential_price" DECIMAL,
	"pintuan_time" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_goods_attr" (
	"id" INT,
	"pintuan_price" DECIMAL,
	"pintuan_stock" INT,
	"pintuan_goods_groups_id" INT,
	"goods_attr_id" INT,
	"goods_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_goods" (
	"id" INT,
	"is_alone_buy" TINYINT,
	"mall_id" INT,
	"goods_id" INT,
	"end_time" TIMESTAMP,
	"groups_restrictions" INT,
	"is_delete" TINYINT,
	"is_sell_well" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_cats" (
	"id" INT,
	"mall_id" INT,
	"cat_id" INT,
	"sort" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_pintuan_banners" (
	"id" INT,
	"mall_id" INT,
	"banner_id" INT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_payment_transfer" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"order_no" VARCHAR,
	"transfer_order_no" VARCHAR,
	"amount" DECIMAL,
	"is_pay" INT,
	"pay_type" VARCHAR,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_payment_refund" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"order_no" VARCHAR,
	"amount" DECIMAL,
	"is_pay" INT,
	"pay_type" INT,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"out_trade_no" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_payment_order_union" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"order_no" VARCHAR,
	"amount" DECIMAL,
	"is_pay" INT,
	"pay_type" INT,
	"title" VARCHAR,
	"support_pay_types" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_payment_order" (
	"id" INT,
	"payment_order_union_id" INT,
	"order_no" VARCHAR,
	"amount" DECIMAL,
	"is_pay" INT,
	"pay_type" INT,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"notify_class" VARCHAR,
	"refund" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_submit_result" (
	"id" INT,
	"token" VARCHAR,
	"data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_refund" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"user_id" INT,
	"order_id" INT,
	"order_detail_id" INT,
	"order_no" VARCHAR,
	"type" TINYINT,
	"refund_price" DECIMAL,
	"remark" VARCHAR,
	"pic_list" MEDIUMTEXT,
	"status" TINYINT,
	"status_time" TIMESTAMP,
	"merchant_remark" VARCHAR,
	"is_send" TINYINT,
	"send_time" TIMESTAMP,
	"express" VARCHAR,
	"express_no" VARCHAR,
	"address_id" INT,
	"is_confirm" TINYINT,
	"confirm_time" TIMESTAMP,
	"merchant_express" VARCHAR,
	"merchant_express_no" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_pay_result" (
	"id" INT,
	"order_id" INT,
	"data" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_express_single" (
	"id" INT,
	"mall_id" INT,
	"order_id" INT,
	"express_code" VARCHAR,
	"ebusiness_id" VARCHAR,
	"print_teplate" LONGTEXT,
	"order" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_detail" (
	"id" INT,
	"order_id" INT,
	"goods_id" INT,
	"num" INT,
	"unit_price" DECIMAL,
	"total_original_price" DECIMAL,
	"total_price" DECIMAL,
	"member_discount_price" DECIMAL,
	"goods_info" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_refund" TINYINT,
	"refund_status" TINYINT,
	"back_price" DECIMAL,
	"sign" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_comments" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"order_id" INT,
	"order_detail_id" INT,
	"user_id" INT,
	"score" TINYINT,
	"content" TEXT,
	"pic_url" TEXT,
	"is_show" TINYINT,
	"is_virtual" TINYINT,
	"virtual_user" VARCHAR,
	"virtual_avatar" VARCHAR,
	"virtual_time" TIMESTAMP,
	"goods_id" INT,
	"goods_warehouse_id" INT,
	"sign" VARCHAR,
	"reply_content" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	"is_anonymous" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order_clerk" (
	"id" INT,
	"affirm_pay_type" TINYINT,
	"clerk_type" TINYINT,
	"clerk_remark" VARCHAR,
	"mall_id" INT,
	"order_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_order" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"mch_id" INT,
	"order_no" VARCHAR,
	"total_price" DECIMAL,
	"total_pay_price" DECIMAL,
	"express_original_price" DECIMAL,
	"express_price" DECIMAL,
	"total_goods_price" DECIMAL,
	"total_goods_original_price" DECIMAL,
	"member_discount_price" DECIMAL,
	"use_user_coupon_id" INT,
	"coupon_discount_price" DECIMAL,
	"use_integral_num" INT,
	"integral_deduction_price" DECIMAL,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"address" VARCHAR,
	"remark" VARCHAR,
	"order_form" LONGTEXT,
	"words" VARCHAR,
	"seller_remark" VARCHAR,
	"is_pay" TINYINT,
	"pay_type" TINYINT,
	"pay_time" TIMESTAMP,
	"is_send" TINYINT,
	"send_time" TIMESTAMP,
	"express" VARCHAR,
	"express_no" VARCHAR,
	"is_sale" TINYINT,
	"is_confirm" TINYINT,
	"confirm_time" TIMESTAMP,
	"cancel_status" TINYINT,
	"cancel_time" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	"is_recycle" TINYINT,
	"is_offline" TINYINT,
	"offline_qrcode" VARCHAR,
	"clerk_id" INT,
	"store_id" INT,
	"sign" VARCHAR,
	"token" VARCHAR,
	"support_pay_types" LONGTEXT,
	"is_comment" TINYINT,
	"comment_time" TIMESTAMP,
	"sale_status" TINYINT,
	"status" TINYINT,
	"back_price" DECIMAL,
	"auto_cancel_time" TIMESTAMP,
	"auto_confirm_time" TIMESTAMP,
	"auto_sales_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_option" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"group" VARCHAR,
	"name" VARCHAR,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mp_template_record" (
	"id" INT,
	"mall_id" INT,
	"open_id" VARCHAR,
	"status" INT,
	"data" LONGTEXT,
	"error" LONGTEXT,
	"created_at" TIMESTAMP,
	"token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_miaosha_setting" (
	"id" INT,
	"mall_id" INT,
	"over_time" INT,
	"is_share" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	"is_territorial_limitation" TINYINT,
	"open_time" TEXT,
	"created_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_miaosha_goods" (
	"id" INT,
	"mall_id" INT,
	"goods_id" INT,
	"goods_warehouse_id" INT,
	"open_time" TINYINT,
	"open_date" DATE,
	"buy_limit" INT,
	"virtual_miaosha_num" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_miaosha_banners" (
	"id" INT,
	"mall_id" INT,
	"banner_id" INT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_visit_log" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"user_id" INT,
	"num" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_setting" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"is_share" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	"is_territorial_limitation" TINYINT,
	"send_type" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_order" (
	"id" INT,
	"order_id" INT,
	"is_transfer" TINYINT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_mall_setting" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"is_share" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_goods" (
	"id" INT,
	"mch_id" INT,
	"mall_id" INT,
	"goods_id" INT,
	"status" TINYINT,
	"sort" INT,
	"remark" VARCHAR,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_common_cat" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"sort" INT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_cash" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"money" DECIMAL,
	"order_no" VARCHAR,
	"status" TINYINT,
	"transfer_status" TINYINT,
	"type" VARCHAR,
	"type_data" VARCHAR,
	"virtual_type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch_account_log" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"money" DECIMAL,
	"desc" TEXT,
	"type" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mch" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"status" TINYINT,
	"is_recommend" TINYINT,
	"review_status" TINYINT,
	"review_remark" VARCHAR,
	"review_time" TIMESTAMP,
	"realname" VARCHAR,
	"wechat" VARCHAR,
	"mobile" VARCHAR,
	"mch_common_cat_id" INT,
	"transfer_rate" INT,
	"account_money" DECIMAL,
	"sort" INT,
	"form_data" MEDIUMTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall_setting" (
	"id" INT,
	"mall_id" INT,
	"key" VARCHAR,
	"value" VARCHAR,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall_member_rights" (
	"id" INT,
	"member_id" INT,
	"title" VARCHAR,
	"content" VARCHAR,
	"pic_url" VARCHAR,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall_member_orders" (
	"id" INT,
	"user_id" INT,
	"mall_id" INT,
	"order_no" VARCHAR,
	"pay_price" DECIMAL,
	"pay_type" TINYINT,
	"is_pay" TINYINT,
	"pay_time" TIMESTAMP,
	"detail" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall_members" (
	"id" INT,
	"mall_id" INT,
	"level" INT,
	"name" VARCHAR,
	"auto_update" TINYINT,
	"money" DECIMAL,
	"discount" DECIMAL,
	"status" TINYINT,
	"pic_url" VARCHAR,
	"is_purchase" TINYINT,
	"price" DECIMAL,
	"rules" MEDIUMTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall_goods" (
	"id" INT,
	"mall_id" INT,
	"goods_id" INT,
	"is_quick_shop" TINYINT,
	"is_sell_well" TINYINT,
	"is_negotiable" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall_banner_relation" (
	"id" INT,
	"mall_id" INT,
	"banner_id" INT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mall" (
	"id" INT,
	"name" VARCHAR,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	"is_recycle" TINYINT,
	"is_disable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_mail_setting" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"send_mail" LONGTEXT,
	"send_pwd" VARCHAR,
	"send_name" VARCHAR,
	"receive_mail" LONGTEXT,
	"status" INT,
	"is_delete" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_lottery_setting" (
	"id" INT,
	"mall_id" INT,
	"type" TINYINT,
	"title" VARCHAR,
	"rule" LONGTEXT,
	"created_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_lottery_order" (
	"id" INT,
	"mall_id" INT,
	"lottery_log_id" INT,
	"order_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_lottery_log" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"lottery_id" INT,
	"status" SMALLINT,
	"goods_id" INT,
	"child_id" INT,
	"lucky_code" VARCHAR,
	"raffled_at" TIMESTAMP,
	"obtain_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_lottery_default" (
	"id" INT,
	"mall_id" INT,
	"lottery_id" INT,
	"user_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_lottery_banner" (
	"id" INT,
	"mall_id" INT,
	"banner_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_lottery" (
	"id" INT,
	"mall_id" INT,
	"goods_id" INT,
	"status" TINYINT,
	"type" TINYINT,
	"stock" INT,
	"start_at" TIMESTAMP,
	"end_at" TIMESTAMP,
	"join_min_num" INT,
	"sort" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"participant" INT,
	"invitee" INT,
	"code_num" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_setting" (
	"id" INT,
	"mall_id" INT,
	"is_share" INT,
	"is_sms" INT,
	"is_mail" INT,
	"is_print" INT,
	"is_territorial_limitation" INT,
	"desc" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	"send_type" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_orders" (
	"id" INT,
	"mall_id" INT,
	"order_id" INT,
	"token" VARCHAR,
	"integral_num" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_goods_attr" (
	"id" INT,
	"integral_num" INT,
	"goods_id" INT,
	"goods_attr_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_goods" (
	"id" INT,
	"goods_id" INT,
	"mall_id" INT,
	"is_home" TINYINT,
	"integral_num" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_coupon_order_submit_result" (
	"id" INT,
	"token" VARCHAR,
	"data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_coupons_user" (
	"id" INT,
	"user_id" INT,
	"mall_id" INT,
	"integral_mall_coupon_id" INT,
	"user_coupon_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_coupons_orders" (
	"id" INT,
	"user_id" INT,
	"mall_id" INT,
	"order_no" VARCHAR,
	"integral_mall_coupon_id" INT,
	"integral_mall_coupon_info" TEXT,
	"user_coupon_id" INT,
	"price" DECIMAL,
	"integral_num" INT,
	"is_pay" TINYINT,
	"pay_time" TIMESTAMP,
	"pay_type" TINYINT,
	"token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_coupons" (
	"id" INT,
	"mall_id" INT,
	"coupon_id" INT,
	"exchange_num" INT,
	"integral_num" INT,
	"send_count" INT,
	"price" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_cats" (
	"id" INT,
	"mall_id" INT,
	"cat_id" INT,
	"sort" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_mall_banners" (
	"id" INT,
	"mall_id" INT,
	"banner_id" INT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_integral_log" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"type" TINYINT,
	"integral" INT,
	"desc" VARCHAR,
	"custom_desc" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_home_nav" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"url" VARCHAR,
	"open_type" VARCHAR,
	"icon_url" VARCHAR,
	"sort" INT,
	"status" TINYINT,
	"params" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_home_block" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"value" TEXT,
	"type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_warehouse" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"original_price" DECIMAL,
	"cost_price" DECIMAL,
	"detail" LONGTEXT,
	"cover_pic" VARCHAR,
	"pic_url" TEXT,
	"video_url" VARCHAR,
	"unit" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_share" (
	"id" INT,
	"share_commission_first" DECIMAL,
	"share_commission_second" DECIMAL,
	"share_commission_third" DECIMAL,
	"goods_id" INT,
	"goods_attr_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_service_relation" (
	"id" INT,
	"service_id" INT,
	"goods_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_services" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"remark" VARCHAR,
	"sort" INT,
	"is_default" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_member_price" (
	"id" INT,
	"level" INT,
	"price" DECIMAL,
	"goods_attr_id" INT,
	"is_delete" TINYINT,
	"goods_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_cat_relation" (
	"id" INT,
	"goods_warehouse_id" INT,
	"cat_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_cats" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"parent_id" INT,
	"name" VARCHAR,
	"pic_url" VARCHAR,
	"sort" INT,
	"big_pic_url" VARCHAR,
	"advert_pic" VARCHAR,
	"advert_url" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_card_relation" (
	"id" INT,
	"goods_id" INT,
	"card_id" INT,
	"is_delete" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_cards" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"pic_url" VARCHAR,
	"description" TEXT,
	"expire_type" TINYINT,
	"expire_day" INT,
	"begin_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"total_count" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods_attr" (
	"id" INT,
	"goods_id" INT,
	"sign_id" VARCHAR,
	"stock" INT,
	"price" DECIMAL,
	"no" VARCHAR,
	"weight" INT,
	"pic_url" VARCHAR,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_goods" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"goods_warehouse_id" INT,
	"status" SMALLINT,
	"price" DECIMAL,
	"use_attr" SMALLINT,
	"attr_groups" TEXT,
	"goods_stock" INT,
	"virtual_sales" INT,
	"confine_count" INT,
	"pieces" INT,
	"forehead" DECIMAL,
	"freight_id" INT,
	"give_integral" INT,
	"give_integral_type" TINYINT,
	"forehead_integral" DECIMAL,
	"forehead_integral_type" TINYINT,
	"accumulative" TINYINT,
	"individual_share" SMALLINT,
	"attr_setting_type" TINYINT,
	"is_level" TINYINT,
	"is_level_alone" TINYINT,
	"share_type" TINYINT,
	"sign" VARCHAR,
	"app_share_pic" VARCHAR,
	"app_share_title" VARCHAR,
	"is_default_services" TINYINT,
	"sort" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	"payment_people" INT,
	"payment_num" INT,
	"payment_amount" DECIMAL,
	"payment_order" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_fxhb_user_activity" (
	"id" INT,
	"user_id" INT,
	"parent_id" INT,
	"fxhb_activity_id" INT,
	"number" INT,
	"count_price" DECIMAL,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"data" LONGTEXT,
	"status" TINYINT,
	"mall_id" INT,
	"token" VARCHAR,
	"user_coupon_id" INT,
	"get_price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_fxhb_activity_goods_relation" (
	"id" INT,
	"activity_id" INT,
	"goods_warehouse_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_fxhb_activity_cat_relation" (
	"id" INT,
	"activity_id" INT,
	"cat_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_fxhb_activity" (
	"id" INT,
	"status" TINYINT,
	"type" TINYINT,
	"number" INT,
	"count_price" DECIMAL,
	"least_price" DECIMAL,
	"effective_time" INT,
	"open_effective_time" INT,
	"coupon_type" TINYINT,
	"sponsor_num" INT,
	"help_num" INT,
	"sponsor_count" INT,
	"sponsor_count_type" TINYINT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"remark" TEXT,
	"pic_url" VARCHAR,
	"share_title" TEXT,
	"share_pic_url" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	"mall_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_free_delivery_rules" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"price" DECIMAL,
	"detail" LONGTEXT,
	"is_delete" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_formid" (
	"id" INT,
	"user_id" INT,
	"form_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"remains" INT,
	"expired_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_favorite" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"goods_id" INT,
	"created_at" TIMESTAMP,
	"is_delete" INT,
	"deleted_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_diy_template" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"data" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_diy_page_nav" (
	"id" INT,
	"mall_id" INT,
	"page_id" INT,
	"name" VARCHAR,
	"template_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_diy_page" (
	"id" INT,
	"mall_id" INT,
	"title" VARCHAR,
	"show_navs" TINYINT,
	"is_disable" TINYINT,
	"is_home_page" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_diy_alone_page" (
	"id" INT,
	"mall_id" INT,
	"type" VARCHAR,
	"params" LONGTEXT,
	"is_delete" SMALLINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_open" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_delivery" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"express_id" INT,
	"customer_account" VARCHAR,
	"customer_pwd" VARCHAR,
	"month_code" VARCHAR,
	"outlets_name" VARCHAR,
	"outlets_code" VARCHAR,
	"company" VARCHAR,
	"name" VARCHAR,
	"tel" VARCHAR,
	"mobile" VARCHAR,
	"zip_code" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"district" VARCHAR,
	"address" VARCHAR,
	"is_sms" TINYINT,
	"template_size" VARCHAR,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon_member_relation" (
	"id" INT,
	"mall_id" INT,
	"coupon_id" INT,
	"member_level" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon_mall_relation" (
	"id" INT,
	"mall_id" INT,
	"user_coupon_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon_goods_relation" (
	"id" INT,
	"coupon_id" INT,
	"goods_warehouse_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon_center" (
	"id" INT,
	"mall_id" INT,
	"coupon_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon_cat_relation" (
	"id" INT,
	"coupon_id" INT,
	"cat_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon_auto_send" (
	"id" INT,
	"mall_id" INT,
	"coupon_id" INT,
	"event" INT,
	"send_count" INT,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_coupon" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"type" SMALLINT,
	"discount" DECIMAL,
	"pic_url" INT,
	"desc" VARCHAR,
	"min_price" DECIMAL,
	"sub_price" DECIMAL,
	"total_count" INT,
	"sort" INT,
	"expire_type" SMALLINT,
	"expire_day" INT,
	"begin_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"appoint_type" SMALLINT,
	"rule" VARCHAR,
	"is_member" TINYINT,
	"is_delete" TINYINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_validate_code_log" (
	"id" INT,
	"target" VARCHAR,
	"content" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_validate_code" (
	"id" INT,
	"target" VARCHAR,
	"code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"is_validated" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_task" (
	"id" INT,
	"token" VARCHAR,
	"delay_seconds" INT,
	"is_executed" INT,
	"class" VARCHAR,
	"params" LONGTEXT,
	"content" LONGTEXT,
	"is_delete" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_session" (
	"id" CHAR,
	"expire" INT,
	"data" BLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_queue_data" (
	"id" INT,
	"queue_id" INT,
	"token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_queue" (
	"id" INT,
	"channel" VARCHAR,
	"job" BLOB,
	"pushed_at" INT,
	"ttr" INT,
	"delay" INT,
	"priority" INT,
	"reserved_at" INT,
	"attempt" INT,
	"done_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_plugin" (
	"id" INT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"version" VARCHAR,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_exception_log" (
	"id" INT,
	"mall_id" INT,
	"level" TINYINT,
	"title" MEDIUMTEXT,
	"content" MEDIUMTEXT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_core_action_log" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"model" VARCHAR,
	"model_id" INT,
	"before_update" TEXT,
	"after_update" TEXT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_clerk_user_store_relation" (
	"id" INT,
	"clerk_user_id" INT,
	"store_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_clerk_user" (
	"id" INT,
	"user_id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_user_remind" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"date" TIMESTAMP,
	"is_remind" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_user" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"total" INT,
	"continue" INT,
	"is_remind" TINYINT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"continue_start" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_sign" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"number" DECIMAL,
	"type" VARCHAR,
	"day" INT,
	"status" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"token" VARCHAR,
	"award_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_queue" (
	"id" INT,
	"token" VARCHAR,
	"data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_customize" (
	"id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_config" (
	"id" INT,
	"mall_id" INT,
	"status" TINYINT,
	"is_remind" TINYINT,
	"time" VARCHAR,
	"continue_type" TINYINT,
	"rule" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_check_in_award_config" (
	"id" INT,
	"mall_id" INT,
	"number" DECIMAL,
	"day" INT,
	"type" VARCHAR,
	"status" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_cart" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"goods_id" INT,
	"attr_id" INT,
	"num" INT,
	"mch_id" INT,
	"is_delete" TINYINT,
	"sign" VARCHAR,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_booking_store" (
	"id" INT,
	"mall_id" INT,
	"store_id" INT,
	"goods_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_booking_setting" (
	"id" INT,
	"mall_id" INT,
	"is_share" TINYINT,
	"is_sms" TINYINT,
	"is_mail" TINYINT,
	"is_print" TINYINT,
	"is_cat" TINYINT,
	"is_form" TINYINT,
	"form_data" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"payment_type" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_booking_order" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"token" VARCHAR,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_booking_goods" (
	"id" INT,
	"mall_id" INT,
	"goods_id" INT,
	"form_data" LONGTEXT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_booking_cats" (
	"id" INT,
	"mall_id" INT,
	"cat_id" INT,
	"sort" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_bargain_user_order" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"bargain_order_id" INT,
	"price" DECIMAL,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_bargain_setting" (
	"id" INT,
	"mall_id" INT,
	"key" VARCHAR,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_bargain_order" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"bargain_goods_id" INT,
	"token" VARCHAR,
	"price" DECIMAL,
	"min_price" DECIMAL,
	"time" INT,
	"status" TINYINT,
	"bargain_goods_data" LONGTEXT,
	"created_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_bargain_goods" (
	"id" INT,
	"goods_id" INT,
	"mall_id" INT,
	"min_price" DECIMAL,
	"begin_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"time" INT,
	"status_data" VARCHAR,
	"is_delete" SMALLINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" TINYINT,
	"type" TINYINT,
	"stock" INT,
	"initiator" INT,
	"participant" INT,
	"min_price_goods" INT,
	"underway" INT,
	"success" INT,
	"fail" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_bargain_banner" (
	"id" INT,
	"banner_id" INT,
	"mall_id" INT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_banner" (
	"id" INT,
	"mall_id" INT,
	"pic_url" VARCHAR,
	"title" VARCHAR,
	"page_url" VARCHAR,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_balance_log" (
	"id" INT,
	"mall_id" INT,
	"user_id" INT,
	"type" TINYINT,
	"money" DECIMAL,
	"desc" VARCHAR,
	"custom_desc" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_auth_role_user" (
	"id" INT,
	"role_id" INT,
	"user_id" INT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_auth_role_permission" (
	"id" INT,
	"role_id" INT,
	"permissions" LONGTEXT,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_auth_role" (
	"id" INT,
	"creator_id" INT,
	"mall_id" INT,
	"name" VARCHAR,
	"remark" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_attachment_storage" (
	"id" INT,
	"mall_id" INT,
	"type" TINYINT,
	"config" LONGTEXT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_attachment_group" (
	"id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"is_delete" SMALLINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_attachment" (
	"id" INT,
	"storage_id" INT,
	"attachment_group_id" INT,
	"user_id" INT,
	"mall_id" INT,
	"mch_id" INT,
	"name" VARCHAR,
	"size" INT,
	"url" VARCHAR,
	"thumb_url" VARCHAR,
	"type" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_article" (
	"id" INT,
	"mall_id" INT,
	"article_cat_id" INT,
	"status" TINYINT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"sort" INT,
	"is_delete" SMALLINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_aliapp_template" (
	"id" INT,
	"mall_id" INT,
	"tpl_name" VARCHAR,
	"tpl_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_aliapp_config" (
	"id" INT,
	"mall_id" INT,
	"appid" VARCHAR,
	"app_private_key" VARCHAR,
	"alipay_public_key" VARCHAR,
	"cs_tnt_inst_id" VARCHAR,
	"cs_scene" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_admin_register" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"mobile" VARCHAR,
	"name" VARCHAR,
	"remark" VARCHAR,
	"wechat_id" VARCHAR,
	"id_card_front_pic" VARCHAR,
	"id_card_back_pic" VARCHAR,
	"business_pic" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"is_delete" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_admin_info" (
	"id" INT,
	"user_id" INT,
	"app_max_count" INT,
	"permissions" TEXT,
	"remark" VARCHAR,
	"expired_at" TIMESTAMP,
	"is_delete" INT,
	"we7_user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zjhj_bd_address" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"province_id" INT,
	"province" VARCHAR,
	"city_id" INT,
	"city" VARCHAR,
	"district_id" INT,
	"district" VARCHAR,
	"mobile" VARCHAR,
	"detail" VARCHAR,
	"is_default" TINYINT,
	"is_delete" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
