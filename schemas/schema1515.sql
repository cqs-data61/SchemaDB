DROP DATABASE IF EXISTS "schema1515";
CREATE DATABASE "schema1515";
USE "schema1515";
CREATE TABLE "sc_shop_weight" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "sc_shop_user_address" (
	"id" INT,
	"user_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"first_name_kana" VARCHAR,
	"last_name_kana" VARCHAR,
	"postcode" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR
);

CREATE TABLE "sc_shop_user" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"first_name_kana" VARCHAR,
	"last_name_kana" VARCHAR,
	"email" VARCHAR,
	"sex" TINYINT,
	"birthday" DATE,
	"password" VARCHAR,
	"address_id" INT,
	"postcode" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"company" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	"remember_token" VARCHAR,
	"status" TINYINT,
	"group" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"provider" VARCHAR,
	"provider_id" VARCHAR
);

CREATE TABLE "sc_shop_tax" (
	"id" INT,
	"name" VARCHAR,
	"value" INT
);

CREATE TABLE "sc_shop_supplier" (
	"id" INT,
	"name" VARCHAR,
	"alias" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"image" VARCHAR,
	"address" VARCHAR,
	"url" VARCHAR,
	"status" TINYINT,
	"store_id" INT,
	"sort" INT
);

CREATE TABLE "sc_shop_subscribe" (
	"id" INT,
	"email" VARCHAR,
	"phone" VARCHAR,
	"content" VARCHAR,
	"status" TINYINT,
	"store_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_store_css" (
	"css" TEXT,
	"store_id" INT
);

CREATE TABLE "sc_shop_store_block" (
	"id" INT,
	"name" VARCHAR,
	"position" VARCHAR,
	"page" VARCHAR,
	"type" VARCHAR,
	"text" TEXT,
	"status" TINYINT,
	"sort" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_shoppingcart" (
	"identifier" VARCHAR,
	"instance" VARCHAR,
	"content" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"store_id" INT
);

CREATE TABLE "sc_shop_shipping_status" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "sc_shop_shipping_standard" (
	"id" INT,
	"fee" INT,
	"shipping_free" INT
);

CREATE TABLE "sc_shop_sessions" (
	"id" VARCHAR,
	"customer_id" INT,
	"ip_address" VARCHAR,
	"user_agent" TEXT,
	"payload" TEXT,
	"last_activity" INT
);

CREATE TABLE "sc_shop_product_store" (
	"product_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_product_promotion" (
	"product_id" INT,
	"price_promotion" INT,
	"date_start" DATETIME,
	"date_end" DATETIME,
	"status_promotion" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_product_image" (
	"id" INT,
	"image" VARCHAR,
	"product_id" INT
);

CREATE TABLE "sc_shop_product_group" (
	"group_id" INT,
	"product_id" INT
);

CREATE TABLE "sc_shop_product_description" (
	"product_id" INT,
	"lang" VARCHAR,
	"name" VARCHAR,
	"keyword" VARCHAR,
	"description" VARCHAR,
	"content" TEXT
);

CREATE TABLE "sc_shop_product_category" (
	"product_id" INT,
	"category_id" INT
);

CREATE TABLE "sc_shop_product_build" (
	"build_id" INT,
	"product_id" INT,
	"quantity" INT
);

CREATE TABLE "sc_shop_product_attribute" (
	"id" INT,
	"name" VARCHAR,
	"attribute_group_id" INT,
	"product_id" INT,
	"add_price" INT,
	"sort" INT,
	"status" TINYINT
);

CREATE TABLE "sc_shop_product" (
	"id" INT,
	"sku" VARCHAR,
	"upc" VARCHAR,
	"ean" VARCHAR,
	"jan" VARCHAR,
	"isbn" VARCHAR,
	"mpn" VARCHAR,
	"image" VARCHAR,
	"brand_id" INT,
	"supplier_id" INT,
	"author" VARCHAR,
	"formality" VARCHAR,
	"price" INT,
	"cost" INT,
	"stock" INT,
	"sold" INT,
	"minimum" INT,
	"weight_class" VARCHAR,
	"weight" INT,
	"length_class" VARCHAR,
	"length" INT,
	"width" INT,
	"height" INT,
	"kind" TINYINT,
	"property" TINYINT,
	"tax_id" VARCHAR,
	"status" TINYINT,
	"sort" INT,
	"view" INT,
	"alias" VARCHAR,
	"category_store_id" INT,
	"store_id" INT,
	"date_lastview" DATETIME,
	"date_available" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_payment_status" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "sc_shop_password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" DATETIME
);

CREATE TABLE "sc_shop_page_store" (
	"page_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_page_description" (
	"page_id" INT,
	"lang" VARCHAR,
	"title" VARCHAR,
	"keyword" VARCHAR,
	"description" VARCHAR,
	"content" TEXT
);

CREATE TABLE "sc_shop_page" (
	"id" INT,
	"image" VARCHAR,
	"alias" VARCHAR,
	"status" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_order_total" (
	"id" INT,
	"order_id" INT,
	"title" VARCHAR,
	"code" VARCHAR,
	"value" INT,
	"text" VARCHAR,
	"sort" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_order_status" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "sc_shop_order_history" (
	"id" INT,
	"order_id" INT,
	"content" VARCHAR,
	"admin_id" INT,
	"customer_id" INT,
	"order_status_id" INT,
	"add_date" DATETIME
);

CREATE TABLE "sc_shop_order_detail" (
	"id" INT,
	"order_id" INT,
	"product_id" INT,
	"name" VARCHAR,
	"price" INT,
	"qty" INT,
	"store_id" INT,
	"total_price" INT,
	"tax" INT,
	"sku" VARCHAR,
	"currency" VARCHAR,
	"exchange_rate" DOUBLE,
	"attribute" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_order" (
	"id" INT,
	"customer_id" INT,
	"domain" VARCHAR,
	"subtotal" INT,
	"shipping" INT,
	"discount" INT,
	"payment_status" INT,
	"shipping_status" INT,
	"status" INT,
	"tax" INT,
	"total" INT,
	"currency" VARCHAR,
	"exchange_rate" DOUBLE,
	"received" INT,
	"balance" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"first_name_kana" VARCHAR,
	"last_name_kana" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"country" VARCHAR,
	"company" VARCHAR,
	"postcode" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"comment" VARCHAR,
	"payment_method" VARCHAR,
	"shipping_method" VARCHAR,
	"user_agent" VARCHAR,
	"ip" VARCHAR,
	"transaction" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"address" VARCHAR,
	"province" VARCHAR,
	"district" VARCHAR,
	"ward" VARCHAR
);

CREATE TABLE "sc_shop_news_store" (
	"news_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_news_description" (
	"news_id" INT,
	"lang" VARCHAR,
	"title" VARCHAR,
	"keyword" VARCHAR,
	"description" VARCHAR,
	"content" TEXT
);

CREATE TABLE "sc_shop_news" (
	"id" INT,
	"image" VARCHAR,
	"alias" VARCHAR,
	"sort" INT,
	"status" TINYINT,
	"store_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_link" (
	"id" INT,
	"name" VARCHAR,
	"url" VARCHAR,
	"target" VARCHAR,
	"group" VARCHAR,
	"module" VARCHAR,
	"status" TINYINT,
	"sort" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_length" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "sc_shop_layout_position" (
	"id" INT,
	"key" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "sc_shop_layout_page" (
	"id" INT,
	"key" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "sc_shop_language" (
	"id" INT,
	"name" VARCHAR,
	"code" VARCHAR,
	"icon" VARCHAR,
	"status" TINYINT,
	"rtl" TINYINT,
	"sort" INT
);

CREATE TABLE "sc_shop_email_template" (
	"id" INT,
	"name" VARCHAR,
	"group" VARCHAR,
	"text" TEXT,
	"store_id" INT,
	"status" TINYINT
);

CREATE TABLE "sc_shop_customer_address" (
	"id" INT,
	"customer_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"first_name_kana" VARCHAR,
	"last_name_kana" VARCHAR,
	"postcode" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR
);

CREATE TABLE "sc_shop_customer" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"first_name_kana" VARCHAR,
	"last_name_kana" VARCHAR,
	"email" VARCHAR,
	"sex" TINYINT,
	"birthday" DATE,
	"password" VARCHAR,
	"address_id" INT,
	"postcode" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"company" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	"store_id" INT,
	"remember_token" VARCHAR,
	"status" TINYINT,
	"group" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"provider" VARCHAR,
	"provider_id" VARCHAR
);

CREATE TABLE "sc_shop_currency" (
	"id" INT,
	"name" VARCHAR,
	"code" VARCHAR,
	"symbol" VARCHAR,
	"exchange_rate" DOUBLE,
	"precision" TINYINT,
	"symbol_first" TINYINT,
	"thousands" VARCHAR,
	"status" TINYINT,
	"sort" INT
);

CREATE TABLE "sc_shop_country" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "sc_shop_category_store" (
	"category_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_category_description" (
	"category_id" INT,
	"lang" VARCHAR,
	"title" VARCHAR,
	"keyword" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "sc_shop_category" (
	"id" INT,
	"image" VARCHAR,
	"alias" VARCHAR,
	"parent" INT,
	"top" INT,
	"status" TINYINT,
	"sort" INT
);

CREATE TABLE "sc_shop_brand" (
	"id" INT,
	"name" VARCHAR,
	"alias" VARCHAR,
	"image" VARCHAR,
	"url" VARCHAR,
	"status" TINYINT,
	"sort" INT
);

CREATE TABLE "sc_shop_block_content" (
	"id" INT,
	"name" VARCHAR,
	"position" VARCHAR,
	"page" VARCHAR,
	"type" VARCHAR,
	"text" TEXT,
	"status" TINYINT,
	"sort" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_banner_store" (
	"banner_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_shop_banner" (
	"id" INT,
	"image" VARCHAR,
	"url" VARCHAR,
	"target" VARCHAR,
	"html" TEXT,
	"status" TINYINT,
	"sort" INT,
	"click" INT,
	"type" VARCHAR,
	"store_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_shop_attribute_group" (
	"id" INT,
	"name" VARCHAR,
	"status" TINYINT,
	"sort" INT,
	"type" VARCHAR
);

CREATE TABLE "sc_cms_image" (
	"id" INT,
	"content_id" INT,
	"image" VARCHAR,
	"sort" TINYINT,
	"status" TINYINT
);

CREATE TABLE "sc_cms_content_store" (
	"content_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_cms_content_description" (
	"content_id" INT,
	"lang" VARCHAR,
	"title" VARCHAR,
	"keyword" VARCHAR,
	"description" VARCHAR,
	"content" TEXT
);

CREATE TABLE "sc_cms_content" (
	"id" INT,
	"category_id" INT,
	"image" VARCHAR,
	"alias" VARCHAR,
	"sort" TINYINT,
	"status" TINYINT,
	"store_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_cms_category_store" (
	"category_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_cms_category_description" (
	"category_id" INT,
	"lang" VARCHAR,
	"title" VARCHAR,
	"keyword" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "sc_cms_category" (
	"id" INT,
	"image" VARCHAR,
	"parent" INT,
	"alias" VARCHAR,
	"store_id" INT,
	"sort" TINYINT,
	"status" TINYINT
);

CREATE TABLE "sc_api_connection" (
	"id" INT,
	"description" VARCHAR,
	"apiconnection" VARCHAR,
	"apikey" VARCHAR,
	"expire" DATE,
	"last_active" DATETIME,
	"status" TINYINT
);

CREATE TABLE "sc_admin_user_store" (
	"user_id" INT,
	"store_id" INT
);

CREATE TABLE "sc_admin_user_permission" (
	"user_id" INT,
	"permission_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"avatar" VARCHAR,
	"remember_token" VARCHAR,
	"theme" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_store_description" (
	"store_id" INT,
	"lang" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"keyword" VARCHAR,
	"maintain_content" TEXT
);

CREATE TABLE "sc_admin_store" (
	"id" INT,
	"logo" VARCHAR,
	"phone" VARCHAR,
	"long_phone" VARCHAR,
	"email" VARCHAR,
	"time_active" VARCHAR,
	"address" VARCHAR,
	"map" TEXT,
	"office" VARCHAR,
	"warehouse" VARCHAR,
	"template" VARCHAR,
	"domain" VARCHAR,
	"code" VARCHAR,
	"language" VARCHAR,
	"timezone" VARCHAR,
	"currency" VARCHAR,
	"status" INT,
	"active" INT
);

CREATE TABLE "sc_admin_role_user" (
	"role_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_role_permission" (
	"role_id" INT,
	"permission_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_role" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_permission" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"http_uri" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_menu" (
	"id" INT,
	"parent_id" INT,
	"sort" INT,
	"title" VARCHAR,
	"icon" VARCHAR,
	"uri" VARCHAR,
	"type" INT,
	"hidden" INT,
	"key" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_log" (
	"id" INT,
	"user_id" INT,
	"path" VARCHAR,
	"method" VARCHAR,
	"ip" VARCHAR,
	"user_agent" VARCHAR,
	"input" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sc_admin_config" (
	"id" INT,
	"group" VARCHAR,
	"code" VARCHAR,
	"key" VARCHAR,
	"value" VARCHAR,
	"store_id" INT,
	"sort" INT,
	"detail" VARCHAR
);

CREATE TABLE "oauth_refresh_tokens" (
	"id" VARCHAR,
	"access_token_id" VARCHAR,
	"revoked" TINYINT,
	"expires_at" DATETIME
);

CREATE TABLE "oauth_personal_access_clients" (
	"id" BIGINT,
	"client_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_clients" (
	"id" BIGINT,
	"user_id" BIGINT,
	"name" VARCHAR,
	"secret" VARCHAR,
	"redirect" TEXT,
	"personal_access_client" TINYINT,
	"password_client" TINYINT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_auth_codes" (
	"id" VARCHAR,
	"user_id" BIGINT,
	"client_id" BIGINT,
	"scopes" TEXT,
	"revoked" TINYINT,
	"expires_at" DATETIME
);

CREATE TABLE "oauth_access_tokens" (
	"id" VARCHAR,
	"user_id" BIGINT,
	"client_id" BIGINT,
	"name" VARCHAR,
	"scopes" TEXT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"expires_at" DATETIME
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"queue" VARCHAR,
	"payload" LONGTEXT,
	"attempts" TINYINT,
	"reserved_at" INT,
	"available_at" INT,
	"created_at" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);
