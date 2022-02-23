DROP DATABASE IF EXISTS "schema1041";
CREATE DATABASE "schema1041";
USE "schema1041";
CREATE TABLE "delivery_type" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "badge" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order" (
	"id" BIGINT,
	"user_id" BIGINT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_order_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	"is_best" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "provider" (
	"id" BIGINT,
	"name" VARCHAR,
	"delivery_fee" INT,
	"delivery_free_price" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "provider_has_delivery_type" (
	"id" BIGINT,
	"provider_id" BIGINT,
	"delivery_type_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_provider_has_delivery_type_delivery_type1" FOREIGN KEY ("delivery_type_id") REFERENCES "delivery_type" ("id"),
	 CONSTRAINT "fk_provider_has_delivery_type_provider1" FOREIGN KEY ("provider_id") REFERENCES "provider" ("id")
);

CREATE TABLE "product" (
	"id" BIGINT,
	"provider_id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"price_original" INT,
	"price_discount" INT,
	"point" INT,
	"top_image_url" VARCHAR,
	"stock" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_menu_provider" FOREIGN KEY ("provider_id") REFERENCES "provider" ("id")
);

CREATE TABLE "order_has_product" (
	"id" BIGINT,
	"order_id" BIGINT,
	"product_id" BIGINT,
	"count" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_order_has_product_product1" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_order_has_product_order1" FOREIGN KEY ("order_id") REFERENCES "order" ("id")
);

CREATE TABLE "package_has_product" (
	"id" BIGINT,
	"package_id" BIGINT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_product_has_product_product1" FOREIGN KEY ("package_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_product_has_product_product2" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);

CREATE TABLE "category_has_product" (
	"id" BIGINT,
	"category_id" INT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_category_has_product_product1" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_category_has_product_category1" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "product_has_badge" (
	"id" BIGINT,
	"product_id" BIGINT,
	"badge_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_product_has_badge_product1" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_product_has_badge_badge1" FOREIGN KEY ("badge_id") REFERENCES "badge" ("id")
);

CREATE TABLE "cart" (
	"id" BIGINT,
	"user_id" BIGINT,
	"product_id" BIGINT,
	"count" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_has_menu_menu1" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_user_has_menu_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "product_image" (
	"id" BIGINT,
	"url" VARCHAR,
	"product_id" BIGINT,
	"is_detail" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_product_image_product1" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
