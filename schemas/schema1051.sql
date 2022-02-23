DROP DATABASE IF EXISTS "schema1051";
CREATE DATABASE "schema1051";
USE "schema1051";
CREATE TABLE "reviews" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"description" VARCHAR,
	"rating" BIGINT,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"email" VARCHAR,
	"enabled" BOOLEAN,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"telephone" VARCHAR,
	"home_address_1" VARCHAR,
	"home_address_2" VARCHAR,
	"home_city" VARCHAR,
	"home_country" VARCHAR,
	"home_postcode" VARCHAR,
	"office_address_1" VARCHAR,
	"office_address_2" VARCHAR,
	"office_city" VARCHAR,
	"office_country" VARCHAR,
	"office_postcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "carts" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"status" VARCHAR,
	"customer_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cart_fk" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "orders" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"address_1" VARCHAR,
	"address_2" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"postcode" VARCHAR,
	"shipped" TIMESTAMP,
	"status" VARCHAR,
	"total_price" DECIMAL,
	"cart_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orders_fk1" FOREIGN KEY ("cart_id") REFERENCES "carts" ("id")
);

CREATE TABLE "payments" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"paypal_payment_id" VARCHAR,
	"status" VARCHAR,
	"order_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "payments_fk" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"description" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"description" VARCHAR,
	"name" VARCHAR,
	"price" DECIMAL,
	"sales_counter" INTEGER,
	"status" VARCHAR,
	"category_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "product_fk" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "products_reviews" (
	"product_id" BIGINT,
	"reviews_id" BIGINT,
	 PRIMARY KEY ("product_id","reviews_id"),
	 CONSTRAINT "products_reviews_fk2" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "products_reviews_fk1" FOREIGN KEY ("reviews_id") REFERENCES "reviews" ("id")
);

CREATE TABLE "order_items" (
	"id" BIGINT,
	"created_date" TIMESTAMP,
	"last_modified_date" TIMESTAMP,
	"quantity" BIGINT,
	"order_id" BIGINT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "order_item_fk1" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "order_item_fk2" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);
