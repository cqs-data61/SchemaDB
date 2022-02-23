DROP DATABASE IF EXISTS "schema598";
CREATE DATABASE "schema598";
USE "schema598";
CREATE TABLE "<<prefix>>role_has_permissions" (
	"permission_id" INT,
	"role_id" INT
);

CREATE TABLE "<<prefix>>model_has_roles" (
	"role_id" INT,
	"model_id" BIGINT,
	"model_type" VARCHAR
);

CREATE TABLE "<<prefix>>model_has_permissions" (
	"permission_id" INT,
	"model_id" BIGINT,
	"model_type" VARCHAR
);

CREATE TABLE "<<prefix>>roles" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>permissions" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>user_types" (
	"id" TINYINT,
	"name" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>users" (
	"id" BIGINT,
	"country_code" VARCHAR,
	"language_code" VARCHAR,
	"user_type_id" INT,
	"gender_id" INT,
	"name" VARCHAR,
	"photo" VARCHAR,
	"about" VARCHAR,
	"phone" VARCHAR,
	"phone_hidden" TINYINT,
	"username" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"is_admin" TINYINT,
	"can_be_impersonated" TINYINT,
	"disable_comments" TINYINT,
	"receive_newsletter" TINYINT,
	"receive_advice" TINYINT,
	"ip_addr" VARCHAR,
	"provider" VARCHAR,
	"provider_id" VARCHAR,
	"email_token" VARCHAR,
	"phone_token" VARCHAR,
	"verified_email" TINYINT,
	"verified_phone" TINYINT,
	"blocked" TINYINT,
	"closed" TINYINT,
	"last_login_at" DATETIME,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>time_zones" (
	"id" INT,
	"country_code" VARCHAR,
	"time_zone_id" VARCHAR,
	"gmt" DOUBLE,
	"dst" DOUBLE,
	"raw" DOUBLE
);

CREATE TABLE "<<prefix>>subadmin2" (
	"id" BIGINT,
	"code" VARCHAR,
	"country_code" VARCHAR,
	"subadmin1_code" VARCHAR,
	"name" VARCHAR,
	"asciiname" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>subadmin1" (
	"id" BIGINT,
	"code" VARCHAR,
	"country_code" VARCHAR,
	"name" VARCHAR,
	"asciiname" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>settings" (
	"id" INT,
	"key" VARCHAR,
	"name" VARCHAR,
	"value" TEXT,
	"description" VARCHAR,
	"field" TEXT,
	"parent_id" INT,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>sessions" (
	"id" VARCHAR,
	"payload" TEXT,
	"last_activity" INT,
	"user_id" INT,
	"ip_address" VARCHAR,
	"user_agent" TEXT
);

CREATE TABLE "<<prefix>>saved_search" (
	"id" BIGINT,
	"country_code" VARCHAR,
	"user_id" BIGINT,
	"keyword" VARCHAR,
	"query" VARCHAR,
	"count" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>saved_posts" (
	"id" BIGINT,
	"user_id" BIGINT,
	"post_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>report_types" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"name" VARCHAR
);

CREATE TABLE "<<prefix>>post_values" (
	"id" BIGINT,
	"post_id" BIGINT,
	"field_id" INT,
	"option_id" BIGINT,
	"value" TEXT
);

CREATE TABLE "<<prefix>>post_types" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"name" VARCHAR,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>posts" (
	"id" BIGINT,
	"country_code" VARCHAR,
	"user_id" BIGINT,
	"category_id" INT,
	"post_type_id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"tags" VARCHAR,
	"price" DECIMAL,
	"negotiable" TINYINT,
	"contact_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"phone_hidden" TINYINT,
	"address" VARCHAR,
	"city_id" BIGINT,
	"lon" FLOAT,
	"lat" FLOAT,
	"ip_addr" VARCHAR,
	"visits" INT,
	"email_token" VARCHAR,
	"phone_token" VARCHAR,
	"tmp_token" VARCHAR,
	"verified_email" TINYINT,
	"verified_phone" TINYINT,
	"reviewed" TINYINT,
	"featured" TINYINT,
	"archived" TINYINT,
	"archived_at" TIMESTAMP,
	"archived_manually" TINYINT,
	"deletion_mail_sent_at" TIMESTAMP,
	"fb_profile" VARCHAR,
	"partner" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>pictures" (
	"id" BIGINT,
	"post_id" BIGINT,
	"filename" VARCHAR,
	"position" INT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>payment_methods" (
	"id" INT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"description" TEXT,
	"has_ccbox" TINYINT,
	"is_compatible_api" TINYINT,
	"countries" TEXT,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"parent_id" INT,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>payments" (
	"id" INT,
	"post_id" BIGINT,
	"package_id" INT,
	"payment_method_id" INT,
	"transaction_id" VARCHAR,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>password_resets" (
	"email" VARCHAR,
	"phone" VARCHAR,
	"token" VARCHAR,
	"created_at" DATETIME
);

CREATE TABLE "<<prefix>>pages" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"parent_id" INT,
	"type" ENUM,
	"name" VARCHAR,
	"slug" VARCHAR,
	"title" VARCHAR,
	"picture" VARCHAR,
	"content" TEXT,
	"external_link" VARCHAR,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"name_color" VARCHAR,
	"title_color" VARCHAR,
	"target_blank" TINYINT,
	"excluded_from_footer" TINYINT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>packages" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"ribbon" ENUM,
	"has_badge" TINYINT,
	"price" DECIMAL,
	"currency_code" VARCHAR,
	"duration" INT,
	"description" VARCHAR,
	"parent_id" INT,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>migrations" (
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "<<prefix>>meta_tags" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"page" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"keywords" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>messages" (
	"id" BIGINT,
	"post_id" BIGINT,
	"parent_id" BIGINT,
	"from_user_id" BIGINT,
	"from_name" VARCHAR,
	"from_email" VARCHAR,
	"from_phone" VARCHAR,
	"to_user_id" BIGINT,
	"to_name" VARCHAR,
	"to_email" VARCHAR,
	"to_phone" VARCHAR,
	"subject" TEXT,
	"message" TEXT,
	"filename" VARCHAR,
	"is_read" TINYINT,
	"deleted_by" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>languages" (
	"id" INT,
	"abbr" VARCHAR,
	"locale" VARCHAR,
	"name" VARCHAR,
	"native" VARCHAR,
	"flag" VARCHAR,
	"app_name" VARCHAR,
	"script" VARCHAR,
	"direction" ENUM,
	"russian_pluralization" TINYINT,
	"active" TINYINT,
	"default" TINYINT,
	"parent_id" INT,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>home_sections" (
	"id" INT,
	"method" VARCHAR,
	"name" VARCHAR,
	"value" TEXT,
	"view" VARCHAR,
	"field" TEXT,
	"parent_id" INT,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>gender" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"name" VARCHAR
);

CREATE TABLE "<<prefix>>fields_options" (
	"id" BIGINT,
	"field_id" INT,
	"translation_lang" VARCHAR,
	"translation_of" BIGINT,
	"value" TEXT,
	"parent_id" INT,
	"lft" INT,
	"rgt" INT,
	"depth" INT
);

CREATE TABLE "<<prefix>>fields" (
	"id" INT,
	"belongs_to" ENUM,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"name" VARCHAR,
	"type" ENUM,
	"max" INT,
	"default" VARCHAR,
	"required" TINYINT,
	"help" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>currencies" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"html_entity" VARCHAR,
	"font_arial" VARCHAR,
	"font_code2000" VARCHAR,
	"unicode_decimal" VARCHAR,
	"unicode_hex" VARCHAR,
	"in_left" TINYINT,
	"decimal_places" INT,
	"decimal_separator" VARCHAR,
	"thousand_separator" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>countries" (
	"id" INT,
	"code" CHAR,
	"iso3" CHAR,
	"iso_numeric" INT,
	"fips" CHAR,
	"name" VARCHAR,
	"asciiname" VARCHAR,
	"capital" VARCHAR,
	"area" INT,
	"population" INT,
	"continent_code" CHAR,
	"tld" CHAR,
	"currency_code" VARCHAR,
	"phone" VARCHAR,
	"postal_code_format" VARCHAR,
	"postal_code_regex" VARCHAR,
	"languages" VARCHAR,
	"neighbours" VARCHAR,
	"equivalent_fips_code" VARCHAR,
	"background_image" VARCHAR,
	"admin_type" ENUM,
	"admin_field_active" TINYINT,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>continents" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>cities" (
	"id" BIGINT,
	"country_code" VARCHAR,
	"name" VARCHAR,
	"asciiname" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"feature_class" CHAR,
	"feature_code" VARCHAR,
	"subadmin1_code" VARCHAR,
	"subadmin2_code" VARCHAR,
	"population" BIGINT,
	"time_zone" VARCHAR,
	"active" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "<<prefix>>category_field" (
	"id" INT,
	"category_id" INT,
	"field_id" INT,
	"disabled_in_subcategories" TINYINT,
	"parent_id" INT,
	"lft" INT,
	"rgt" INT,
	"depth" INT
);

CREATE TABLE "<<prefix>>categories" (
	"id" INT,
	"translation_lang" VARCHAR,
	"translation_of" INT,
	"parent_id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" VARCHAR,
	"picture" VARCHAR,
	"icon_class" VARCHAR,
	"lft" INT,
	"rgt" INT,
	"depth" INT,
	"type" ENUM,
	"active" TINYINT
);

CREATE TABLE "<<prefix>>cache" (
	"key" VARCHAR,
	"value" MEDIUMTEXT,
	"expiration" INT
);

CREATE TABLE "<<prefix>>blacklist" (
	"id" INT,
	"type" ENUM,
	"entry" VARCHAR
);

CREATE TABLE "<<prefix>>advertising" (
	"id" INT,
	"slug" VARCHAR,
	"provider_name" VARCHAR,
	"tracking_code_large" TEXT,
	"tracking_code_medium" TEXT,
	"tracking_code_small" TEXT,
	"active" TINYINT
);
