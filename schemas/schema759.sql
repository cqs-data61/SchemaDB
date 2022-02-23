DROP DATABASE IF EXISTS "schema759";
CREATE DATABASE "schema759";
USE "schema759";
CREATE TABLE "bees_webjob" (
	"id" MEDIUMINT,
	"jobname" VARCHAR,
	"jobsex" VARCHAR,
	"jobmoth" VARCHAR,
	"jobjg" VARCHAR,
	"jobxl" VARCHAR,
	"jobzy" VARCHAR,
	"jobbyyx" VARCHAR,
	"jobphone" VARCHAR,
	"jobmail" VARCHAR,
	"jobhj" VARCHAR,
	"jobgzjl" VARCHAR,
	"jobzyjn" VARCHAR,
	"jobyyah" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_uppics" (
	"id" MEDIUMINT,
	"pic_name" VARCHAR,
	"pic_url" VARCHAR,
	"pic_ext" VARCHAR,
	"pic_alt" VARCHAR,
	"pic_size" VARCHAR,
	"pic_path" VARCHAR,
	"pic_time" VARCHAR,
	"pic_thumb" VARCHAR,
	"pic_cate" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_uppic_cate" (
	"id" MEDIUMINT,
	"cate_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_upfiles" (
	"id" MEDIUMINT,
	"file_info" VARCHAR,
	"file_ext" VARCHAR,
	"file_size" MEDIUMINT,
	"file_path" VARCHAR,
	"file_time" VARCHAR,
	"hits" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_product" (
	"id" MEDIUMINT,
	"model" VARCHAR,
	"pics" VARCHAR,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_prinfo" (
	"id" MEDIUMINT,
	"username" VARCHAR,
	"mail" VARCHAR,
	"tel" VARCHAR,
	"content" VARCHAR,
	"address" VARCHAR,
	"web_contact" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_mx_form" (
	"id" MEDIUMINT,
	"form_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_member_group" (
	"id" MEDIUMINT,
	"member_group_name" VARCHAR,
	"member_group_info" VARCHAR,
	"is_disable" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_member" (
	"id" MEDIUMINT,
	"member_name" VARCHAR,
	"member_password" VARCHAR,
	"member_nich" VARCHAR,
	"member_purview" MEDIUMINT,
	"member_user" VARCHAR,
	"member_mail" VARCHAR,
	"member_tel" VARCHAR,
	"is_disable" MEDIUMINT,
	"member_ip" VARCHAR,
	"member_time" VARCHAR,
	"member_count" MEDIUMINT,
	"member_qq" VARCHAR,
	"member_phone" VARCHAR,
	"member_sex" MEDIUMINT,
	"member_addtime" VARCHAR,
	"member_birth" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_market" (
	"id" MEDIUMINT,
	"market_name" VARCHAR,
	"market_type" MEDIUMINT,
	"market_num" VARCHAR,
	"market_order" VARCHAR,
	"market_is" MEDIUMINT,
	"lang" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_maintb" (
	"id" MEDIUMINT,
	"title" VARCHAR,
	"filter" VARCHAR,
	"tbpic" VARCHAR,
	"keywords" VARCHAR,
	"info" TEXT,
	"author" VARCHAR,
	"source" VARCHAR,
	"hits" MEDIUMINT,
	"category" MEDIUMINT,
	"channel" MEDIUMINT,
	"addtime" VARCHAR,
	"updatetime" VARCHAR,
	"top" MEDIUMINT,
	"purview" MEDIUMINT,
	"is_html" MEDIUMINT,
	"verify" MEDIUMINT,
	"url" VARCHAR,
	"lang" VARCHAR,
	"is_url" MEDIUMINT,
	"url_add" VARCHAR,
	"title_color" VARCHAR,
	"title_style" MEDIUMINT,
	"is_open" MEDIUMINT,
	"cache_time" VARCHAR,
	"custom_url" VARCHAR,
	"c_order" MEDIUMINT,
	"content_key" VARCHAR,
	"small_title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_link" (
	"id" MEDIUMINT,
	"link_url" VARCHAR,
	"link_name" VARCHAR,
	"link_logo" VARCHAR,
	"link_order" MEDIUMINT,
	"link_info" VARCHAR,
	"link_mail" VARCHAR,
	"lang" VARCHAR,
	"addtime" VARCHAR,
	"link_type" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_lang_lang" (
	"id" MEDIUMINT,
	"lang_tag" VARCHAR,
	"lang_value" VARCHAR,
	"lang" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_lang_cate" (
	"id" MEDIUMINT,
	"lang_cate" VARCHAR,
	"lang_info" TEXT,
	"lang" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_lang" (
	"id" MEDIUMINT,
	"lang_name" VARCHAR,
	"lang_order" MEDIUMINT,
	"lang_tag" VARCHAR,
	"lang_is_use" MEDIUMINT,
	"lang_is_open" MEDIUMINT,
	"lang_is_url" MEDIUMINT,
	"lang_url" VARCHAR,
	"lang_is_fix" MEDIUMINT,
	"lang_main" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_keywords" (
	"id" MEDIUMINT,
	"keywords" VARCHAR,
	"wordsurl" VARCHAR,
	"lang" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_job" (
	"id" MEDIUMINT,
	"jobnum" VARCHAR,
	"jopaddress" VARCHAR,
	"joblasttime" VARCHAR,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_formlist" (
	"id" MEDIUMINT,
	"form_id" MEDIUMINT,
	"form_time" VARCHAR,
	"form_ip" VARCHAR,
	"is_read" MEDIUMINT,
	"member_id" MEDIUMINT,
	"arc_id" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_formfield" (
	"id" MEDIUMINT,
	"field_name" VARCHAR,
	"use_name" VARCHAR,
	"field_type" VARCHAR,
	"field_value" VARCHAR,
	"field_length" MEDIUMINT,
	"form_id" MEDIUMINT,
	"field_info" VARCHAR,
	"is_disable" MEDIUMINT,
	"form_order" MEDIUMINT,
	"is_empty" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_form" (
	"id" MEDIUMINT,
	"form_name" VARCHAR,
	"form_mark" VARCHAR,
	"is_disable" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_flash_info" (
	"id" MEDIUMINT,
	"flash_width" VARCHAR,
	"flash_height" VARCHAR,
	"flash_style" MEDIUMINT,
	"lang" VARCHAR,
	"cate_id" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_flash_ad_cate" (
	"id" MEDIUMINT,
	"cate_name" VARCHAR,
	"cate_tpl_id" MEDIUMINT,
	"is_disable" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_flash_ad" (
	"id" MEDIUMINT,
	"pic" VARCHAR,
	"pic_url" VARCHAR,
	"pic_text" VARCHAR,
	"pic_order" MEDIUMINT,
	"lang" VARCHAR,
	"cate_id" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_feedform" (
	"id" MEDIUMINT,
	"title" VARCHAR,
	"f_name" VARCHAR,
	"f_mail" VARCHAR,
	"f_tel" VARCHAR,
	"f_content" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_down" (
	"id" MEDIUMINT,
	"down" VARCHAR,
	"body" TEXT,
	"content" TEXT,
	"filesize" VARCHAR,
	"filetype" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_collect" (
	"id" MEDIUMINT,
	"member_id" MEDIUMINT,
	"arc_id" MEDIUMINT,
	"addtime" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_cmsinfo" (
	"id" MEDIUMINT,
	"info_tag" VARCHAR,
	"info_array" TEXT,
	"info_name" VARCHAR,
	"lang_tag" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_channel" (
	"id" MEDIUMINT,
	"channel_name" VARCHAR,
	"channel_mark" VARCHAR,
	"channel_table" VARCHAR,
	"is_disable" MEDIUMINT,
	"is_member" MEDIUMINT,
	"channel_mb_grade" MEDIUMINT,
	"is_verify" MEDIUMINT,
	"is_del" MEDIUMINT,
	"channel_order" MEDIUMINT,
	"is_alone" MEDIUMINT,
	"list_php" VARCHAR,
	"content_php" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_category" (
	"id" MEDIUMINT,
	"custom_url" VARCHAR,
	"cate_name" VARCHAR,
	"cate_mb_is" MEDIUMINT,
	"cate_hide" MEDIUMINT,
	"cate_channel" MEDIUMINT,
	"cate_fold_name" VARCHAR,
	"cate_order" MEDIUMINT,
	"cate_rank" MEDIUMINT,
	"cate_tpl" MEDIUMINT,
	"cate_tpl_index" VARCHAR,
	"cate_tpl_list" VARCHAR,
	"cate_tpl_content" VARCHAR,
	"cate_title_seo" VARCHAR,
	"cate_key_seo" VARCHAR,
	"cate_info_seo" VARCHAR,
	"lang" VARCHAR,
	"cate_parent" MEDIUMINT,
	"cate_html" MEDIUMINT,
	"cate_nav" VARCHAR,
	"is_content" MEDIUMINT,
	"cate_url" VARCHAR,
	"cate_is_open" MEDIUMINT,
	"form_id" MEDIUMINT,
	"cate_pic1" VARCHAR,
	"cate_pic2" VARCHAR,
	"cate_pic3" VARCHAR,
	"cate_content" TEXT,
	"temp_id" MEDIUMINT,
	"list_num" MEDIUMINT,
	"nav_show" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_book_info" (
	"id" MEDIUMINT,
	"is_book" VARCHAR,
	"book_pos" VARCHAR,
	"book_verify" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_book" (
	"id" MEDIUMINT,
	"book_name" VARCHAR,
	"mail" VARCHAR,
	"book_type" MEDIUMINT,
	"pr_id" MEDIUMINT,
	"book_title" VARCHAR,
	"book_content" TEXT,
	"addtime" VARCHAR,
	"reply" TEXT,
	"verify" MEDIUMINT,
	"lang" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_block" (
	"id" MEDIUMINT,
	"tag" VARCHAR,
	"content" TEXT,
	"tag_name" VARCHAR,
	"lang" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_auto_fields" (
	"id" MEDIUMINT,
	"field_name" VARCHAR,
	"use_name" VARCHAR,
	"field_type" VARCHAR,
	"field_value" VARCHAR,
	"field_length" MEDIUMINT,
	"channel_id" MEDIUMINT,
	"field_info" VARCHAR,
	"is_disable" MEDIUMINT,
	"check_value" VARCHAR,
	"field_order" MEDIUMINT,
	"is_del" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_ask" (
	"id" MEDIUMINT,
	"title" VARCHAR,
	"content" TEXT,
	"addtime" VARCHAR,
	"reply" TEXT,
	"member" MEDIUMINT,
	"replytime" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_article" (
	"id" MEDIUMINT,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_alone" (
	"id" MEDIUMINT,
	"content" TEXT,
	"pics" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_admin_group" (
	"id" MEDIUMINT,
	"admin_group_name" VARCHAR,
	"admin_group_info" VARCHAR,
	"admin_group_purview" TEXT,
	"is_disable" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bees_admin" (
	"id" MEDIUMINT,
	"admin_name" VARCHAR,
	"admin_password" VARCHAR,
	"admin_nich" VARCHAR,
	"admin_purview" MEDIUMINT,
	"admin_admin" VARCHAR,
	"admin_mail" VARCHAR,
	"admin_tel" VARCHAR,
	"is_disable" MEDIUMINT,
	"admin_ip" VARCHAR,
	"admin_time" VARCHAR,
	 PRIMARY KEY ("id")
);
