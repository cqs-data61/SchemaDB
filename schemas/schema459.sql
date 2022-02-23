DROP DATABASE IF EXISTS "schema459";
CREATE DATABASE "schema459";
USE "schema459";
CREATE TABLE "mrt_cust_loyalty_card" (
	"cust_code" BIGINT,
	"purchase_count" INT,
	"expiry_epoch" DATETIME,
	"foreign" KEY,
	 PRIMARY KEY ("cust_code")
);

CREATE TABLE "cart_products" (
	"cart_id" BIGINT,
	"product_id" BIGINT,
	"foreign" KEY,
	"foreign" KEY,
	"foreign" KEY
);

CREATE TABLE "cart" (
	"id" IDENTITY,
	"customer_code" BIGINT
);

CREATE TABLE "mrt_order_line_items" (
	"id" IDENTITY,
	"mrt_order_id" BIGINT,
	"charged_price" BIGINT,
	"product_id" BIGINT,
	"foreign" KEY,
	"foreign" KEY
);

CREATE TABLE "mrt_order" (
	"id" IDENTITY,
	"customer_code" BIGINT,
	"created_on" DATETIME,
	"billed_on" DATETIME,
	"store_id" BIGINT,
	"shipping_cost" BIGINT,
	"street_address_1" NVARCHAR,
	"street_address_2" NVARCHAR,
	"state_name" NVARCHAR,
	"city" NVARCHAR,
	"zip" NVARCHAR,
	"foreign" KEY,
	"foreign" KEY
);

CREATE TABLE "mrt_location" (
	"id" IDENTITY,
	"street_address_1" NVARCHAR,
	"street_address_2" NVARCHAR,
	"state_name" NVARCHAR,
	"city" NVARCHAR,
	"zip" NVARCHAR
);

CREATE TABLE "mrt_customer" (
	"id" IDENTITY,
	"username" NVARCHAR,
	"password" NVARCHAR,
	"email_address" NVARCHAR,
	"street_address_1" NVARCHAR,
	"street_address_2" NVARCHAR,
	"state_name" NVARCHAR,
	"city" NVARCHAR,
	"zip" NVARCHAR,
	"constraint" IF
);

CREATE TABLE "product_group_products" (
	"product_group_id" BIGINT,
	"product_id" BIGINT,
	"foreign" KEY,
	"foreign" KEY
);

CREATE TABLE "product_group" (
	"id" IDENTITY
);

CREATE TABLE "prod_artists" (
	"product_id" BIGINT,
	"artist_id" BIGINT,
	"foreign" KEY,
	"foreign" KEY
);

CREATE TABLE "artist" (
	"id" IDENTITY,
	"name" NVARCHAR
);

CREATE TABLE "dg_product" (
	"id" IDENTITY,
	"album_title" NVARCHAR,
	"image_location" NVARCHAR,
	"price" BIGINT,
	"cost" BIGINT,
	"m_id" BIGINT,
	"foreign" KEY
);

CREATE TABLE "manufacturer" (
	"id" IDENTITY,
	"name" NVARCHAR,
	"short_name" NVARCHAR,
	"contact_number" NVARCHAR,
	"contact_name" NVARCHAR
);
