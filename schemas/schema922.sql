DROP DATABASE IF EXISTS "schema922";
CREATE DATABASE "schema922";
USE "schema922";
CREATE TABLE "users" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" VARCHAR,
	"slug" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"badge_id" VARCHAR,
	"expiry_date" VARCHAR,
	"location_id" INT,
	"verification_code" VARCHAR,
	"user_verified" TINYINT,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"is_disabled" VARCHAR
);

CREATE TABLE "skill_user" (
	"id" INT,
	"user_id" INT,
	"skill_id" INT,
	"skill_rating" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "skills" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "site_managements" (
	"id" INT,
	"meta_key" VARCHAR,
	"meta_value" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "service_user" (
	"id" INT,
	"service_id" INT,
	"user_id" INT,
	"seller_id" INT,
	"type" ENUM,
	"status" ENUM
);

CREATE TABLE "services" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"status" ENUM,
	"delivery_time_id" INT,
	"response_time_id" INT,
	"english_level" ENUM,
	"price" INT,
	"description" TEXT,
	"location_id" INT,
	"address" VARCHAR,
	"longitude" VARCHAR,
	"latitude" VARCHAR,
	"is_featured" TEXT,
	"show_attachments" TEXT,
	"attachments" TEXT,
	"code" VARCHAR,
	"views" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "role_has_permissions" (
	"permission_id" INT,
	"role_id" INT
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"role_type" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "rlevables" (
	"id" INT,
	"research_level_id" INT,
	"rlevable_id" INT,
	"rlevable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "review_options" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "reviews" (
	"id" INT,
	"user_id" INT,
	"receiver_id" INT,
	"job_id" INT,
	"feedback" TEXT,
	"rating" TEXT,
	"avg_rating" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"project_type" ENUM,
	"service_id" INT
);

CREATE TABLE "response_times" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "research_levels" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"abstract" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "reports" (
	"id" INT,
	"reason" VARCHAR,
	"description" VARCHAR,
	"reportable_id" INT,
	"reportable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "proposal_documents" (
	"id" INT,
	"proposal_id" INT,
	"document" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "proposals" (
	"id" INT,
	"freelancer_id" INT,
	"job_id" INT,
	"content" TEXT,
	"currency" VARCHAR,
	"amount" INT,
	"completion_time" VARCHAR,
	"attachments" TEXT,
	"hired" TINYINT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "profiles" (
	"id" INT,
	"user_id" INT,
	"department_id" INT,
	"no_of_employees" INT,
	"freelancer_type" VARCHAR,
	"english_level" ENUM,
	"hourly_rate" INT,
	"experience" TEXT,
	"education" TEXT,
	"awards" TEXT,
	"projects" TEXT,
	"saved_freelancer" TEXT,
	"offers" TEXT,
	"saved_jobs" TEXT,
	"saved_employers" TEXT,
	"address" VARCHAR,
	"longitude" VARCHAR,
	"latitude" VARCHAR,
	"avater" VARCHAR,
	"banner" VARCHAR,
	"gender" VARCHAR,
	"tagline" VARCHAR,
	"description" TEXT,
	"delete_reason" VARCHAR,
	"delete_description" VARCHAR,
	"payout_id" VARCHAR,
	"profile_searchable" TEXT,
	"profile_blocked" TEXT,
	"weekly_alerts" TEXT,
	"message_alerts" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"saved_services" TEXT,
	"ratings" TEXT,
	"payout_settings" TEXT,
	"certification" TEXT,
	"transaction_currency" VARCHAR,
	"withdraw_details" VARCHAR,
	"years_exp" YEAR,
	"market_profile" VARCHAR
);

CREATE TABLE "private_messages_to" (
	"id" INT,
	"private_message_id" INT,
	"recipent_id" INT,
	"message_read" TINYINT,
	"read_date" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "private_messages" (
	"id" INT,
	"author_id" INT,
	"proposal_id" INT,
	"content" TEXT,
	"attachments" TEXT,
	"notify" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"project_type" ENUM
);

CREATE TABLE "permissions" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payouts" (
	"id" INT,
	"user_id" INT,
	"amount" INT,
	"payment_method" VARCHAR,
	"currency" VARCHAR,
	"paypal_id" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"order_id" INT,
	"type" ENUM,
	"bank_details" TEXT,
	"rave_id" VARCHAR
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "pages" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"body" LONGTEXT,
	"relation_type" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "packages" (
	"id" INT,
	"title" VARCHAR,
	"subtitle" VARCHAR,
	"slug" VARCHAR,
	"cost" DOUBLE,
	"role_id" INT,
	"trial" TINYINT,
	"badge_id" INT,
	"options" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "orders" (
	"id" INT,
	"user_id" INT,
	"product_id" INT,
	"invoice_id" INT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "offers" (
	"id" INT,
	"user_id" INT,
	"freelancer_id" INT,
	"project_id" INT,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "model_has_roles" (
	"role_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT
);

CREATE TABLE "model_has_permissions" (
	"permission_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT
);

CREATE TABLE "milestones" (
	"id" INT,
	"proposal_id" INT,
	"description" TEXT,
	"amount" INT,
	"hired" TINYINT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "messages" (
	"id" INT,
	"user_id" INT,
	"receiver_id" INT,
	"body" TEXT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "locations" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"parent" INT,
	"flag" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "languages" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "langables" (
	"id" INT,
	"language_id" INT,
	"langable_id" INT,
	"langable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "job_skill" (
	"id" INT,
	"job_id" INT,
	"skill_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "jobs" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"status" ENUM,
	"duration" VARCHAR,
	"freelancer_type" ENUM,
	"english_level" ENUM,
	"project_type" ENUM,
	"currency" VARCHAR,
	"price" INT,
	"description" TEXT,
	"location_id" INT,
	"address" VARCHAR,
	"longitude" VARCHAR,
	"latitude" VARCHAR,
	"is_featured" TEXT,
	"show_attachments" TEXT,
	"attachments" TEXT,
	"code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "i_p_n_statuses" (
	"id" INT,
	"payload" TEXT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "items" (
	"id" INT,
	"invoice_id" INT,
	"product_id" INT,
	"subscriber" INT,
	"item_name" VARCHAR,
	"item_price" DOUBLE,
	"item_qty" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "invoices" (
	"id" INT,
	"title" VARCHAR,
	"price" DOUBLE,
	"payer_name" VARCHAR,
	"payer_email" VARCHAR,
	"seller_email" VARCHAR,
	"currency_code" VARCHAR,
	"payer_status" VARCHAR,
	"transaction_id" VARCHAR,
	"sales_tax" DOUBLE,
	"invoice_id" VARCHAR,
	"customer_id" VARCHAR,
	"shipping_amount" DOUBLE,
	"handling_amount" DOUBLE,
	"insurance_amount" DOUBLE,
	"paypal_fee" DOUBLE,
	"payment_mode" VARCHAR,
	"paid" TINYINT,
	"type" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "freelancer_levels" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"abstract" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "followers" (
	"id" INT,
	"follower" INT,
	"following" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "flevables" (
	"id" INT,
	"freelancer_level_id" INT,
	"flevable_id" INT,
	"flevable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "email_types" (
	"id" INT,
	"role_id" INT,
	"email_type" ENUM,
	"variables" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "email_templates" (
	"id" INT,
	"admin_email" VARCHAR,
	"email_type_id" INT,
	"title" VARCHAR,
	"subject" VARCHAR,
	"content" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "disputes" (
	"id" INT,
	"proposal_id" INT,
	"user_id" INT,
	"reason" TEXT,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "departments" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "delivery_times" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "citations" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"abstract" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "citables" (
	"id" INT,
	"citation_id" INT,
	"citable_id" INT,
	"citable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "child_pages" (
	"id" INT,
	"parent_id" INT,
	"child_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "child_location" (
	"id" INT,
	"parent_id" INT,
	"child_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categories" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"abstract" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "catables" (
	"id" INT,
	"category_id" INT,
	"catable_id" INT,
	"catable_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "badges" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"image" VARCHAR,
	"color" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
