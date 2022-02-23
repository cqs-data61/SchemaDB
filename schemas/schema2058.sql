DROP DATABASE IF EXISTS "schema2058";
CREATE DATABASE "schema2058";
USE "schema2058";
CREATE TABLE "ums_role_permission_relation" (
	"id" BIGINT,
	"role_id" BIGINT,
	"permission_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_role" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"admin_count" INT,
	"create_time" DATETIME,
	"status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_permission" (
	"id" BIGINT,
	"pid" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	"icon" VARCHAR,
	"type" INT,
	"uri" VARCHAR,
	"status" INT,
	"create_time" DATETIME,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_task" (
	"id" BIGINT,
	"name" VARCHAR,
	"growth" INT,
	"intergration" INT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_tag" (
	"id" BIGINT,
	"name" VARCHAR,
	"finish_order_count" INT,
	"finish_order_amount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_statistics_info" (
	"id" BIGINT,
	"member_id" BIGINT,
	"consume_amount" DECIMAL,
	"order_count" INT,
	"coupon_count" INT,
	"comment_count" INT,
	"return_order_count" INT,
	"login_count" INT,
	"attend_count" INT,
	"fans_count" INT,
	"collect_product_count" INT,
	"collect_subject_count" INT,
	"collect_topic_count" INT,
	"collect_comment_count" INT,
	"invite_friend_count" INT,
	"recent_order_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_rule_setting" (
	"id" BIGINT,
	"continue_sign_day" INT,
	"continue_sign_point" INT,
	"consume_per_point" DECIMAL,
	"low_order_amount" DECIMAL,
	"max_point_per_order" INT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_receive_address" (
	"id" BIGINT,
	"member_id" BIGINT,
	"name" VARCHAR,
	"phone_number" VARCHAR,
	"default_status" INT,
	"post_code" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"detail_address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_product_category_relation" (
	"id" BIGINT,
	"member_id" BIGINT,
	"product_category_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_member_tag_relation" (
	"id" BIGINT,
	"member_id" BIGINT,
	"tag_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_login_log" (
	"id" BIGINT,
	"member_id" BIGINT,
	"create_time" DATETIME,
	"ip" VARCHAR,
	"city" VARCHAR,
	"login_type" INT,
	"province" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member_level" (
	"id" BIGINT,
	"name" VARCHAR,
	"growth_point" INT,
	"default_status" INT,
	"free_freight_point" DECIMAL,
	"comment_growth_point" INT,
	"priviledge_free_freight" INT,
	"priviledge_sign_in" INT,
	"priviledge_comment" INT,
	"priviledge_promotion" INT,
	"priviledge_member_price" INT,
	"priviledge_birthday" INT,
	"note" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_member" (
	"id" BIGINT,
	"member_level_id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"phone" VARCHAR,
	"status" INT,
	"create_time" DATETIME,
	"icon" VARCHAR,
	"gender" INT,
	"birthday" DATE,
	"city" VARCHAR,
	"job" VARCHAR,
	"personalized_signature" VARCHAR,
	"source_type" INT,
	"integration" INT,
	"growth" INT,
	"luckey_count" INT,
	"history_integration" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_integration_consume_setting" (
	"id" BIGINT,
	"deduction_per_amount" INT,
	"max_percent_per_order" INT,
	"use_unit" INT,
	"coupon_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_integration_change_history" (
	"id" BIGINT,
	"member_id" BIGINT,
	"create_time" DATETIME,
	"change_type" INT,
	"change_count" INT,
	"operate_man" VARCHAR,
	"operate_note" VARCHAR,
	"source_type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_growth_change_history" (
	"id" BIGINT,
	"member_id" BIGINT,
	"create_time" DATETIME,
	"change_type" INT,
	"change_count" INT,
	"operate_man" VARCHAR,
	"operate_note" VARCHAR,
	"source_type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_admin_role_relation" (
	"id" BIGINT,
	"admin_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_admin_permission_relation" (
	"id" BIGINT,
	"admin_id" BIGINT,
	"permission_id" BIGINT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_admin_login_log" (
	"id" BIGINT,
	"admin_id" BIGINT,
	"create_time" DATETIME,
	"ip" VARCHAR,
	"address" VARCHAR,
	"user_agent" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ums_admin" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"icon" VARCHAR,
	"email" VARCHAR,
	"nick_name" VARCHAR,
	"note" VARCHAR,
	"create_time" DATETIME,
	"login_time" DATETIME,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_home_recommend_subject" (
	"id" BIGINT,
	"subject_id" BIGINT,
	"subject_name" VARCHAR,
	"recommend_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_home_recommend_product" (
	"id" BIGINT,
	"product_id" BIGINT,
	"product_name" VARCHAR,
	"recommend_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_home_new_product" (
	"id" BIGINT,
	"product_id" BIGINT,
	"product_name" VARCHAR,
	"recommend_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_home_brand" (
	"id" BIGINT,
	"brand_id" BIGINT,
	"brand_name" VARCHAR,
	"recommend_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_home_advertise" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" INT,
	"pic" VARCHAR,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"status" INT,
	"click_count" INT,
	"order_count" INT,
	"url" VARCHAR,
	"note" VARCHAR,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_flash_promotion_session" (
	"id" BIGINT,
	"name" VARCHAR,
	"start_time" TIME,
	"end_time" TIME,
	"status" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_flash_promotion_product_relation" (
	"id" BIGINT,
	"flash_promotion_id" BIGINT,
	"flash_promotion_session_id" BIGINT,
	"product_id" BIGINT,
	"flash_promotion_price" DECIMAL,
	"flash_promotion_count" INT,
	"flash_promotion_limit" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_flash_promotion_log" (
	"id" INT,
	"member_id" INT,
	"product_id" BIGINT,
	"member_phone" VARCHAR,
	"product_name" VARCHAR,
	"subscribe_time" DATETIME,
	"send_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_flash_promotion" (
	"id" BIGINT,
	"title" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"status" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_coupon_product_relation" (
	"id" BIGINT,
	"coupon_id" BIGINT,
	"product_id" BIGINT,
	"product_name" VARCHAR,
	"product_sn" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_coupon_product_category_relation" (
	"id" BIGINT,
	"coupon_id" BIGINT,
	"product_category_id" BIGINT,
	"product_category_name" VARCHAR,
	"parent_category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_coupon_history" (
	"id" BIGINT,
	"coupon_id" BIGINT,
	"member_id" BIGINT,
	"coupon_code" VARCHAR,
	"member_nickname" VARCHAR,
	"get_type" INT,
	"create_time" DATETIME,
	"use_status" INT,
	"use_time" DATETIME,
	"order_id" BIGINT,
	"order_sn" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sms_coupon" (
	"id" BIGINT,
	"type" INT,
	"name" VARCHAR,
	"platform" INT,
	"count" INT,
	"amount" DECIMAL,
	"per_limit" INT,
	"min_point" DECIMAL,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"use_type" INT,
	"note" VARCHAR,
	"publish_count" INT,
	"use_count" INT,
	"receive_count" INT,
	"enable_time" DATETIME,
	"code" VARCHAR,
	"member_level" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_sku_stock" (
	"id" BIGINT,
	"product_id" BIGINT,
	"sku_code" VARCHAR,
	"price" DECIMAL,
	"stock" INT,
	"lock_stock" INT,
	"low_stock" INT,
	"sp1" VARCHAR,
	"sp2" VARCHAR,
	"sp3" VARCHAR,
	"pic" VARCHAR,
	"sale" INT,
	"promotion_price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_vertify_record" (
	"id" BIGINT,
	"product_id" BIGINT,
	"create_time" DATETIME,
	"vertify_man" VARCHAR,
	"status" INT,
	"detail" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_operate_log" (
	"id" BIGINT,
	"product_id" BIGINT,
	"price_old" DECIMAL,
	"price_new" DECIMAL,
	"sale_price_old" DECIMAL,
	"sale_price_new" DECIMAL,
	"gift_point_old" INT,
	"gift_point_new" INT,
	"use_point_limit_old" INT,
	"use_point_limit_new" INT,
	"operate_man" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_ladder" (
	"id" BIGINT,
	"product_id" BIGINT,
	"count" INT,
	"discount" DECIMAL,
	"price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_full_reduction" (
	"id" BIGINT,
	"product_id" BIGINT,
	"full_price" DECIMAL,
	"reduce_price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_category_attribute_relation" (
	"id" BIGINT,
	"product_category_id" BIGINT,
	"product_attribute_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_category" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"name" VARCHAR,
	"level" INT,
	"product_count" INT,
	"product_unit" VARCHAR,
	"nav_status" INT,
	"show_status" INT,
	"sort" INT,
	"icon" VARCHAR,
	"keywords" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_attribute_value" (
	"id" BIGINT,
	"product_id" BIGINT,
	"product_attribute_id" BIGINT,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_attribute_category" (
	"id" BIGINT,
	"name" VARCHAR,
	"attribute_count" INT,
	"param_count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product_attribute" (
	"id" BIGINT,
	"product_attribute_category_id" BIGINT,
	"name" VARCHAR,
	"select_type" INT,
	"input_type" INT,
	"input_list" VARCHAR,
	"sort" INT,
	"filter_type" INT,
	"search_type" INT,
	"related_status" INT,
	"hand_add_status" INT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_product" (
	"id" BIGINT,
	"brand_id" BIGINT,
	"product_category_id" BIGINT,
	"feight_template_id" BIGINT,
	"product_attribute_category_id" BIGINT,
	"name" VARCHAR,
	"pic" VARCHAR,
	"product_sn" VARCHAR,
	"delete_status" INT,
	"publish_status" INT,
	"new_status" INT,
	"recommand_status" INT,
	"verify_status" INT,
	"sort" INT,
	"sale" INT,
	"price" DECIMAL,
	"promotion_price" DECIMAL,
	"gift_growth" INT,
	"gift_point" INT,
	"use_point_limit" INT,
	"sub_title" VARCHAR,
	"description" TEXT,
	"original_price" DECIMAL,
	"stock" INT,
	"low_stock" INT,
	"unit" VARCHAR,
	"weight" DECIMAL,
	"preview_status" INT,
	"service_ids" VARCHAR,
	"keywords" VARCHAR,
	"note" VARCHAR,
	"album_pics" VARCHAR,
	"detail_title" VARCHAR,
	"detail_desc" TEXT,
	"detail_html" TEXT,
	"detail_mobile_html" TEXT,
	"promotion_start_time" DATETIME,
	"promotion_end_time" DATETIME,
	"promotion_per_limit" INT,
	"promotion_type" INT,
	"brand_name" VARCHAR,
	"product_category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_member_price" (
	"id" BIGINT,
	"product_id" BIGINT,
	"member_level_id" BIGINT,
	"member_price" DECIMAL,
	"member_level_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_feight_template" (
	"id" BIGINT,
	"name" VARCHAR,
	"charge_type" INT,
	"first_weight" DECIMAL,
	"first_fee" DECIMAL,
	"continue_weight" DECIMAL,
	"continme_fee" DECIMAL,
	"dest" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_comment_replay" (
	"id" BIGINT,
	"comment_id" BIGINT,
	"member_nick_name" VARCHAR,
	"member_icon" VARCHAR,
	"content" VARCHAR,
	"create_time" DATETIME,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_comment" (
	"id" BIGINT,
	"product_id" BIGINT,
	"member_nick_name" VARCHAR,
	"product_name" VARCHAR,
	"star" INT,
	"member_ip" VARCHAR,
	"create_time" DATETIME,
	"show_status" INT,
	"product_attribute" VARCHAR,
	"collect_couont" INT,
	"read_count" INT,
	"content" TEXT,
	"pics" VARCHAR,
	"member_icon" VARCHAR,
	"replay_count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_brand" (
	"id" BIGINT,
	"name" VARCHAR,
	"first_letter" VARCHAR,
	"sort" INT,
	"factory_status" INT,
	"show_status" INT,
	"product_count" INT,
	"product_comment_count" INT,
	"logo" VARCHAR,
	"big_pic" VARCHAR,
	"brand_story" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_album_pic" (
	"id" BIGINT,
	"album_id" BIGINT,
	"pic" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_album" (
	"id" BIGINT,
	"name" VARCHAR,
	"cover_pic" VARCHAR,
	"pic_count" INT,
	"sort" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_order_setting" (
	"id" BIGINT,
	"flash_order_overtime" INT,
	"normal_order_overtime" INT,
	"confirm_overtime" INT,
	"finish_overtime" INT,
	"comment_overtime" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_order_return_reason" (
	"id" BIGINT,
	"name" VARCHAR,
	"sort" INT,
	"status" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_order_return_apply" (
	"id" BIGINT,
	"order_id" BIGINT,
	"company_address_id" BIGINT,
	"product_id" BIGINT,
	"order_sn" VARCHAR,
	"create_time" DATETIME,
	"member_username" VARCHAR,
	"return_amount" DECIMAL,
	"return_name" VARCHAR,
	"return_phone" VARCHAR,
	"status" INT,
	"handle_time" DATETIME,
	"product_pic" VARCHAR,
	"product_name" VARCHAR,
	"product_brand" VARCHAR,
	"product_attr" VARCHAR,
	"product_count" INT,
	"product_price" DECIMAL,
	"product_real_price" DECIMAL,
	"reason" VARCHAR,
	"description" VARCHAR,
	"proof_pics" VARCHAR,
	"handle_note" VARCHAR,
	"handle_man" VARCHAR,
	"receive_man" VARCHAR,
	"receive_time" DATETIME,
	"receive_note" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_order_operate_history" (
	"id" BIGINT,
	"order_id" BIGINT,
	"operate_man" VARCHAR,
	"create_time" DATETIME,
	"order_status" INT,
	"note" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_order_item" (
	"id" BIGINT,
	"order_id" BIGINT,
	"order_sn" VARCHAR,
	"product_id" BIGINT,
	"product_pic" VARCHAR,
	"product_name" VARCHAR,
	"product_brand" VARCHAR,
	"product_sn" VARCHAR,
	"product_price" DECIMAL,
	"product_quantity" INT,
	"product_sku_id" BIGINT,
	"product_sku_code" VARCHAR,
	"product_category_id" BIGINT,
	"sp1" VARCHAR,
	"sp2" VARCHAR,
	"sp3" VARCHAR,
	"promotion_name" VARCHAR,
	"promotion_amount" DECIMAL,
	"coupon_amount" DECIMAL,
	"integration_amount" DECIMAL,
	"real_amount" DECIMAL,
	"gift_integration" INT,
	"gift_growth" INT,
	"product_attr" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_order" (
	"id" BIGINT,
	"member_id" BIGINT,
	"coupon_id" BIGINT,
	"order_sn" VARCHAR,
	"create_time" DATETIME,
	"member_username" VARCHAR,
	"total_amount" DECIMAL,
	"pay_amount" DECIMAL,
	"freight_amount" DECIMAL,
	"promotion_amount" DECIMAL,
	"integration_amount" DECIMAL,
	"coupon_amount" DECIMAL,
	"discount_amount" DECIMAL,
	"pay_type" INT,
	"source_type" INT,
	"status" INT,
	"order_type" INT,
	"delivery_company" VARCHAR,
	"delivery_sn" VARCHAR,
	"auto_confirm_day" INT,
	"integration" INT,
	"growth" INT,
	"promotion_info" VARCHAR,
	"bill_type" INT,
	"bill_header" VARCHAR,
	"bill_content" VARCHAR,
	"bill_receiver_phone" VARCHAR,
	"bill_receiver_email" VARCHAR,
	"receiver_name" VARCHAR,
	"receiver_phone" VARCHAR,
	"receiver_post_code" VARCHAR,
	"receiver_province" VARCHAR,
	"receiver_city" VARCHAR,
	"receiver_region" VARCHAR,
	"receiver_detail_address" VARCHAR,
	"note" VARCHAR,
	"confirm_status" INT,
	"delete_status" INT,
	"use_integration" INT,
	"payment_time" DATETIME,
	"delivery_time" DATETIME,
	"receive_time" DATETIME,
	"comment_time" DATETIME,
	"modify_time" DATETIME,
	"qrcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_company_address" (
	"id" BIGINT,
	"address_name" VARCHAR,
	"send_status" INT,
	"receive_status" INT,
	"name" VARCHAR,
	"phone" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"detail_address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oms_cart_item" (
	"id" BIGINT,
	"product_id" BIGINT,
	"product_sku_id" BIGINT,
	"member_id" BIGINT,
	"quantity" INT,
	"price" DECIMAL,
	"sp1" VARCHAR,
	"sp2" VARCHAR,
	"sp3" VARCHAR,
	"product_pic" VARCHAR,
	"product_name" VARCHAR,
	"product_sub_title" VARCHAR,
	"product_sku_code" VARCHAR,
	"member_nickname" VARCHAR,
	"create_date" DATETIME,
	"modify_date" DATETIME,
	"delete_status" INT,
	"product_category_id" BIGINT,
	"product_brand" VARCHAR,
	"product_sn" VARCHAR,
	"product_attr" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_client_details" (
	"client_id" VARCHAR,
	"resource_ids" VARCHAR,
	"client_secret" VARCHAR,
	"scope" VARCHAR,
	"authorized_grant_types" VARCHAR,
	"web_server_redirect_uri" VARCHAR,
	"authorities" VARCHAR,
	"access_token_validity" INT,
	"refresh_token_validity" INT,
	"additional_information" VARCHAR,
	"autoapprove" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "cms_topic_comment" (
	"id" BIGINT,
	"member_nick_name" VARCHAR,
	"topic_id" BIGINT,
	"member_icon" VARCHAR,
	"content" VARCHAR,
	"create_time" DATETIME,
	"show_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_topic_category" (
	"id" BIGINT,
	"name" VARCHAR,
	"icon" VARCHAR,
	"subject_count" INT,
	"show_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_topic" (
	"id" BIGINT,
	"category_id" BIGINT,
	"name" VARCHAR,
	"create_time" DATETIME,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"attend_count" INT,
	"attention_count" INT,
	"read_count" INT,
	"award_name" VARCHAR,
	"attend_type" VARCHAR,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_subject_product_relation" (
	"id" BIGINT,
	"subject_id" BIGINT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_subject_comment" (
	"id" BIGINT,
	"subject_id" BIGINT,
	"member_nick_name" VARCHAR,
	"member_icon" VARCHAR,
	"content" VARCHAR,
	"create_time" DATETIME,
	"show_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_subject_category" (
	"id" BIGINT,
	"name" VARCHAR,
	"icon" VARCHAR,
	"subject_count" INT,
	"show_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_subject" (
	"id" BIGINT,
	"category_id" BIGINT,
	"title" VARCHAR,
	"pic" VARCHAR,
	"product_count" INT,
	"recommend_status" INT,
	"create_time" DATETIME,
	"collect_count" INT,
	"read_count" INT,
	"comment_count" INT,
	"album_pics" VARCHAR,
	"description" VARCHAR,
	"show_status" INT,
	"content" TEXT,
	"forward_count" INT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_prefrence_area_product_relation" (
	"id" BIGINT,
	"prefrence_area_id" BIGINT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_prefrence_area" (
	"id" BIGINT,
	"name" VARCHAR,
	"sub_title" VARCHAR,
	"pic" VARBINARY,
	"sort" INT,
	"show_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_member_report" (
	"id" BIGINT,
	"report_type" INT,
	"report_member_name" VARCHAR,
	"create_time" DATETIME,
	"report_object" VARCHAR,
	"report_status" INT,
	"handle_status" INT,
	"note" VARCHAR
);

CREATE TABLE "cms_help_category" (
	"id" BIGINT,
	"name" VARCHAR,
	"icon" VARCHAR,
	"help_count" INT,
	"show_status" INT,
	"sort" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cms_help" (
	"id" BIGINT,
	"category_id" BIGINT,
	"icon" VARCHAR,
	"title" VARCHAR,
	"show_status" INT,
	"create_time" DATETIME,
	"read_count" INT,
	"content" TEXT,
	 PRIMARY KEY ("id")
);
