DROP DATABASE IF EXISTS "schema867";
CREATE DATABASE "schema867";
USE "schema867";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" CHAR,
	"avatar" VARCHAR,
	"active" TINYINT,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"total_pay" INT,
	"address" VARCHAR,
	"about" VARCHAR,
	"code" VARCHAR,
	"time_code" TIMESTAMP,
	"code_active" VARCHAR,
	"time_active" TIMESTAMP
);

CREATE TABLE "transactions" (
	"id" INT,
	"tr_user_id" INT,
	"tr_total" INT,
	"tr_note" VARCHAR,
	"tr_address" VARCHAR,
	"tr_phone" VARCHAR,
	"tr_status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"tr_type" TINYINT
);

CREATE TABLE "ratings" (
	"id" INT,
	"ra_product_id" INT,
	"ra_number" TINYINT,
	"ra_content" VARCHAR,
	"ra_user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "products" (
	"id" INT,
	"pro_name" VARCHAR,
	"pro_slug" VARCHAR,
	"pro_category_id" INT,
	"pro_price" INT,
	"pro_author_id" INT,
	"pro_sale" TINYINT,
	"pro_active" TINYINT,
	"pro_hot" TINYINT,
	"pro_view" INT,
	"pro_description" VARCHAR,
	"pro_avatar" VARCHAR,
	"pro_description_seo" VARCHAR,
	"pro_keyword_seo" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"pro_title_seo" VARCHAR,
	"pro_content" LONGTEXT,
	"pro_pay" TINYINT,
	"pro_number" TINYINT,
	"pro_total_rating" INT,
	"pro_total_number" INT
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "page_statics" (
	"id" INT,
	"ps_name" VARCHAR,
	"ps_type" TINYINT,
	"ps_content" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "orders" (
	"id" INT,
	"or_transaction_id" INT,
	"or_product_id" INT,
	"or_qty" TINYINT,
	"or_price" INT,
	"or_sale" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "contacts" (
	"id" INT,
	"c_name" VARCHAR,
	"c_email" VARCHAR,
	"c_title" VARCHAR,
	"c_content" TEXT,
	"c_status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categories" (
	"id" INT,
	"c_name" VARCHAR,
	"c_slug" VARCHAR,
	"c_icon" CHAR,
	"c_avatar" VARCHAR,
	"c_active" TINYINT,
	"c_total_product" INT,
	"c_title_seo" VARCHAR,
	"c_description_seo" VARCHAR,
	"c_keyword_seo" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"c_home" TINYINT
);

CREATE TABLE "articles" (
	"id" INT,
	"a_name" VARCHAR,
	"a_slug" VARCHAR,
	"a_description" VARCHAR,
	"a_content" LONGTEXT,
	"a_active" TINYINT,
	"a_author_id" INT,
	"a_description_seo" VARCHAR,
	"a_title_seo" VARCHAR,
	"a_avatar" VARCHAR,
	"a_view" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"a_hot" TINYINT
);

CREATE TABLE "admins" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" CHAR,
	"avatar" VARCHAR,
	"active" TINYINT,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
