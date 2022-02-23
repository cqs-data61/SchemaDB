DROP DATABASE IF EXISTS "schema1382";
CREATE DATABASE "schema1382";
USE "schema1382";
CREATE TABLE "categories" (
	"category_id" INT,
	"category_name" VARCHAR,
	"parent_category" INT,
	 PRIMARY KEY ("category_id"),
	 CONSTRAINT "FK_categories_categories" FOREIGN KEY ("parent_category") REFERENCES "categories" ("category_id")
);

CREATE TABLE "products" (
	"product_id" INT,
	"product_name" VARCHAR,
	"product_description" VARCHAR,
	"category_id" INT,
	 PRIMARY KEY ("product_id","category_id"),
	 CONSTRAINT "FK_products_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("category_id")
);

CREATE TABLE "productimages" (
	"product_id" INT,
	"image_data" MEDIUMBLOB,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "FK_images_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "stores" (
	"store_id" INT,
	"address" VARCHAR,
	"city" VARCHAR,
	"state_or_provence" VARCHAR,
	"postal_code" VARCHAR,
	 PRIMARY KEY ("store_id")
);

CREATE TABLE "inventory" (
	"store_id" INT,
	"product_id" INT,
	"amount_in_stock" INT,
	"retail_price" DECIMAL,
	 PRIMARY KEY ("store_id","product_id"),
	 CONSTRAINT "FK_inventory_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id"),
	 CONSTRAINT "FK_inventory_stores" FOREIGN KEY ("store_id") REFERENCES "stores" ("store_id")
);

CREATE TABLE "shipments" (
	"shipment_id" INT,
	"product_id" INT,
	"cost_per_unit" DECIMAL,
	"number_of_units" INT,
	"store_id" INT,
	"date" DATE,
	 PRIMARY KEY ("shipment_id"),
	 CONSTRAINT "FK_shipments_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id"),
	 CONSTRAINT "FK_shipments_stores" FOREIGN KEY ("store_id") REFERENCES "stores" ("store_id")
);

CREATE TABLE "employees" (
	"employee_id" INT,
	"home_store" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"employee_phone" VARCHAR,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "FK_employees_stores" FOREIGN KEY ("home_store") REFERENCES "stores" ("store_id")
);

CREATE TABLE "sales" (
	"sale_event_id" INT,
	"date" DATE,
	"employee_id" INT,
	"store_id" INT,
	"amount_sold" INT,
	"price_paid_per_unit" DECIMAL,
	"product_id" INT,
	 PRIMARY KEY ("sale_event_id"),
	 CONSTRAINT "FK_sales_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id"),
	 CONSTRAINT "FK_sales_stores" FOREIGN KEY ("store_id") REFERENCES "stores" ("store_id"),
	 CONSTRAINT "FK_sales_employees" FOREIGN KEY ("employee_id") REFERENCES "employees" ("employee_id")
);
