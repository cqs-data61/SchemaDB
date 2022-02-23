DROP DATABASE IF EXISTS "schema834";
CREATE DATABASE "schema834";
USE "schema834";
CREATE TABLE "users" (
	"user_id" SERIAL,
	"email" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"phone_number" VARCHAR,
	"address" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "orders" (
	"order_id" SERIAL,
	"session_id" VARCHAR,
	"user_id" INTEGER,
	"order_date" TIMESTAMP,
	"total" REAL,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "categories" (
	"category_id" SMALLINT,
	"name" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "products" (
	"product_id" SERIAL,
	"category_id" INTEGER,
	"name" VARCHAR,
	"brand" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"price" REAL,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "fk_category" FOREIGN KEY ("category_id") REFERENCES "categories" ("category_id")
);

CREATE TABLE "cart" (
	"cart_id" SERIAL,
	"order_id" INTEGER,
	"session_id" VARCHAR,
	"product_id" INTEGER,
	"size" VARCHAR,
	"pieces" INTEGER,
	 PRIMARY KEY ("cart_id"),
	 CONSTRAINT "fk_order" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id"),
	 CONSTRAINT "fk_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "stock" (
	"product_id" INTEGER,
	"xs" INTEGER,
	"s" INTEGER,
	"m" INTEGER,
	"l" INTEGER,
	"xl" INTEGER,
	 CONSTRAINT "fk_product" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);
