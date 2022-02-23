DROP DATABASE IF EXISTS "schema1294";
CREATE DATABASE "schema1294";
USE "schema1294";
CREATE TABLE "opening_day" (
	"opening_day_id" MEDIUMINT,
	"opening_day" VARCHAR,
	 PRIMARY KEY ("opening_day_id")
);

CREATE TABLE "trailer_number" (
	"trailer_number_id" MEDIUMINT,
	"trailer_number" VARCHAR,
	 PRIMARY KEY ("trailer_number_id")
);

CREATE TABLE "pos_id" (
	"pos_id_id" MEDIUMINT,
	"pos_id" VARCHAR,
	 PRIMARY KEY ("pos_id_id")
);

CREATE TABLE "services" (
	"services_id" MEDIUMINT,
	"services_name" VARCHAR,
	 PRIMARY KEY ("services_id")
);

CREATE TABLE "market" (
	"market_id" MEDIUMINT,
	"market_name" VARCHAR,
	 PRIMARY KEY ("market_id")
);

CREATE TABLE "client" (
	"client_id" MEDIUMINT,
	"client_name" VARCHAR,
	"client_street_number" VARCHAR,
	"client_street_name" VARCHAR,
	"client_suite_number" VARCHAR,
	"client_city" VARCHAR,
	"client_state" VARCHAR,
	"client_postal_code" VARCHAR,
	"job_id" MEDIUMINT,
	"sales_id" MEDIUMINT,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "jobs" (
	"job_id" MEDIUMINT,
	"job_name" VARCHAR,
	"market" VARCHAR,
	"services" VARCHAR,
	"sale_date" CHAR,
	"cashier" VARCHAR,
	"salesperson" VARCHAR,
	"pos_id" MEDIUMINT,
	"trailer_num" MEDIUMINT,
	"opening_day" VARCHAR,
	"ad_view" MEDIUMINT,
	"emails_sent" MEDIUMINT,
	"client_id" MEDIUMINT,
	"sales_id" MEDIUMINT,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "sales" (
	"sales_id" MEDIUMINT,
	"gross_sales_budget" DECIMAL,
	"gross_sales_actual_clover" DECIMAL,
	"gross_sales_debit_credit" DECIMAL,
	"gross_sales_cash" DECIMAL,
	"gross_sales_8to10" DECIMAL,
	"gross_sales_opening_day" DECIMAL,
	"cash_outside_clover" DECIMAL,
	"gross_sales_reported" DECIMAL,
	"minimum_base" DECIMAL,
	"minimum_actual" DECIMAL,
	"minimum_discount" DECIMAL,
	"commission_rate" DECIMAL,
	"commission_total" DECIMAL,
	"client_share" DECIMAL,
	"client_payment" DECIMAL,
	"gross_profit" DECIMAL,
	"gross_margin" DECIMAL,
	"labor_rate" DECIMAL,
	"transactions_total" MEDIUMINT,
	"transactions_8to10" MEDIUMINT,
	"transactions_opening_day" MEDIUMINT,
	"taxes_fees" DECIMAL,
	"disposal_fee" DECIMAL,
	"disposal_load_count" MEDIUMINT,
	"disposal_vendor_cost" DECIMAL,
	"debris_revenue" DECIMAL,
	"tax_revenue" DECIMAL,
	"gross_profit_total" DECIMAL,
	"hours_staging_budget" MEDIUMINT,
	"hours_estate_sale_budget" MEDIUMINT,
	"hours_total_budget" MEDIUMINT,
	"hours_staging_actual" MEDIUMINT,
	"hours_estate_sale_actual" MEDIUMINT,
	"hours_total_actual" MEDIUMINT,
	"additional_billable_hours" MEDIUMINT,
	"post_sale_donation_and_debris_hours" MEDIUMINT,
	"client_id" MEDIUMINT,
	"job_id" MEDIUMINT,
	 PRIMARY KEY ("sales_id")
);
