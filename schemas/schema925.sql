DROP DATABASE IF EXISTS "schema925";
CREATE DATABASE "schema925";
USE "schema925";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"user_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"country_id" INT,
	"mobile" VARCHAR,
	"gender" ENUM,
	"address" VARCHAR,
	"website" VARCHAR,
	"phone" VARCHAR,
	"photo" VARCHAR,
	"photo_storage" ENUM,
	"user_type" ENUM,
	"active_status" ENUM,
	"is_email_verified" ENUM,
	"activation_code" VARCHAR,
	"is_online" ENUM,
	"last_login" TIMESTAMP,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "states" (
	"id" INT,
	"state_name" VARCHAR,
	"country_id" INT
);

CREATE TABLE "social_accounts" (
	"id" INT,
	"user_id" INT,
	"provider_user_id" VARCHAR,
	"provider" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sessions" (
	"id" VARCHAR,
	"user_id" INT,
	"ip_address" VARCHAR,
	"user_agent" TEXT,
	"payload" TEXT,
	"last_activity" INT
);

CREATE TABLE "report_ads" (
	"id" INT,
	"ad_id" INT,
	"reason" VARCHAR,
	"email" VARCHAR,
	"message" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "posts" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"post_content" LONGTEXT,
	"feature_image" VARCHAR,
	"type" ENUM,
	"status" ENUM,
	"show_in_header_menu" TINYINT,
	"show_in_footer_menu" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payments" (
	"id" INT,
	"ad_id" INT,
	"user_id" INT,
	"amount" DECIMAL,
	"payment_method" VARCHAR,
	"status" ENUM,
	"currency" VARCHAR,
	"token_id" VARCHAR,
	"card_last4" VARCHAR,
	"card_id" VARCHAR,
	"client_ip" VARCHAR,
	"charge_id_or_token" VARCHAR,
	"payer_email" VARCHAR,
	"description" VARCHAR,
	"local_transaction_id" VARCHAR,
	"payment_created" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "options" (
	"id" INT,
	"option_key" VARCHAR,
	"option_value" TEXT
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "media" (
	"id" INT,
	"user_id" INT,
	"ad_id" INT,
	"media_name" VARCHAR,
	"type" ENUM,
	"is_feature" ENUM,
	"storage" ENUM,
	"ref" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "languages" (
	"id" INT,
	"language_name" VARCHAR,
	"language_code" VARCHAR,
	"is_rtl" TINYINT
);

CREATE TABLE "favorites" (
	"id" INT,
	"user_id" INT,
	"ad_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "countries" (
	"id" INT,
	"country_code" VARCHAR,
	"country_name" VARCHAR,
	"capital" VARCHAR,
	"citizenship" VARCHAR,
	"country_code_number" VARCHAR,
	"currency" VARCHAR,
	"currency_code" VARCHAR,
	"currency_sub_unit" VARCHAR,
	"currency_symbol" VARCHAR,
	"currency_decimals" INT,
	"full_name" VARCHAR,
	"iso_3166_2" VARCHAR,
	"iso_3166_3" VARCHAR,
	"name" VARCHAR,
	"region_code" VARCHAR,
	"sub_region_code" VARCHAR,
	"eea" TINYINT,
	"calling_code" VARCHAR,
	"flag" VARCHAR
);

CREATE TABLE "contact_queries" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"message" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "comments" (
	"id" INT,
	"user_id" INT,
	"ad_id" INT,
	"comment_id" INT,
	"author_name" VARCHAR,
	"author_email" VARCHAR,
	"author_ip" VARCHAR,
	"comment" TEXT,
	"approved" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "cities" (
	"id" INT,
	"city_name" VARCHAR,
	"state_id" INT
);

CREATE TABLE "categories" (
	"id" INT,
	"category_name" VARCHAR,
	"category_slug" VARCHAR,
	"category_id" INT,
	"description" VARCHAR,
	"category_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "bids" (
	"id" INT,
	"ad_id" INT,
	"user_id" INT,
	"bid_amount" DECIMAL,
	"is_accepted" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ads" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"category_id" INT,
	"sub_category_id" INT,
	"brand_id" INT,
	"type" ENUM,
	"ad_condition" VARCHAR,
	"model" VARCHAR,
	"price" DECIMAL,
	"is_negotiable" ENUM,
	"seller_name" VARCHAR,
	"seller_email" VARCHAR,
	"seller_phone" VARCHAR,
	"country_id" INT,
	"state_id" INT,
	"city_id" INT,
	"address" VARCHAR,
	"video_url" VARCHAR,
	"category_type" VARCHAR,
	"status" ENUM,
	"price_plan" ENUM,
	"mark_ad_urgent" ENUM,
	"view" INT,
	"max_impression" INT,
	"user_id" INT,
	"latitude" VARCHAR,
	"longitude" VARCHAR,
	"expired_at" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
