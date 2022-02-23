DROP DATABASE IF EXISTS "schema1581";
CREATE DATABASE "schema1581";
USE "schema1581";
CREATE TABLE "visit_categories" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_by" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_targets" (
	"id" INT,
	"user_id" INT,
	"target_id" INT,
	"total_target" BIGINT,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_sales" (
	"id" INT,
	"user_id" INT,
	"target_id" INT,
	"total_sales" BIGINT,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"company_id" INT,
	"project_taken_user" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "timely_notifications" (
	"id" BIGINT,
	"company_id" BIGINT,
	"sales_transaction_id" BIGINT,
	"sales_transaction_item_id" BIGINT,
	"service_id" INT,
	"information" VARCHAR,
	"remaining_days" INT,
	"expiration_date" DATE,
	"updated_expiration_date" DATE,
	"successfully_sent" TINYINT,
	"seen" TINYINT,
	"task_done" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ticket_statuses" (
	"id" INT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"color" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ticket_priorities" (
	"id" INT,
	"name" VARCHAR,
	"color" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ticket_comments" (
	"id" BIGINT,
	"content" TEXT,
	"user_id" INT,
	"ticket_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "ticket_categories" (
	"id" INT,
	"name" VARCHAR,
	"color" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "tickets" (
	"id" BIGINT,
	"subject" VARCHAR,
	"description" TEXT,
	"status_id" INT,
	"priority_id" INT,
	"user_id" INT,
	"agent_id" INT,
	"category_id" INT,
	"completed_at" DATETIME,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "targets" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "shops" (
	"id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "seo_packages" (
	"id" BIGINT,
	"name" VARCHAR,
	"price" BIGINT,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales_transactions_item_fbs" (
	"id" INT,
	"sales_transactions_item_id" INT,
	"particulars" VARCHAR,
	"dollar" DOUBLE,
	"graphics" DOUBLE,
	"total" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales_transactions_items" (
	"id" INT,
	"sales_transaction_id" INT,
	"service_id" INT,
	"total_price" DOUBLE,
	"information" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales_transactions" (
	"id" INT,
	"user_id" INT,
	"company_id" INT,
	"referred_by" INT,
	"sales_code" VARCHAR,
	"date" DATE,
	"total_amount" DOUBLE,
	"total_paid_amount" DOUBLE,
	"total_unpaid_amount" DOUBLE,
	"payment_complete_status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales_installment_payments" (
	"id" INT,
	"sales_transaction_id" INT,
	"user_id" INT,
	"paid_amount" DOUBLE,
	"payment_method" INT,
	"cheque_number" VARCHAR,
	"date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales_categories" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales" (
	"id" INT,
	"user_id" INT,
	"company_id" INT,
	"sales_category_id" INT,
	"target_id" INT,
	"date" DATE,
	"office_name" VARCHAR,
	"received_amount" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "role_user" (
	"user_id" INT,
	"role_id" INT
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "request_logs" (
	"id" INT,
	"user_id" INT,
	"date" DATE,
	"company_id" INT,
	"services" VARCHAR,
	"purchase_item" VARCHAR,
	"total_price" INT,
	"paid_amount" INT,
	"unpaid_amount" INT,
	"payment_complete_status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "requested_s_t_item_fbs" (
	"id" INT,
	"r_s_t_item_id" INT,
	"r_particulars" VARCHAR,
	"r_dollar" DOUBLE,
	"r_graphics" DOUBLE,
	"r_total" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "requested_sales_transaction_items" (
	"id" INT,
	"r_transaction_id" INT,
	"r_items" VARCHAR,
	"r_quantity" INT,
	"r_unit" VARCHAR,
	"r_rate" DOUBLE,
	"r_service_id" INT,
	"r_total_price" DOUBLE,
	"r_information" VARCHAR,
	"r_start_date" DATE,
	"r_end_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "requested_sales_transactions" (
	"id" INT,
	"r_actual_sale_id" INT,
	"r_actual_purchase_id" INT,
	"r_user_id" INT,
	"r_company_id" INT,
	"r_shop_id" INT,
	"r_referred_by" INT,
	"r_sales_code" VARCHAR,
	"r_purchase_code" VARCHAR,
	"r_date" DATE,
	"r_total_amount" DOUBLE,
	"r_total_paid_amount" DOUBLE,
	"r_total_unpaid_amount" DOUBLE,
	"r_payment_complete_status" TINYINT,
	"r_operation" VARCHAR,
	"completed" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "requested_sales_installment_payments" (
	"id" INT,
	"r_transaction_id" INT,
	"r_user_id" INT,
	"r_paid_amount" DOUBLE,
	"r_payment_method" INT,
	"r_cheque_number" VARCHAR,
	"r_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchase_transaction_items" (
	"id" INT,
	"purchase_transaction_id" INT,
	"items" VARCHAR,
	"rate" DOUBLE,
	"quantity" INT,
	"unit" VARCHAR,
	"total_price" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchase_transactions" (
	"id" INT,
	"user_id" INT,
	"shop_id" INT,
	"purchase_code" VARCHAR,
	"date" DATE,
	"total_amount" DOUBLE,
	"total_paid_amount" DOUBLE,
	"total_unpaid_amount" DOUBLE,
	"payment_complete_status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchase_installment_payments" (
	"id" INT,
	"purchase_transaction_id" INT,
	"user_id" INT,
	"paid_amount" DOUBLE,
	"payment_method" INT,
	"cheque_number" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "project_referred_relationships" (
	"id" BIGINT,
	"sales_transaction_id" BIGINT,
	"parent_name_id" BIGINT,
	"child_name_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "permission_role" (
	"permission_id" INT,
	"role_id" INT
);

CREATE TABLE "permissions" (
	"id" INT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payment_methods" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "invoice_item_amounts" (
	"id" BIGINT,
	"invoice_item_id" BIGINT,
	"invoice_item_group_id" BIGINT,
	"total_paid_amount" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "invoice_items" (
	"id" BIGINT,
	"invoice_id" BIGINT,
	"group_id" BIGINT,
	"service_id" INT,
	"information" VARCHAR,
	"total_price" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "invoices" (
	"id" BIGINT,
	"company_id" BIGINT,
	"bill_no" BIGINT,
	"date" DATE,
	"previous_due_amount" DOUBLE,
	"total_due_amount" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "field_visit_contacts" (
	"id" INT,
	"field_visit_id" INT,
	"contact_number" VARCHAR,
	"contact_email" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "field_visits" (
	"id" INT,
	"user_id" INT,
	"targets_id" INT,
	"visit_category_id" INT,
	"company_id" INT,
	"date" DATE,
	"office_name" VARCHAR,
	"email_address" VARCHAR,
	"address" VARCHAR,
	"visited_to" VARCHAR,
	"contact_person" VARCHAR,
	"requirements" LONGTEXT,
	"next_visit_date" DATE,
	"project_status" TINYINT,
	"reasons" LONGTEXT,
	"project_scope" VARCHAR,
	"weakness" LONGTEXT,
	"comments" LONGTEXT,
	"next_visit_comments" LONGTEXT,
	"assigned_by" INT,
	"assigned_to" INT,
	"assigned_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "field_visitors" (
	"id" INT,
	"field_visit_id" INT,
	"visitors_contact" VARCHAR,
	"visitors_email" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "employee_details" (
	"id" INT,
	"user_id" INT,
	"role_id" INT,
	"name" VARCHAR,
	"date_of_birth" VARCHAR,
	"email" VARCHAR,
	"mobile_number" VARCHAR,
	"phone_number" VARCHAR,
	"temporary_address" VARCHAR,
	"temporary_tole" VARCHAR,
	"temporary_ward" VARCHAR,
	"permanent_address" VARCHAR,
	"permanent_tole" VARCHAR,
	"permanent_ward" VARCHAR,
	"fb_link" VARCHAR,
	"twitter_link" VARCHAR,
	"personal_website_link" VARCHAR,
	"bank_name_1" VARCHAR,
	"swift_code_1" VARCHAR,
	"bank_number_1" VARCHAR,
	"branch_1" VARCHAR,
	"bank_name_2" VARCHAR,
	"swift_code_2" VARCHAR,
	"bank_number_2" VARCHAR,
	"branch_2" VARCHAR,
	"father_name" VARCHAR,
	"mother_name" VARCHAR,
	"grandfather_name" VARCHAR,
	"grandmother_name" VARCHAR,
	"brother_name" VARCHAR,
	"blood_group" VARCHAR,
	"esewa_id" VARCHAR,
	"education" VARCHAR,
	"college_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "emails" (
	"id" INT,
	"field_visit_id" INT,
	"company_id" INT,
	"email" VARCHAR,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "contact_numbers" (
	"id" INT,
	"field_visit_id" INT,
	"contact_number" VARCHAR,
	"contact_number_id" INT,
	"contact_number_type" VARCHAR,
	"from" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "companies" (
	"id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "client_follow_up_by_admin" (
	"id" BIGINT,
	"company_id" INT,
	"follow_up_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "client_follow_ups" (
	"id" BIGINT,
	"company_id" INT,
	"follow_up_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "amc_packages" (
	"id" BIGINT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
