DROP DATABASE IF EXISTS "schema1055";
CREATE DATABASE "schema1055";
USE "schema1055";
CREATE TABLE "ol_order_detail" (
	"order_id" INT,
	"menu_id" INT,
	"quantity" INT,
	"total_price" DECIMAL,
	 PRIMARY KEY ("order_id","menu_id")
);

CREATE TABLE "ol_order" (
	"order_id" INT,
	"order_date" TIMESTAMP,
	"customer_id" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "category" (
	"category_id" INT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "menu" (
	"menu_id" INT,
	"category_id" INT,
	"menu_name" VARCHAR,
	"menu_description" VARCHAR,
	"price" DECIMAL,
	 PRIMARY KEY ("menu_id"),
	 CONSTRAINT "fkeycon_menu_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id")
);

CREATE TABLE "customer" (
	"user_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email_address" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("user_id")
);
