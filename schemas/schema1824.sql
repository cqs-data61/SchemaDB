DROP DATABASE IF EXISTS "schema1824";
CREATE DATABASE "schema1824";
USE "schema1824";
CREATE TABLE "feedbacks" (
	"id" INT,
	"created_at" DATETIME,
	"user_id" INT,
	"reviewer_id" INT,
	"task_id" INT,
	"feedback" TEXT,
	"rating" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chats" (
	"id" INT,
	"created_at" DATETIME,
	"task_id" INT,
	"sender_id" INT,
	"recipient_id" INT,
	"message" TEXT,
	"is_read" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "responses" (
	"id" INT,
	"created_at" DATETIME,
	"task_id" INT,
	"performer_id" INT,
	"comment" TEXT,
	"price" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks_files" (
	"id" INT,
	"task_id" INT,
	"file_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"id" INT,
	"created_at" DATETIME,
	"name" VARCHAR,
	"details" TEXT,
	"category_id" INT,
	"file_id" INT,
	"location_id" INT,
	"description" TEXT,
	"budget" INT,
	"user_id" INT,
	"performer_id" INT,
	"due_date" DATETIME,
	"status" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "files" (
	"id" INT,
	"user_id" INT,
	"task_id" INT,
	"path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_categories" (
	"id" INT,
	"user_id" INT,
	"category_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notifications" (
	"id" INT,
	"user_id" INT,
	"feedback" TINYINT,
	"chat" TINYINT,
	"refuse" TINYINT,
	"start" TINYINT,
	"finish" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"created_at" DATETIME,
	"email" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"avatar" VARCHAR,
	"birthday" DATETIME,
	"phone" VARCHAR,
	"skype" VARCHAR,
	"telegram" VARCHAR,
	"bio" TEXT,
	"last_online_time" DATETIME,
	"location_id" INT,
	"is_performer" TINYINT,
	"rejected_jobs" INT,
	"is_visible" TINYINT,
	"is_favourite" TINYINT,
	"portfolio" VARCHAR,
	"orders_number" INT,
	"rating" DECIMAL,
	"popularity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locations" (
	"id" INT,
	"city_id" INT,
	"latitude" DECIMAL,
	"longtitude" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cities" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
