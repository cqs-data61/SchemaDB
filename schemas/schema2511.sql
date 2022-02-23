DROP DATABASE IF EXISTS "schema2511";
CREATE DATABASE "schema2511";
USE "schema2511";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "tvc_av" (
	"id" BIGINT,
	"vedio_link" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "team" (
	"id" BIGINT,
	"name" VARCHAR,
	"position" VARCHAR,
	"short_description" TEXT,
	"image" VARCHAR,
	"fb_link" VARCHAR,
	"priority" INT,
	"telegram_link" VARCHAR,
	"instra_link" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "subcategory" (
	"id" BIGINT,
	"category_id" INT,
	"subcategory_name" VARCHAR,
	"link" VARCHAR,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "slidder" (
	"id" BIGINT,
	"slidder_image" VARCHAR,
	"slidder_image_number" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"short_description" VARCHAR,
	"btn_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "setting" (
	"id" BIGINT,
	"logo" VARCHAR,
	"mobile_number" VARCHAR,
	"text" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	"time" VARCHAR,
	"coppyright" VARCHAR,
	"shedule" VARCHAR,
	"fb_link" VARCHAR,
	"tw_link" VARCHAR,
	"lind_link" VARCHAR,
	"instra_link" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "settelment" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "services" (
	"id" BIGINT,
	"image" VARCHAR,
	"title" VARCHAR,
	"description" TEXT,
	"sub_title" VARCHAR,
	"vedio_or_link" VARCHAR,
	"day" INT,
	"hour" INT,
	"minits" INT,
	"second" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "pro_cat" (
	"id" BIGINT,
	"companies_id" INT,
	"cat_name" VARCHAR,
	"priority" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "project_image" (
	"id" BIGINT,
	"user_id" VARCHAR,
	"user_value" VARCHAR,
	"description" TEXT,
	"gallery_image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "project_category" (
	"id" BIGINT,
	"pro_category_name" VARCHAR,
	"procat_id" INT,
	"companies_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "profil" (
	"id" BIGINT,
	"name" VARCHAR,
	"position" VARCHAR,
	"image" VARCHAR,
	"description" TEXT,
	"image_one" VARCHAR,
	"image_two" VARCHAR,
	"image_three" VARCHAR,
	"image_four" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "prassad" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "partners" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "news_event" (
	"id" BIGINT,
	"title" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "news" (
	"id" BIGINT,
	"image" VARCHAR,
	"title" VARCHAR,
	"description" TEXT,
	"responsibilities" TEXT,
	"skills" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "latest_news" (
	"id" BIGINT,
	"title" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"date" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "jobinfo" (
	"id" BIGINT,
	"email" VARCHAR,
	"name" VARCHAR,
	"phone" VARCHAR,
	"file" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "investment" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "insurers" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "imagegallery" (
	"id" BIGINT,
	"show_all" VARCHAR,
	"gas" VARCHAR,
	"oil" VARCHAR,
	"industry" VARCHAR,
	"eno" VARCHAR,
	"factory" VARCHAR,
	"gallery_image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "fortunecategory" (
	"id" BIGINT,
	"image" VARCHAR,
	"name" VARCHAR,
	"priority" INT,
	"short_description" TEXT,
	"vedio_link" VARCHAR,
	"link" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"webside_link" VARCHAR,
	"facebook_link" VARCHAR
);

CREATE TABLE "faq" (
	"id" BIGINT,
	"title" VARCHAR,
	"image" VARCHAR,
	"description" TEXT,
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

CREATE TABLE "csr" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "companyslider" (
	"id" BIGINT,
	"slider_image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "companyinfo" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" TEXT,
	"shortdescription" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "chairmaninfo" (
	"id" BIGINT,
	"image" VARCHAR,
	"position" VARCHAR,
	"shortdescription" TEXT,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "cetegory" (
	"id" BIGINT,
	"category_name" VARCHAR,
	"link" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categoryimages" (
	"id" BIGINT,
	"fortune_cat_id" INT,
	"image_one" VARCHAR,
	"image_two" VARCHAR,
	"image_three" VARCHAR,
	"image_four" VARCHAR,
	"webside_link" VARCHAR,
	"facebook_link" VARCHAR,
	"priority" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "career" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "business_slider" (
	"id" BIGINT,
	"slider_id" INT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "business_product" (
	"id" BIGINT,
	"business_id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "blog" (
	"id" BIGINT,
	"title" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "bankers" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "award_achievement" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "auditots" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "advisors" (
	"id" BIGINT,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "about" (
	"id" BIGINT,
	"shortdescription" TEXT,
	"description" TEXT,
	"number" VARCHAR,
	"title" VARCHAR,
	"title_description" VARCHAR,
	"achievements_details" TEXT,
	"image_one" VARCHAR,
	"image_two" VARCHAR,
	"image_three" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
