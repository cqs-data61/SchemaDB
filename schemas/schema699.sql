DROP DATABASE IF EXISTS "schema699";
CREATE DATABASE "schema699";
USE "schema699";
CREATE TABLE "offices" (
	"office_id" INT,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("office_id")
);

CREATE TABLE "employees" (
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"job_title" VARCHAR,
	"salary" INT,
	"reports_to" INT,
	"office_id" INT,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fk_employees_managers" FOREIGN KEY ("reports_to") REFERENCES "employees" ("employee_id"),
	 CONSTRAINT "fk_employees_offices" FOREIGN KEY ("office_id") REFERENCES "offices" ("office_id")
);

CREATE TABLE "order_item_notes" (
	"note_id" INT,
	"order_id" INT,
	"product_id" INT,
	"note" VARCHAR,
	 PRIMARY KEY ("note_id")
);

CREATE TABLE "order_statuses" (
	"order_status_id" TINYINT,
	"name" VARCHAR,
	 PRIMARY KEY ("order_status_id")
);

CREATE TABLE "customers" (
	"customer_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"birth_date" DATE,
	"phone" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" CHAR,
	"points" INT,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "shippers" (
	"shipper_id" SMALLINT,
	"name" VARCHAR,
	 PRIMARY KEY ("shipper_id")
);

CREATE TABLE "orders" (
	"order_id" INT,
	"customer_id" INT,
	"order_date" DATE,
	"status" TINYINT,
	"comments" VARCHAR,
	"shipped_date" DATE,
	"shipper_id" SMALLINT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fk_orders_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id"),
	 CONSTRAINT "fk_orders_shippers" FOREIGN KEY ("shipper_id") REFERENCES "shippers" ("shipper_id"),
	 CONSTRAINT "fk_orders_order_statuses" FOREIGN KEY ("status") REFERENCES "order_statuses" ("order_status_id")
);

CREATE TABLE "products" (
	"product_id" INT,
	"product_id" INT,
	"name" VARCHAR,
	"name" VARCHAR,
	"quantity_in_stock" INT,
	"quantity_in_stock" INT,
	"unit_price" DECIMAL,
	"unit_price" DECIMAL,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "order_items" (
	"order_id" INT,
	"product_id" INT,
	"quantity" INT,
	"unit_price" DECIMAL,
	 PRIMARY KEY ("order_id","product_id"),
	 CONSTRAINT "fk_order_items_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id"),
	 CONSTRAINT "fk_order_items_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "clients" (
	"client_id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" CHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "invoices" (
	"invoice_id" INT,
	"number" VARCHAR,
	"client_id" INT,
	"invoice_total" DECIMAL,
	"payment_total" DECIMAL,
	"invoice_date" DATE,
	"due_date" DATE,
	"payment_date" DATE,
	 PRIMARY KEY ("invoice_id"),
	 CONSTRAINT "FK_client_id" FOREIGN KEY ("client_id") REFERENCES "clients" ("client_id")
);

CREATE TABLE "payment_methods" (
	"payment_method_id" TINYINT,
	"name" VARCHAR,
	 PRIMARY KEY ("payment_method_id")
);

CREATE TABLE "payments" (
	"payment_id" INT,
	"client_id" INT,
	"invoice_id" INT,
	"date" DATE,
	"amount" DECIMAL,
	"payment_method" TINYINT,
	 PRIMARY KEY ("payment_id"),
	 CONSTRAINT "fk_payment_payment_method" FOREIGN KEY ("payment_method") REFERENCES "payment_methods" ("payment_method_id"),
	 CONSTRAINT "fk_payment_client" FOREIGN KEY ("client_id") REFERENCES "clients" ("client_id"),
	 CONSTRAINT "fk_payment_invoice" FOREIGN KEY ("invoice_id") REFERENCES "invoices" ("invoice_id")
);
