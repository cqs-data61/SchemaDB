DROP DATABASE IF EXISTS "schema1140";
CREATE DATABASE "schema1140";
USE "schema1140";
CREATE TABLE "warehouses" (
	"id" NUMBER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shops" (
	"id" NUMBER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "delivery_requests" (
	"id" NUMBER,
	"shop_id" NUMBER,
	"warehouse_id" NUMBER,
	"request_date" DATE,
	"arrival_date" DATE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "delivery_requests_to_wh_fk" FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id"),
	 CONSTRAINT "delivery_requests_to_shops_fk" FOREIGN KEY ("shop_id") REFERENCES "shops" ("id")
);

CREATE TABLE "goods" (
	"id" NUMBER,
	"name" VARCHAR,
	"description" VARCHAR,
	"price" NUMBER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "delivery_items" (
	"id" NUMBER,
	"goods_id" NUMBER,
	"delivery_request_id" NUMBER,
	"delivery_status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "delivery_items_to_goods_fk" FOREIGN KEY ("goods_id") REFERENCES "goods" ("id"),
	 CONSTRAINT "delivery_requests_fk" FOREIGN KEY ("delivery_request_id") REFERENCES "delivery_requests" ("id")
);

CREATE TABLE "delivery_request_goods" (
	"delivery_request_id" NUMBER,
	"goods_id" NUMBER,
	 PRIMARY KEY ("delivery_request_id","goods_id"),
	 CONSTRAINT "goods_to_delivery_requests_fk" FOREIGN KEY ("delivery_request_id") REFERENCES "delivery_requests" ("id"),
	 CONSTRAINT "request_goods_to_goods_fk" FOREIGN KEY ("goods_id") REFERENCES "goods" ("id")
);

CREATE TABLE "goods_in_shops" (
	"id" NUMBER,
	"goods_id" NUMBER,
	"shop_id" NUMBER,
	"available_quantity" NUMBER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "goods_in_shops_fk" FOREIGN KEY ("goods_id") REFERENCES "goods" ("id"),
	 CONSTRAINT "shops_fk" FOREIGN KEY ("shop_id") REFERENCES "shops" ("id")
);

CREATE TABLE "goods_in_stocks" (
	"id" NUMBER,
	"goods_id" NUMBER,
	"warehouse_id" NUMBER,
	"available_quantity" NUMBER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "warehouses_fk" FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id"),
	 CONSTRAINT "goods_fk" FOREIGN KEY ("goods_id") REFERENCES "goods" ("id")
);
