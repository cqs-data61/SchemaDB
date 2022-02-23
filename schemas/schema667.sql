DROP DATABASE IF EXISTS "schema667";
CREATE DATABASE "schema667";
USE "schema667";
CREATE TABLE "order_component" (
	"order_id" BIGINT,
	"component_id" BIGINT
);

CREATE TABLE "t_order" (
	"id" BIGINT,
	"build_service" BOOLEAN,
	"placement_date" DATE,
	"shipping_date" DATE,
	"delivered_date" DATE,
	"status" VARCHAR,
	"tracking_code" VARCHAR,
	"buyer_data_id" BIGINT,
	"order_price" DECIMAL
);

CREATE TABLE "buyer_data" (
	"id" BIGINT,
	"name" VARCHAR,
	"id_number" INT,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"address" VARCHAR
);

CREATE TABLE "component" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" VARCHAR,
	"price" DECIMAL
);

CREATE TABLE "usuario" (
	"id" INT,
	"nombre" VARCHAR,
	"clave" VARCHAR,
	"fecha_creacion" DATETIME
);
