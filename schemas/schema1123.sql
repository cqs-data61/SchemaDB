DROP DATABASE IF EXISTS "schema1123";
CREATE DATABASE "schema1123";
USE "schema1123";
CREATE TABLE "shopping_cart_item" (
	"user_id" INTEGER,
	"goods_id" INTEGER,
	"quantity" INTEGER,
	"adding_time" BIGINT,
	 PRIMARY KEY ("user_id","goods_id")
);

CREATE TABLE "goods" (
	"id" SERIAL,
	"prod_id" INTEGER,
	"firm_id" INTEGER,
	"quantity" INTEGER,
	"price" DECIMAL,
	"unit" ENUM,
	"discount" DECIMAL,
	"shipping_date" TIMESTAMP,
	"in_stock" BOOLEAN,
	"status" BOOLEAN,
	"image" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" SERIAL,
	"name" VARCHAR,
	"category_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "firm" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courier" (
	"id" SERIAL,
	"person_id" INTEGER,
	"is_active" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" SERIAL,
	"credentials_id" INTEGER,
	"name" VARCHAR,
	"surname" VARCHAR,
	"phone" VARCHAR,
	"birthday" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_details" (
	"id" SERIAL,
	"person_id" INTEGER,
	"courier_id" INTEGER,
	"delivery_time" TIMESTAMP,
	"address" VARCHAR,
	"status" ENUM,
	"comment" TEXT,
	"disturb" BOOLEAN,
	"total_sum" DECIMAL,
	"discount_sum" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "person_order_details_fk" FOREIGN KEY ("person_id") REFERENCES "person" ("id"),
	 CONSTRAINT "person_courier_order_details_fk" FOREIGN KEY ("courier_id") REFERENCES "person" ("id")
);

CREATE TABLE "order_goods" (
	"goods_id" INTEGER,
	"order_id" INTEGER,
	"quantity" INTEGER,
	"sum" DECIMAL,
	 PRIMARY KEY ("goods_id","order_id"),
	 CONSTRAINT "order_detals_order_goods_fk" FOREIGN KEY ("order_id") REFERENCES "order_details" ("id"),
	 CONSTRAINT "goods_order_goods_fk" FOREIGN KEY ("goods_id") REFERENCES "goods" ("id")
);

CREATE TABLE "credentials" (
	"id" SERIAL,
	"role_id" INTEGER,
	"email" VARCHAR,
	"password" VARCHAR,
	"is_enabled" BOOLEAN,
	"failed_auth" INTEGER,
	"last_failed_auth" TIMESTAMP,
	"auth_link" VARCHAR,
	"auth_link_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" SERIAL,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);
