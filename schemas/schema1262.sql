DROP DATABASE IF EXISTS "schema1262";
CREATE DATABASE "schema1262";
USE "schema1262";
CREATE TABLE "tags_info" (
	"record_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"lang" VARCHAR
);

CREATE TABLE "tags_assoc" (
	"table_name" VARCHAR,
	"record_id" INT,
	"tag_id" INT
);

CREATE TABLE "tags" (
	"id" INT,
	"alias" VARCHAR,
	"hide" SMALLINT,
	"parent_id" INT,
	"sort" INT,
	"creation_time" BIGINT,
	"update_time" BIGINT
);

CREATE TABLE "suppliers" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "seo_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"h1" VARCHAR,
	"cannonical" VARCHAR,
	"text" TEXT
);

CREATE TABLE "seo" (
	"id" INT,
	"url" VARCHAR,
	"type" VARCHAR
);

CREATE TABLE "redirect" (
	"id" INT,
	"redirect_from" VARCHAR,
	"redirect_to" VARCHAR,
	"comment" TEXT,
	"creation_time" BIGINT
);

CREATE TABLE "pages_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR,
	"text" TEXT
);

CREATE TABLE "pages" (
	"id" INT,
	"alias" VARCHAR,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT
);

CREATE TABLE "orders" (
	"id" INT,
	"name" VARCHAR,
	"phone" VARCHAR,
	"items" TEXT,
	"creation_time" BIGINT
);

CREATE TABLE "news_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR,
	"text" TEXT,
	"description" VARCHAR
);

CREATE TABLE "news_categories_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR
);

CREATE TABLE "news_categories" (
	"id" INT,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT,
	"cat_id" INT
);

CREATE TABLE "news" (
	"id" INT,
	"alias" VARCHAR,
	"status" INT,
	"custom_date" DATE,
	"cat_id" INT,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT,
	"email_id" INT,
	"text_for_mail" TEXT
);

CREATE TABLE "main_slider_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR
);

CREATE TABLE "main_slider" (
	"id" INT,
	"href" VARCHAR,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT
);

CREATE TABLE "lang" (
	"id" INT,
	"url" VARCHAR,
	"name" VARCHAR,
	"by_default" INT,
	"local" VARCHAR
);

CREATE TABLE "extra_params_values" (
	"id" INT,
	"name_1" VARCHAR,
	"name_2" VARCHAR,
	"name_3" VARCHAR,
	"value_float" FLOAT,
	"value_alt_name" TINYTEXT,
	"param_id" INT,
	"range_id" INT,
	"sort" INT
);

CREATE TABLE "extra_params_ranges" (
	"id" INT,
	"param_id" INT,
	"name_1" VARCHAR,
	"value_min" FLOAT,
	"value_max" FLOAT,
	"sort" INT
);

CREATE TABLE "extra_params_products_assoc" (
	"product_id" INT,
	"param_id" INT,
	"value_id" INT
);

CREATE TABLE "extra_params_groups" (
	"id" INT,
	"name_1" VARCHAR,
	"name_2" VARCHAR,
	"name_3" VARCHAR,
	"parent_id" INT,
	"sort" INT
);

CREATE TABLE "extra_params_cat_assoc" (
	"cat_id" INT,
	"param_id" INT,
	"admin_filter" INT
);

CREATE TABLE "extra_params_cache_view" (
	"product_id" INT,
	"param_id" INT,
	"value_id" INT,
	"range_id" INT,
	"cat_id" INT,
	"param_name_1" VARCHAR,
	"param_name_2" VARCHAR,
	"param_name_alt" VARCHAR,
	"in_filter" TINYINT,
	"is_float" INT,
	"value_name_1" VARCHAR,
	"value_name_2" VARCHAR,
	"value_name_3" VARCHAR,
	"value_float" FLOAT,
	"value_alt_name" TINYTEXT,
	"range_name_1" VARCHAR,
	"param_sort" INT,
	"value_sort" INT,
	"range_sort" INT
);

CREATE TABLE "extra_params_cache" (
	"product_id" INT,
	"param_id" INT,
	"value_id" INT,
	"range_id" INT,
	"cat_id" INT,
	"param_name_1" VARCHAR,
	"param_name_2" VARCHAR,
	"param_name_alt" VARCHAR,
	"in_filter" TINYINT,
	"is_float" INT,
	"value_name_1" VARCHAR,
	"value_name_2" VARCHAR,
	"value_name_3" VARCHAR,
	"value_float" FLOAT,
	"value_alt_name" TINYTEXT,
	"range_name_1" VARCHAR,
	"param_sort" INT,
	"value_sort" INT,
	"range_sort" INT
);

CREATE TABLE "extra_params" (
	"id" INT,
	"name_1" VARCHAR,
	"name_2" VARCHAR,
	"name_3" VARCHAR,
	"name_alt" VARCHAR,
	"sort" INT,
	"in_filter" TINYINT,
	"top" INT,
	"is_float" INT,
	"group_id" INT,
	"ranges" VARCHAR
);

CREATE TABLE "email_categories" (
	"id" INT,
	"cat_id" INT,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT,
	"title" VARCHAR
);

CREATE TABLE "email" (
	"id" INT,
	"cat_id" INT,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT,
	"email" VARCHAR
);

CREATE TABLE "catalog_products_info" (
	"record_id" INT,
	"lang" INT,
	"name" VARCHAR,
	"name_alt" VARCHAR,
	"txt" TEXT,
	"txt_1" TEXT,
	"txt_2" TEXT,
	"txt_3" TEXT
);

CREATE TABLE "catalog_products_categories_assoc" (
	"product_id" INT,
	"cat_id" INT
);

CREATE TABLE "catalog_products" (
	"id" INT,
	"import_id" INT,
	"articul" VARCHAR,
	"alias" VARCHAR,
	"assoc" BIGINT,
	"documentation_1" VARCHAR,
	"documentation_2" VARCHAR,
	"documentation_3" VARCHAR,
	"documentation_4" VARCHAR,
	"documentation_5" VARCHAR,
	"documentation_6" VARCHAR,
	"name_alt" VARCHAR,
	"base" INT,
	"base_id" FLOAT,
	"carrency_id" INT,
	"supplier_id" INT,
	"label_id" INT,
	"format" VARCHAR,
	"filename" VARCHAR,
	"banner_link" TEXT,
	"brand" VARCHAR,
	"price" FLOAT,
	"price_old" FLOAT,
	"price_max" FLOAT,
	"price_min" FLOAT,
	"avail_text" VARCHAR,
	"available" INT,
	"show_in_banner" TINYINT,
	"product_of_day" TINYINT,
	"ordered" INT,
	"discount_formula" VARCHAR,
	"discount_end_date" DATE,
	"gift_articul" VARCHAR,
	"gift_end_date" DATE,
	"flag" TINYINT,
	"to_xml" TINYINT,
	"hide" INT,
	"recom" INT,
	"installation" TINYINT,
	"also_ids" VARCHAR,
	"params" VARCHAR,
	"admin" VARCHAR,
	"creation_time" BIGINT,
	"update_time" BIGINT,
	"cat_id" INT,
	"context" VARCHAR,
	"context_brand" VARCHAR,
	"price_price" FLOAT,
	"price_input" FLOAT,
	"price_whole" FLOAT,
	"amount_whole" INT,
	"amount_pack" INT,
	"rate" FLOAT,
	"sort" INT,
	"k1" FLOAT,
	"k2" FLOAT
);

CREATE TABLE "catalog_categories_info" (
	"record_id" INT,
	"lang" INT,
	"name" VARCHAR,
	"name_one" VARCHAR,
	"txt" TEXT,
	"product_template" TEXT
);

CREATE TABLE "catalog_categories" (
	"id" INT,
	"hide" INT,
	"hide_horizontal" TINYINT,
	"base_id" FLOAT,
	"name_alt" VARCHAR,
	"category_path" VARCHAR,
	"sort" BIGINT,
	"no_del" INT,
	"parent_id" INT,
	"creation_time" BIGINT,
	"update_time" BIGINT,
	"also_ids" VARCHAR
);

CREATE TABLE "catalogs_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR,
	"description" TEXT,
	"text" TEXT
);

CREATE TABLE "catalogs" (
	"id" INT,
	"alias" VARCHAR,
	"status" INT,
	"custom_date" DATE,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT
);

CREATE TABLE "articles_info" (
	"record_id" INT,
	"lang" INT,
	"title" VARCHAR,
	"text" TEXT,
	"description" VARCHAR
);

CREATE TABLE "articles" (
	"id" INT,
	"alias" VARCHAR,
	"status" INT,
	"custom_date" DATE,
	"sort" BIGINT,
	"creation_time" BIGINT,
	"update_time" BIGINT
);

CREATE TABLE "admins_menu_assoc" (
	"menu_id" INT,
	"group_id" INT
);

CREATE TABLE "admins_menu" (
	"id" INT,
	"icon" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"target" VARCHAR,
	"under" INT,
	"sort" INT,
	"creation_time" BIGINT
);

CREATE TABLE "admins_log" (
	"id" INT,
	"login" VARCHAR,
	"ip" BIGINT,
	"table_name" VARCHAR,
	"action" INT,
	"rec_id" INT,
	"creation_time" BIGINT
);

CREATE TABLE "admins_groups" (
	"id" INT,
	"name" VARCHAR,
	"del_restrict" INT,
	"deny_tables" VARCHAR,
	"under" INT,
	"creation_time" BIGINT
);

CREATE TABLE "admins" (
	"id" INT,
	"name" VARCHAR,
	"passwd" VARCHAR,
	"passwd_rec" VARCHAR,
	"email" VARCHAR,
	"group_id" INT,
	"creation_time" BIGINT
);
