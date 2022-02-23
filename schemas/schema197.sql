DROP DATABASE IF EXISTS "schema197";
CREATE DATABASE "schema197";
USE "schema197";
CREATE TABLE "company" (
	"id" SERIAL,
	"brand_name" VARCHAR,
	"logo_url" VARCHAR,
	"is_enable" BOOLEAN,
	"created_at" TIMESTAMP,
	"name" VARCHAR,
	"website" VARCHAR,
	"business_phone" VARCHAR,
	"address" VARCHAR,
	"about" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menu" (
	"id" SERIAL,
	"company_id" INT,
	"name" VARCHAR,
	"image_url" VARCHAR,
	"price" DOUBLE PRECISION,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "menu_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "company" ("id")
);

CREATE TABLE "user_account" (
	"id" SERIAL,
	"email" VARCHAR,
	"password" VARCHAR,
	"full_name" VARCHAR,
	"created_at" TIMESTAMP,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_admin" (
	"user_account_id" SERIAL,
	"company_id" INT,
	"is_enable" BOOLEAN,
	 PRIMARY KEY ("user_account_id"),
	 CONSTRAINT "user_admin_user_account_id_fkey" FOREIGN KEY ("user_account_id") REFERENCES "user_account" ("id")
);

CREATE TABLE "user_client" (
	"user_account_id" SERIAL,
	"gender" VARCHAR,
	"phone_number" VARCHAR,
	"company_name" VARCHAR,
	"address" VARCHAR,
	"birth_date" TIMESTAMP,
	"is_enable" BOOLEAN,
	 PRIMARY KEY ("user_account_id"),
	 CONSTRAINT "user_client_user_account_id_fkey" FOREIGN KEY ("user_account_id") REFERENCES "user_account" ("id")
);

CREATE TABLE "client_order" (
	"id" SERIAL,
	"menu_id" INT,
	"user_client_id" INT,
	"payment_method" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "client_order_user_client_id_fkey" FOREIGN KEY ("user_client_id") REFERENCES "user_client" ("user_account_id"),
	 CONSTRAINT "client_order_menu_id_fkey" FOREIGN KEY ("menu_id") REFERENCES "menu" ("id")
);
