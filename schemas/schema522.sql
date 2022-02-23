DROP DATABASE IF EXISTS "schema522";
CREATE DATABASE "schema522";
USE "schema522";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "site_translations" (
	"id" BIGINT,
	"key" VARCHAR,
	"locale" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "site_settings" (
	"id" BIGINT,
	"key" VARCHAR,
	"value" TEXT,
	"type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "newsletter_emails" (
	"id" BIGINT,
	"email" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instructors" (
	"id" BIGINT,
	"image_url" BLOB,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instructor_translations" (
	"id" BIGINT,
	"instructor_id" BIGINT,
	"locale" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"job_role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "faqs" (
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "faq_translations" (
	"id" BIGINT,
	"locale" VARCHAR,
	"title" VARCHAR,
	"subtitle" VARCHAR,
	"body" TEXT,
	"faq_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courses" (
	"id" BIGINT,
	"price" DECIMAL,
	"image_url" BLOB,
	"rate" DECIMAL,
	"type" ENUM,
	"enrolled_count" INT,
	"access_duration_in_months" SMALLINT,
	"instructor_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_translations" (
	"id" BIGINT,
	"locale" VARCHAR,
	"course_id" BIGINT,
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_instructor" (
	"course_id" BIGINT,
	"instructor_id" BIGINT
);

CREATE TABLE "course_curricula" (
	"id" BIGINT,
	"course_id" BIGINT,
	"type" ENUM,
	"info" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_curricula_translations" (
	"id" BIGINT,
	"course_curricula_id" BIGINT,
	"locale" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_curricula_translations_ibfk_1" FOREIGN KEY ("course_curricula_id") REFERENCES "course_curricula" ("id")
);

CREATE TABLE "course_applications" (
	"id" BIGINT,
	"course_id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"message" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contact_us" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"message" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blogs" (
	"id" BIGINT,
	"instructor_id" BIGINT,
	"image_url" BLOB,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blog_translations" (
	"id" BIGINT,
	"blog_id" BIGINT,
	"locale" VARCHAR,
	"title" VARCHAR,
	"body" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_types" (
	"id" BIGINT,
	"icon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instructor_accounts" (
	"id" BIGINT,
	"instructor_id" BIGINT,
	"account_type_id" BIGINT,
	"account_url" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "instructor_accounts_account_type_id_foreign" FOREIGN KEY ("account_type_id") REFERENCES "account_types" ("id")
);

CREATE TABLE "account_type_translations" (
	"id" BIGINT,
	"account_type_id" BIGINT,
	"locale" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "about_us_cards" (
	"id" BIGINT,
	"image_url" BLOB,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "about_us_card_translations" (
	"id" BIGINT,
	"about_us_card_id" BIGINT,
	"locale" VARCHAR,
	"title" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);
