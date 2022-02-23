DROP DATABASE IF EXISTS "schema1552";
CREATE DATABASE "schema1552";
USE "schema1552";
CREATE TABLE "us_states" (
	"state_id" SMALLINT,
	"state_name" VARCHAR,
	"state_abbr" VARCHAR,
	"state_region" VARCHAR,
	 PRIMARY KEY ("state_id")
);

CREATE TABLE "order_details" (
	"order_id" SMALLINT,
	"product_id" SMALLINT,
	"unit_price" REAL,
	"quantity" SMALLINT,
	"discount" REAL,
	 PRIMARY KEY ("order_id","product_id")
);

CREATE TABLE "employee_territories" (
	"employee_id" SMALLINT,
	"territory_id" VARCHAR,
	 PRIMARY KEY ("employee_id","territory_id")
);

CREATE TABLE "territories" (
	"territory_id" VARCHAR,
	"territory_description" NCHAR,
	"region_id" SMALLINT,
	 PRIMARY KEY ("territory_id")
);

CREATE TABLE "orders" (
	"order_id" SMALLINT,
	"customer_id" NCHAR,
	"employee_id" SMALLINT,
	"order_date" DATE,
	"required_date" DATE,
	"shipped_date" DATE,
	"ship_via" SMALLINT,
	"freight" REAL,
	"ship_name" VARCHAR,
	"ship_address" VARCHAR,
	"ship_city" VARCHAR,
	"ship_region" VARCHAR,
	"ship_postal_code" VARCHAR,
	"ship_country" VARCHAR,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "shippers" (
	"shipper_id" SMALLINT,
	"company_name" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("shipper_id")
);

CREATE TABLE "region" (
	"region_id" SMALLINT,
	"region_description" NCHAR,
	 PRIMARY KEY ("region_id")
);

CREATE TABLE "products" (
	"product_id" SMALLINT,
	"product_name" VARCHAR,
	"supplier_id" SMALLINT,
	"category_id" SMALLINT,
	"quantity_per_unit" VARCHAR,
	"unit_price" REAL,
	"units_in_stock" SMALLINT,
	"units_on_order" SMALLINT,
	"reorder_level" SMALLINT,
	"discontinued" INTEGER,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "suppliers" (
	"supplier_id" SMALLINT,
	"company_name" VARCHAR,
	"contact_name" VARCHAR,
	"contact_title" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"postal_code" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	"fax" VARCHAR,
	"homepage" CLOB,
	 PRIMARY KEY ("supplier_id")
);

CREATE TABLE "employees" (
	"employee_id" SMALLINT,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"title" VARCHAR,
	"title_of_courtesy" VARCHAR,
	"birth_date" DATE,
	"hire_date" DATE,
	"address" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"postal_code" VARCHAR,
	"country" VARCHAR,
	"home_phone" VARCHAR,
	"extension" VARCHAR,
	"photo" BLOB,
	"notes" CLOB,
	"reports_to" SMALLINT,
	"photo_path" VARCHAR,
	 PRIMARY KEY ("employee_id")
);

CREATE TABLE "customer_customer_demo" (
	"customer_id" NCHAR,
	"customer_type_id" NCHAR,
	 PRIMARY KEY ("customer_id","customer_type_id")
);

CREATE TABLE "customers" (
	"customer_id" NCHAR,
	"company_name" VARCHAR,
	"contact_name" VARCHAR,
	"contact_title" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"postal_code" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	"fax" VARCHAR,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "customer_demographics" (
	"customer_type_id" NCHAR,
	"customer_desc" CLOB,
	 PRIMARY KEY ("customer_type_id")
);

CREATE TABLE "categories" (
	"category_id" SMALLINT,
	"category_name" VARCHAR,
	"description" CLOB,
	"picture" BLOB,
	 PRIMARY KEY ("category_id")
);
