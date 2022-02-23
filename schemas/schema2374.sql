DROP DATABASE IF EXISTS "schema2374";
CREATE DATABASE "schema2374";
USE "schema2374";
CREATE TABLE "orders" (
	"order_id" INTEGER,
	"user_id" INTEGER,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "categories" (
	"category_id" INTEGER,
	"category_name" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "products" (
	"product_id" INTEGER,
	"category_id" INTEGER,
	"image" TEXT,
	"title" TEXT,
	"desctiption" TEXT,
	"price" FLOAT,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "fkeycon_products_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("category_id")
);

CREATE TABLE "order_items" (
	"order_item_id" INTEGER,
	"product_id" INTEGER,
	"order_id" INTEGER,
	"quantity" INTEGER,
	 PRIMARY KEY ("order_item_id"),
	 CONSTRAINT "fkeycon_order_items_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id"),
	 CONSTRAINT "fkeycon_order_items_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "users" (
	"user_id" INTEGER,
	"username" VARCHAR,
	"full_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"data_joined" TIMESTAMP,
	"email_is_verified" SMALLINT,
	 PRIMARY KEY ("user_id")
);
