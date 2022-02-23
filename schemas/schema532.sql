DROP DATABASE IF EXISTS "schema532";
CREATE DATABASE "schema532";
USE "schema532";
CREATE TABLE "setting" (
	"id" VARCHAR,
	"about_title" TEXT,
	"about_content" TEXT,
	"faq_title" TEXT,
	"faq_content" TEXT,
	"contact_title" TEXT,
	"contact_email" TEXT,
	"contact_phone" TEXT,
	"contact_content" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "faq" (
	"id" VARCHAR,
	"question" TEXT,
	"answer" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edit_event" (
	"id" VARCHAR,
	"event_id" VARCHAR,
	"title" TEXT,
	"organization" TEXT,
	"description" TEXT,
	"location" TEXT,
	"start_date" DATE,
	"start_time" TIME,
	"end_date" DATE,
	"end_time" TIME,
	"cost" INTEGER,
	"contact_name" TEXT,
	"contact_email" TEXT,
	"contact_phone" TEXT,
	"facebook" TEXT,
	"twitter" TEXT,
	"instagram" TEXT,
	"url" TEXT,
	"photo" TEXT,
	"password" TEXT,
	"verified" INTEGER,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_category" (
	"event_id" VARCHAR,
	"category_id" VARCHAR,
	"created_at" DATETIME
);

CREATE TABLE "category" (
	"id" VARCHAR,
	"title" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event" (
	"id" VARCHAR,
	"title" TEXT,
	"organization" TEXT,
	"description" TEXT,
	"location" TEXT,
	"start_date" DATE,
	"start_time" TIME,
	"end_date" DATE,
	"end_time" TIME,
	"cost" INTEGER,
	"contact_name" TEXT,
	"contact_email" TEXT,
	"contact_phone" TEXT,
	"facebook" TEXT,
	"twitter" TEXT,
	"instagram" TEXT,
	"url" TEXT,
	"photo" TEXT,
	"password" TEXT,
	"verified" INTEGER,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
