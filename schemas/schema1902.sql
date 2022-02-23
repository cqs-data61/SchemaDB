DROP DATABASE IF EXISTS "schema1902";
CREATE DATABASE "schema1902";
USE "schema1902";
CREATE TABLE "shops" (
	"shop_id" VARCHAR,
	"min_price" INTEGER,
	"name" VARCHAR,
	"open" BOOLEAN,
	 PRIMARY KEY ("shop_id")
);

CREATE TABLE "orders" (
	"order_id" VARCHAR,
	"order_state" VARCHAR,
	"shop_id" VARCHAR,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fk_orders_shop_id" FOREIGN KEY ("shop_id") REFERENCES "shops" ("shop_id")
);

CREATE TABLE "menus" (
	"menu_id" VARCHAR,
	"name" VARCHAR,
	"price" INTEGER,
	"shop_id" VARCHAR,
	 PRIMARY KEY ("menu_id"),
	 CONSTRAINT "fk_menus_shop_id" FOREIGN KEY ("shop_id") REFERENCES "shops" ("shop_id")
);

CREATE TABLE "orderitems" (
	"order_item_id" VARCHAR,
	"count" INTEGER,
	"order_item_name" VARCHAR,
	"menu_id" VARCHAR,
	"order_id" VARCHAR,
	 PRIMARY KEY ("order_item_id"),
	 CONSTRAINT "fk_orderitems_menu_id" FOREIGN KEY ("menu_id") REFERENCES "menus" ("menu_id")
);
