DROP DATABASE IF EXISTS "schema2305";
CREATE DATABASE "schema2305";
USE "schema2305";
CREATE TABLE "users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_data" (
	"user_id" VARCHAR,
	"email" VARCHAR,
	"owner_name" VARCHAR,
	"address" VARCHAR,
	"phone_number" VARCHAR,
	 CONSTRAINT "users_data_FK" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "tables" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"name" VARCHAR,
	"qrcode_minio_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menu_categories" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"menu_category_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menu" (
	"id" VARCHAR,
	"menu_category_id" VARCHAR,
	"user_id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"price" DOUBLE,
	"thumbnail_minio_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_items" (
	"order_id" VARCHAR,
	"menu_id" VARCHAR,
	"quantity" INT,
	"notes" TEXT,
	"created_at" TIMESTAMP,
	"update_at" TIMESTAMP,
	 CONSTRAINT "order_items_FK" FOREIGN KEY ("menu_id") REFERENCES "menu" ("id")
);

CREATE TABLE "customers" (
	"id" VARCHAR,
	"phone_number" VARCHAR,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"customer_id" VARCHAR,
	"table_id" VARCHAR,
	"status" VARCHAR,
	"payment_method_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orders_FK_customer_id" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "customers_data" (
	"customer_id" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	"gender" VARCHAR,
	"created_at" TIMESTAMP,
	 CONSTRAINT "customers_daya_FK" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
