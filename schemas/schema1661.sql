DROP DATABASE IF EXISTS "schema1661";
CREATE DATABASE "schema1661";
USE "schema1661";
CREATE TABLE "visitor_logs" (
	"id" BIGINT,
	"ip" VARCHAR,
	"iso_code" VARCHAR,
	"country" VARCHAR,
	"city" VARCHAR,
	"state_name" VARCHAR,
	"postal_code" VARCHAR,
	"lat" VARCHAR,
	"lon" VARCHAR,
	"timezone" VARCHAR,
	"currency" VARCHAR,
	"device" VARCHAR,
	"browser" VARCHAR,
	"browser_version" VARCHAR,
	"platform" VARCHAR,
	"platform_version" VARCHAR,
	"login_id" VARCHAR,
	"count" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" BIGINT,
	"login" VARCHAR,
	"name" VARCHAR,
	"image" VARCHAR,
	"email" VARCHAR,
	"document" VARCHAR,
	"contact" VARCHAR,
	"is_admin" INT,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "slider_imgs" (
	"id" BIGINT,
	"image" TEXT,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "role_user" (
	"id" BIGINT,
	"role_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"delete_temp" INT,
	"delete_by" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "recuit_cv_sends" (
	"id" BIGINT,
	"subject" VARCHAR,
	"message" VARCHAR,
	"document" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "recuit_circulars" (
	"id" BIGINT,
	"jobtitle" VARCHAR,
	"publishdate" VARCHAR,
	"deadline" VARCHAR,
	"location" VARCHAR,
	"department" VARCHAR,
	"education" TEXT,
	"details" LONGTEXT,
	"requirement" TEXT,
	"experience" TEXT,
	"salary" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "recruit_applies" (
	"id" BIGINT,
	"user_id" VARCHAR,
	"recuit_circular_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "personal_access_tokens" (
	"id" BIGINT,
	"tokenable_type" VARCHAR,
	"tokenable_id" BIGINT,
	"name" VARCHAR,
	"token" VARCHAR,
	"abilities" TEXT,
	"last_used_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "news_presses" (
	"id" BIGINT,
	"date" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"document" VARCHAR,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "news_galleries" (
	"id" BIGINT,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "news_events" (
	"id" BIGINT,
	"date" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"document" VARCHAR,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "home_sliders" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "home_backgrounds" (
	"id" BIGINT,
	"image" TEXT,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "customer_queries" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"subject" VARCHAR,
	"message" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "contact_infos" (
	"id" BIGINT,
	"address" TEXT,
	"phone" VARCHAR,
	"email" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "business_food" (
	"id" BIGINT,
	"name" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"website" VARCHAR,
	"image" VARCHAR,
	"image2" VARCHAR,
	"image3" VARCHAR,
	"image4" VARCHAR,
	"image5" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "business_feeds" (
	"id" BIGINT,
	"name" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"website" VARCHAR,
	"image" VARCHAR,
	"image2" VARCHAR,
	"image3" VARCHAR,
	"image4" VARCHAR,
	"image5" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "business_farms" (
	"id" BIGINT,
	"name" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"website" VARCHAR,
	"image" VARCHAR,
	"image2" VARCHAR,
	"image3" VARCHAR,
	"image4" VARCHAR,
	"image5" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "business_alls" (
	"id" BIGINT,
	"name" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"website" VARCHAR,
	"image" VARCHAR,
	"image2" VARCHAR,
	"image3" VARCHAR,
	"image4" VARCHAR,
	"image5" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "auth_api_tokens" (
	"id" BIGINT,
	"token_id" INT,
	"user_id" INT,
	"raw_token" VARCHAR,
	"saved_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin_logs" (
	"id" BIGINT,
	"ip" VARCHAR,
	"iso_code" VARCHAR,
	"country" VARCHAR,
	"city" VARCHAR,
	"state_name" VARCHAR,
	"postal_code" VARCHAR,
	"lat" VARCHAR,
	"lon" VARCHAR,
	"timezone" VARCHAR,
	"currency" VARCHAR,
	"device" VARCHAR,
	"browser" VARCHAR,
	"browser_version" VARCHAR,
	"platform" VARCHAR,
	"platform_version" VARCHAR,
	"login_id" VARCHAR,
	"status" VARCHAR,
	"count" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_visions" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_president_messages" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_missions" (
	"id" BIGINT,
	"details" TEXT,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_histories" (
	"id" BIGINT,
	"date" VARCHAR,
	"title" VARCHAR,
	"details" TEXT,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_headquarters" (
	"id" BIGINT,
	"country" VARCHAR,
	"company" VARCHAR,
	"address" TEXT,
	"phone" VARCHAR,
	"email" VARCHAR,
	"website" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_chairman_messages" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"image" VARCHAR,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about_business_operations" (
	"id" BIGINT,
	"title" VARCHAR,
	"details" TEXT,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
