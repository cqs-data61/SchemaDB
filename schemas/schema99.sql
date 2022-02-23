DROP DATABASE IF EXISTS "schema99";
CREATE DATABASE "schema99";
USE "schema99";
CREATE TABLE "answer_ward" (
	"answer_id" BIGINT,
	"ward_id" BIGINT
);

CREATE TABLE "wards" (
	"id" BIGINT,
	"name" VARCHAR,
	"county_id" BIGINT,
	"constituency_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_user" (
	"user_id" BIGINT,
	"role_id" BIGINT
);

CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" DATETIME,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answer_sub_county" (
	"answer_id" BIGINT,
	"sub_county_id" BIGINT
);

CREATE TABLE "sub_counties" (
	"id" BIGINT,
	"county_id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answer_source" (
	"answer_id" BIGINT,
	"source_id" BIGINT
);

CREATE TABLE "sources" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission_role" (
	"role_id" BIGINT,
	"permission_id" BIGINT
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answer_office" (
	"answer_id" BIGINT,
	"office_id" BIGINT
);

CREATE TABLE "answer_county" (
	"answer_id" BIGINT,
	"county_id" BIGINT
);

CREATE TABLE "answer_constituency" (
	"answer_id" BIGINT,
	"constituency_id" BIGINT
);

CREATE TABLE "answers" (
	"id" BIGINT,
	"date" DATE,
	"event" VARCHAR,
	"question_id" BIGINT,
	"country_id" BIGINT,
	"respondent_id" BIGINT,
	"other_place" VARCHAR,
	"url" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "respondents" (
	"id" BIGINT,
	"respondentcategory_id" BIGINT,
	"name" VARCHAR,
	"age" INT,
	"gander" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "respondent_categories" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "question_resource" (
	"question_id" BIGINT,
	"resource_id" BIGINT
);

CREATE TABLE "resources" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions" (
	"id" BIGINT,
	"question" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
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
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permissions" (
	"id" BIGINT,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "offices" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media" (
	"id" BIGINT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	"uuid" CHAR,
	"collection_name" VARCHAR,
	"name" VARCHAR,
	"file_name" VARCHAR,
	"mime_type" VARCHAR,
	"disk" VARCHAR,
	"conversions_disk" VARCHAR,
	"size" BIGINT,
	"manipulations" LONGTEXT,
	"custom_properties" LONGTEXT,
	"responsive_images" LONGTEXT,
	"order_column" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
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

CREATE TABLE "countries" (
	"id" BIGINT,
	"name" VARCHAR,
	"short_code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "constituencies" (
	"id" BIGINT,
	"name" VARCHAR,
	"county_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "counties" (
	"id" BIGINT,
	"name" VARCHAR,
	"county_code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
