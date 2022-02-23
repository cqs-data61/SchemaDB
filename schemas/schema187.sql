DROP DATABASE IF EXISTS "schema187";
CREATE DATABASE "schema187";
USE "schema187";
CREATE TABLE "region" (
	"region_id" VARCHAR,
	"region_name" VARCHAR,
	 PRIMARY KEY ("region_id")
);

CREATE TABLE "county" (
	"county_id" VARCHAR,
	"county_name" VARCHAR,
	"state" VARCHAR,
	"region_id" VARCHAR,
	 PRIMARY KEY ("county_id"),
	 CONSTRAINT "county_ibfk_1" FOREIGN KEY ("region_id") REFERENCES "region" ("region_id")
);

CREATE TABLE "chronic_diseases" (
	"chronic_disease_id" VARCHAR,
	"name" VARCHAR,
	"typical_age" VARCHAR,
	"description" VARCHAR,
	"medication" VARCHAR,
	 PRIMARY KEY ("chronic_disease_id")
);

CREATE TABLE "role" (
	"role_id" VARCHAR,
	"type" VARCHAR,
	"phone_number" VARCHAR,
	"district_name" VARCHAR,
	"region_name" VARCHAR,
	"state_name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "metal_level" (
	"metal_level_id" VARCHAR,
	"metal_level_name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("metal_level_id")
);

CREATE TABLE "address" (
	"address_id" VARCHAR,
	"address_detail" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zipcode" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"is_current_address" TINYINT,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "customer" (
	"customer_ssn" VARCHAR,
	"first_name" VARCHAR,
	"middle_initial" VARCHAR,
	"last_name" VARCHAR,
	"suffix" VARCHAR,
	"date_of_birth" DATETIME,
	"salutation" VARCHAR,
	"email_address" VARCHAR,
	"gender" VARCHAR,
	"preferred_language" VARCHAR,
	"address_id" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("customer_ssn"),
	 CONSTRAINT "customer_ibfk_1" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "customer_relation" (
	"customer1_ssn" VARCHAR,
	"customer2_ssn" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"relationship" VARCHAR,
	"customer_relation_id" VARCHAR,
	 PRIMARY KEY ("customer_relation_id"),
	 CONSTRAINT "customer_relation_ibfk_1" FOREIGN KEY ("customer1_ssn") REFERENCES "customer" ("customer_ssn"),
	 CONSTRAINT "customer_relation_ibfk_2" FOREIGN KEY ("customer2_ssn") REFERENCES "customer" ("customer_ssn")
);

CREATE TABLE "customer_image" (
	"document_id" VARCHAR,
	"customer_ssn" VARCHAR,
	"image_type" VARCHAR,
	"image_file_location" VARCHAR,
	"date_received" DATETIME,
	 PRIMARY KEY ("document_id"),
	 CONSTRAINT "customer_image_ibfk_1" FOREIGN KEY ("customer_ssn") REFERENCES "customer" ("customer_ssn")
);

CREATE TABLE "chronic_disease_customer" (
	"customer_ssn" VARCHAR,
	"chronic_disease_id" VARCHAR,
	"is_predicted" TINYINT,
	"chronic_disease_customer_id" VARCHAR,
	 PRIMARY KEY ("chronic_disease_customer_id"),
	 CONSTRAINT "chronic_disease_customer_ibfk_2" FOREIGN KEY ("customer_ssn") REFERENCES "customer" ("customer_ssn"),
	 CONSTRAINT "chronic_disease_customer_ibfk_1" FOREIGN KEY ("chronic_disease_id") REFERENCES "chronic_diseases" ("chronic_disease_id")
);

CREATE TABLE "billing_account" (
	"billing_account_id" VARCHAR,
	"name" VARCHAR,
	"name2" VARCHAR,
	"address_id" VARCHAR,
	"tax_id_number" VARCHAR,
	"online_billing_flag" TINYINT,
	"activity_status" VARCHAR,
	"activity_status_date" DATETIME,
	"web_address" VARCHAR,
	"is_payroll_processed" TINYINT,
	"billing_acct_type_date" DATETIME,
	 PRIMARY KEY ("billing_account_id"),
	 CONSTRAINT "billing_account_ibfk_1" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "invoice" (
	"invoice_id" VARCHAR,
	"billing_account_id" VARCHAR,
	"customer_ssn" VARCHAR,
	"due_date" DATETIME,
	"paid_date" DATETIME,
	"run_date" DATETIME,
	 PRIMARY KEY ("invoice_id"),
	 CONSTRAINT "invoice_ibfk_2" FOREIGN KEY ("billing_account_id") REFERENCES "billing_account" ("billing_account_id"),
	 CONSTRAINT "invoice_ibfk_1" FOREIGN KEY ("customer_ssn") REFERENCES "customer" ("customer_ssn")
);

CREATE TABLE "invoice_details" (
	"invoice_id" VARCHAR,
	"invoice_line_number" VARCHAR,
	"is_conversion_pending" TINYINT,
	"is_paid" TINYINT,
	"premium_sub_total" DOUBLE,
	"due_date" DATETIME,
	"paid_date" DATETIME,
	"run_date" DATETIME,
	 PRIMARY KEY ("invoice_line_number"),
	 CONSTRAINT "invoice_details_ibfk_1" FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("invoice_id")
);

CREATE TABLE "company" (
	"company_code" VARCHAR,
	"company_name" VARCHAR,
	"customer_service_phone" VARCHAR,
	"address_id" VARCHAR,
	 PRIMARY KEY ("company_code"),
	 CONSTRAINT "company_ibfk_1" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "product" (
	"product_id" VARCHAR,
	"plan_name" VARCHAR,
	"line_of_business" VARCHAR,
	"metal_level_id" VARCHAR,
	"description" VARCHAR,
	"company_code" VARCHAR,
	"rating_area" VARCHAR,
	"is_adult_child_only" TINYINT,
	"network_url" VARCHAR,
	"plan_brochure_url" VARCHAR,
	"benefits_sumary_url" VARCHAR,
	"drug_formula_url" VARCHAR,
	"is_dental_included" TINYINT,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "product_ibfk_1" FOREIGN KEY ("company_code") REFERENCES "company" ("company_code"),
	 CONSTRAINT "product_ibfk_2" FOREIGN KEY ("metal_level_id") REFERENCES "metal_level" ("metal_level_id")
);

CREATE TABLE "product_quote" (
	"product_quote_id" VARCHAR,
	"region_id" VARCHAR,
	"product_id" VARCHAR,
	"age" DOUBLE,
	"num_of_people_on_plan" INT,
	"bmi" DOUBLE,
	"is_smoker" TINYINT,
	"charges" DOUBLE,
	"description" VARCHAR,
	 PRIMARY KEY ("product_quote_id"),
	 CONSTRAINT "product_quote_ibfk_1" FOREIGN KEY ("region_id") REFERENCES "region" ("region_id"),
	 CONSTRAINT "product_quote_ibfk_2" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id")
);

CREATE TABLE "associate" (
	"associate_ssn" VARCHAR,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"role" VARCHAR,
	"date_of_birth" DATETIME,
	"start_date" DATETIME,
	"phone_number" VARCHAR,
	"email_address" VARCHAR,
	"address_id" VARCHAR,
	"company_code" VARCHAR,
	 PRIMARY KEY ("associate_ssn"),
	 CONSTRAINT "associate_ibfk_2" FOREIGN KEY ("company_code") REFERENCES "company" ("company_code"),
	 CONSTRAINT "associate_ibfk_1" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "quote_request" (
	"quote_request_id" VARCHAR,
	"customer_ssn" VARCHAR,
	"associate_ssn" VARCHAR,
	"region_id" VARCHAR,
	"metal_level_id" VARCHAR,
	"number_of_people_on_plan" INT,
	"bmi" DOUBLE,
	"is_smoker" TINYINT,
	"max_price" DOUBLE,
	"is_sale_complete" TINYINT,
	 PRIMARY KEY ("quote_request_id"),
	 CONSTRAINT "quote_request_ibfk_1" FOREIGN KEY ("associate_ssn") REFERENCES "associate" ("associate_ssn"),
	 CONSTRAINT "quote_request_ibfk_2" FOREIGN KEY ("customer_ssn") REFERENCES "customer" ("customer_ssn"),
	 CONSTRAINT "quote_request_ibfk_3" FOREIGN KEY ("region_id") REFERENCES "region" ("region_id"),
	 CONSTRAINT "quote_request_ibfk_4" FOREIGN KEY ("metal_level_id") REFERENCES "metal_level" ("metal_level_id")
);

CREATE TABLE "quote_request_product_quote" (
	"quote_request_product_quote_id" VARCHAR,
	"quote_request_id" VARCHAR,
	"product_quote_id" VARCHAR,
	"is_accepted" VARCHAR,
	 PRIMARY KEY ("quote_request_product_quote_id"),
	 CONSTRAINT "quote_request_product_quote_ibfk_1" FOREIGN KEY ("quote_request_id") REFERENCES "quote_request" ("quote_request_id"),
	 CONSTRAINT "quote_request_product_quote_ibfk_2" FOREIGN KEY ("product_quote_id") REFERENCES "product_quote" ("product_quote_id")
);

CREATE TABLE "associate_role" (
	"associate_ssn" VARCHAR,
	"role_id" VARCHAR,
	"end_date" DATETIME,
	"start_date" DATETIME,
	"associate_role_id" VARCHAR,
	 PRIMARY KEY ("associate_role_id"),
	 CONSTRAINT "associate_role_ibfk_1" FOREIGN KEY ("role_id") REFERENCES "role" ("role_id"),
	 CONSTRAINT "associate_role_ibfk_2" FOREIGN KEY ("associate_ssn") REFERENCES "associate" ("associate_ssn")
);

CREATE TABLE "account" (
	"account_id" VARCHAR,
	"name" VARCHAR,
	"tax_id_number" VARCHAR,
	"email_address" VARCHAR,
	"phone_number" VARCHAR,
	"account_established_date" DATETIME,
	"account_start_date" DATETIME,
	"account_end_date" DATETIME,
	"is_active" TINYINT,
	 PRIMARY KEY ("account_id")
);

CREATE TABLE "account_relation" (
	"master_account_id" VARCHAR,
	"related_account_id" VARCHAR,
	"relationship_type" VARCHAR,
	"relation_type_date" DATETIME,
	"account_relation_id" VARCHAR,
	 PRIMARY KEY ("account_relation_id"),
	 CONSTRAINT "account_relation_ibfk_2" FOREIGN KEY ("related_account_id") REFERENCES "account" ("account_id"),
	 CONSTRAINT "account_relation_ibfk_1" FOREIGN KEY ("master_account_id") REFERENCES "account" ("account_id")
);

CREATE TABLE "account_product" (
	"account_id" VARCHAR,
	"product_id" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"account_product_id" VARCHAR,
	 PRIMARY KEY ("account_product_id"),
	 CONSTRAINT "account_product_ibfk_2" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id"),
	 CONSTRAINT "account_product_ibfk_1" FOREIGN KEY ("account_id") REFERENCES "account" ("account_id")
);

CREATE TABLE "account_member" (
	"customer_ssn" VARCHAR,
	"account_id" VARCHAR,
	"fsa_contribution_amount" DOUBLE,
	"cust_b_acct_department_name" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"account_member_id" VARCHAR,
	 PRIMARY KEY ("account_member_id"),
	 CONSTRAINT "account_member_ibfk_1" FOREIGN KEY ("account_id") REFERENCES "account" ("account_id"),
	 CONSTRAINT "account_member_ibfk_2" FOREIGN KEY ("customer_ssn") REFERENCES "customer" ("customer_ssn")
);

CREATE TABLE "account_billing_account" (
	"account_id" VARCHAR,
	"billing_account_id" VARCHAR,
	"start_date" DATETIME,
	"billing_frequency" INT,
	"non_billable_months" INT,
	"enrollment_period_length" INT,
	"fsa_claim_reimbursement_method" VARCHAR,
	"is_payment_card" TINYINT,
	"is_ifca_exception" TINYINT,
	"account_billing_account_id" VARCHAR,
	 PRIMARY KEY ("account_billing_account_id"),
	 CONSTRAINT "account_billing_account_ibfk_2" FOREIGN KEY ("billing_account_id") REFERENCES "billing_account" ("billing_account_id"),
	 CONSTRAINT "account_billing_account_ibfk_1" FOREIGN KEY ("account_id") REFERENCES "account" ("account_id")
);

CREATE TABLE "account_admin" (
	"account_admin_id" VARCHAR,
	"account_id" VARCHAR,
	"associate_ssn" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"is_active" TINYINT,
	 PRIMARY KEY ("account_admin_id"),
	 CONSTRAINT "account_admin_ibfk_1" FOREIGN KEY ("account_id") REFERENCES "account" ("account_id"),
	 CONSTRAINT "account_admin_ibfk_2" FOREIGN KEY ("associate_ssn") REFERENCES "associate" ("associate_ssn")
);
