DROP DATABASE IF EXISTS "schema155";
CREATE DATABASE "schema155";
USE "schema155";
CREATE TABLE "apply_course_detail" (
	"id" BIGINT,
	"apply_course_id" BIGINT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "apply_course" (
	"id" BIGINT,
	"student_id" BIGINT,
	"course_id" BIGINT,
	"status" VARCHAR,
	"progress_rate" FLOAT,
	"is_complete" TINYINT,
	"expire_at" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "student" (
	"id" BIGINT,
	"account" VARCHAR,
	"password" VARCHAR,
	"status" VARCHAR,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"registered_at" DATETIME,
	"unregistered_at" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_detail" (
	"id" BIGINT,
	"course_id" BIGINT,
	"title" VARCHAR,
	"content" TEXT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course" (
	"id" BIGINT,
	"title" VARCHAR,
	"status" VARCHAR,
	"teacher_name" VARCHAR,
	"teacher_phone_number" VARCHAR,
	"teacher_email" VARCHAR,
	"amount" DECIMAL,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);
