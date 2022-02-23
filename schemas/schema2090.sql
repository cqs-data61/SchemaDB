DROP DATABASE IF EXISTS "schema2090";
CREATE DATABASE "schema2090";
USE "schema2090";
CREATE TABLE "strings" (
	"string_id" INT,
	"string_data" VARCHAR,
	 PRIMARY KEY ("string_id")
);

CREATE TABLE "sales_reports" (
	"group_by" VARCHAR,
	"display" VARCHAR,
	"title" VARCHAR,
	"filter_row_source" LONGTEXT,
	"default" TINYINT,
	 PRIMARY KEY ("group_by")
);

CREATE TABLE "order_details_status" (
	"id" INT,
	"status_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "suppliers" (
	"id" INT,
	"company" VARCHAR,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"email_address" VARCHAR,
	"job_title" VARCHAR,
	"business_phone" VARCHAR,
	"home_phone" VARCHAR,
	"mobile_phone" VARCHAR,
	"fax_number" VARCHAR,
	"address" LONGTEXT,
	"city" VARCHAR,
	"state_province" VARCHAR,
	"zip_postal_code" VARCHAR,
	"country_region" VARCHAR,
	"web_page" LONGTEXT,
	"notes" LONGTEXT,
	"attachments" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "purchase_order_status" (
	"id" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"supplier_ids" LONGTEXT,
	"id" INT,
	"product_code" VARCHAR,
	"product_name" VARCHAR,
	"description" LONGTEXT,
	"standard_cost" DECIMAL,
	"list_price" DECIMAL,
	"reorder_level" INT,
	"target_level" INT,
	"quantity_per_unit" VARCHAR,
	"discontinued" TINYINT,
	"minimum_reorder_quantity" INT,
	"category" VARCHAR,
	"attachments" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders_status" (
	"id" TINYINT,
	"status_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders_tax_status" (
	"id" TINYINT,
	"tax_status_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shippers" (
	"id" INT,
	"company" VARCHAR,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"email_address" VARCHAR,
	"job_title" VARCHAR,
	"business_phone" VARCHAR,
	"home_phone" VARCHAR,
	"mobile_phone" VARCHAR,
	"fax_number" VARCHAR,
	"address" LONGTEXT,
	"city" VARCHAR,
	"state_province" VARCHAR,
	"zip_postal_code" VARCHAR,
	"country_region" VARCHAR,
	"web_page" LONGTEXT,
	"notes" LONGTEXT,
	"attachments" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inventory_transaction_types" (
	"id" TINYINT,
	"type_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "privileges" (
	"id" INT,
	"privilege_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employees" (
	"id" INT,
	"company" VARCHAR,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"email_address" VARCHAR,
	"job_title" VARCHAR,
	"business_phone" VARCHAR,
	"home_phone" VARCHAR,
	"mobile_phone" VARCHAR,
	"fax_number" VARCHAR,
	"address" LONGTEXT,
	"city" VARCHAR,
	"state_province" VARCHAR,
	"zip_postal_code" VARCHAR,
	"country_region" VARCHAR,
	"web_page" LONGTEXT,
	"notes" LONGTEXT,
	"attachments" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "purchase_orders" (
	"id" INT,
	"supplier_id" INT,
	"created_by" INT,
	"submitted_date" DATETIME,
	"creation_date" DATETIME,
	"status_id" INT,
	"expected_date" DATETIME,
	"shipping_fee" DECIMAL,
	"taxes" DECIMAL,
	"payment_date" DATETIME,
	"payment_amount" DECIMAL,
	"payment_method" VARCHAR,
	"notes" LONGTEXT,
	"approved_by" INT,
	"approved_date" DATETIME,
	"submitted_by" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_purchase_orders_suppliers1" FOREIGN KEY ("supplier_id") REFERENCES "suppliers" ("id"),
	 CONSTRAINT "fk_purchase_orders_employees1" FOREIGN KEY ("created_by") REFERENCES "employees" ("id"),
	 CONSTRAINT "fk_purchase_orders_purchase_order_status1" FOREIGN KEY ("status_id") REFERENCES "purchase_order_status" ("id")
);

CREATE TABLE "employee_privileges" (
	"employee_id" INT,
	"privilege_id" INT,
	 PRIMARY KEY ("employee_id","privilege_id"),
	 CONSTRAINT "fk_employee_privileges_privileges1" FOREIGN KEY ("privilege_id") REFERENCES "privileges" ("id"),
	 CONSTRAINT "fk_employee_privileges_employees1" FOREIGN KEY ("employee_id") REFERENCES "employees" ("id")
);

CREATE TABLE "customers" (
	"id" INT,
	"company" VARCHAR,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"email_address" VARCHAR,
	"job_title" VARCHAR,
	"business_phone" VARCHAR,
	"home_phone" VARCHAR,
	"mobile_phone" VARCHAR,
	"fax_number" VARCHAR,
	"address" LONGTEXT,
	"city" VARCHAR,
	"state_province" VARCHAR,
	"zip_postal_code" VARCHAR,
	"country_region" VARCHAR,
	"web_page" LONGTEXT,
	"notes" LONGTEXT,
	"attachments" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"employee_id" INT,
	"customer_id" INT,
	"order_date" DATETIME,
	"shipped_date" DATETIME,
	"shipper_id" INT,
	"ship_name" VARCHAR,
	"ship_address" LONGTEXT,
	"ship_city" VARCHAR,
	"ship_state_province" VARCHAR,
	"ship_zip_postal_code" VARCHAR,
	"ship_country_region" VARCHAR,
	"shipping_fee" DECIMAL,
	"taxes" DECIMAL,
	"payment_type" VARCHAR,
	"paid_date" DATETIME,
	"notes" LONGTEXT,
	"tax_rate" DOUBLE,
	"tax_status_id" TINYINT,
	"status_id" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_orders_orders_status1" FOREIGN KEY ("status_id") REFERENCES "orders_status" ("id"),
	 CONSTRAINT "fk_orders_orders_tax_status1" FOREIGN KEY ("tax_status_id") REFERENCES "orders_tax_status" ("id"),
	 CONSTRAINT "fk_orders_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id"),
	 CONSTRAINT "fk_orders_employees1" FOREIGN KEY ("employee_id") REFERENCES "employees" ("id"),
	 CONSTRAINT "fk_orders_shippers1" FOREIGN KEY ("shipper_id") REFERENCES "shippers" ("id")
);

CREATE TABLE "order_details" (
	"id" INT,
	"order_id" INT,
	"product_id" INT,
	"quantity" DECIMAL,
	"unit_price" DECIMAL,
	"discount" DOUBLE,
	"status_id" INT,
	"date_allocated" DATETIME,
	"purchase_order_id" INT,
	"inventory_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_order_details_order_details_status1" FOREIGN KEY ("status_id") REFERENCES "order_details_status" ("id"),
	 CONSTRAINT "fk_order_details_products1" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "fk_order_details_orders1" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);

CREATE TABLE "invoices" (
	"id" INT,
	"order_id" INT,
	"invoice_date" DATETIME,
	"due_date" DATETIME,
	"tax" DECIMAL,
	"shipping" DECIMAL,
	"amount_due" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_invoices_orders1" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);

CREATE TABLE "inventory_transactions" (
	"id" INT,
	"transaction_type" TINYINT,
	"transaction_created_date" DATETIME,
	"transaction_modified_date" DATETIME,
	"product_id" INT,
	"quantity" INT,
	"purchase_order_id" INT,
	"customer_order_id" INT,
	"comments" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_inventory_transactions_purchase_orders1" FOREIGN KEY ("purchase_order_id") REFERENCES "purchase_orders" ("id"),
	 CONSTRAINT "fk_inventory_transactions_inventory_transaction_types1" FOREIGN KEY ("transaction_type") REFERENCES "inventory_transaction_types" ("id"),
	 CONSTRAINT "fk_inventory_transactions_products1" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "fk_inventory_transactions_orders1" FOREIGN KEY ("customer_order_id") REFERENCES "orders" ("id")
);

CREATE TABLE "purchase_order_details" (
	"id" INT,
	"purchase_order_id" INT,
	"product_id" INT,
	"quantity" DECIMAL,
	"unit_cost" DECIMAL,
	"date_received" DATETIME,
	"posted_to_inventory" TINYINT,
	"inventory_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_purchase_order_details_inventory_transactions1" FOREIGN KEY ("inventory_id") REFERENCES "inventory_transactions" ("id"),
	 CONSTRAINT "fk_purchase_order_details_products1" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "fk_purchase_order_details_purchase_orders1" FOREIGN KEY ("purchase_order_id") REFERENCES "purchase_orders" ("id")
);
