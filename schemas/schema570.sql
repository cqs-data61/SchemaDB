DROP DATABASE IF EXISTS "schema570";
CREATE DATABASE "schema570";
USE "schema570";
CREATE TABLE "order_item" (
	"id" INT,
	"id_pedido" INT,
	"id_user" INT,
	"id_manager" INT,
	"id_produto" INT,
	"unit_price" VARCHAR,
	"product_image" VARCHAR,
	"quantity" INT
);

CREATE TABLE "purchase_order" (
	"id" INT,
	"id_user" INT,
	"id_address" INT,
	"id_credit_card" INT,
	"payment_type" VARCHAR,
	"id_cupom" INT,
	"total_value" VARCHAR,
	"data" DATE
);

CREATE TABLE "card_flag" (
	"id" INT,
	"name" VARCHAR,
	"is_active" VARCHAR
);

CREATE TABLE "product_invetory" (
	"id" INT,
	"id_manager" INT,
	"id_product" INT,
	"original_quantity" INT,
	"current_quantity" INT
);

CREATE TABLE "category" (
	"id" INT,
	"category" VARCHAR,
	"id_manager" INT,
	"profit" VARCHAR
);

CREATE TABLE "cupon" (
	"id" INT,
	"name" VARCHAR,
	"id_manager" INT,
	"quantity" INT,
	"count_using" INT,
	"type" VARCHAR,
	"value" VARCHAR,
	"is_valid" VARCHAR
);

CREATE TABLE "credit_card" (
	"id" INT,
	"card_number" VARCHAR,
	"cvv" VARCHAR,
	"flag" VARCHAR,
	"expire_date" VARCHAR,
	"card_name" VARCHAR,
	"id_user" INT
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	"value" VARCHAR,
	"id_manager" INTEGER,
	"size" VARCHAR,
	"sale_price" VARCHAR,
	"image" VARCHAR
);

CREATE TABLE "address" (
	"id" INT,
	"address" VARCHAR,
	"name_address" VARCHAR,
	"type_address" VARCHAR,
	"country" VARCHAR,
	"state" VARCHAR,
	"number" VARCHAR,
	"complement" VARCHAR,
	"postal_code" VARCHAR,
	"id_user" INT,
	"category" VARCHAR,
	"observation" VARCHAR
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"cpf" VARCHAR,
	"birthday" DATE,
	"celphone" VARCHAR,
	"gender" VARCHAR,
	"mail" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR
);
