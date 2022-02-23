DROP DATABASE IF EXISTS "schema85";
CREATE DATABASE "schema85";
USE "schema85";
CREATE TABLE "book_management_event" (
	"event_id" INT,
	"book_management_number" INT,
	"event_info" VARCHAR,
	"record_date_time" DATETIME
);

CREATE TABLE "book_info" (
	"book_management_number" INT,
	"author" VARCHAR,
	"book_title" VARCHAR,
	"publisher" VARCHAR,
	"management_status" VARCHAR,
	"event_date_time" DATETIME,
	"update_time" DATETIME
);
