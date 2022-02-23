DROP DATABASE IF EXISTS "schema1757";
CREATE DATABASE "schema1757";
USE "schema1757";
CREATE TABLE "events" (
	"id" SERIAL,
	"timestamp" DATETIME,
	"label" VARCHAR,
	"event_data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookings" (
	"id" VARCHAR,
	"origin" VARCHAR,
	"buyer_id" VARCHAR,
	"host" VARCHAR,
	"item_id" VARCHAR,
	"booking_info" LONGTEXT,
	"payment_status" ENUM,
	"other_status" LONGTEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" VARCHAR,
	"origin" VARCHAR,
	"buyer_id" VARCHAR,
	"seller" VARCHAR,
	"payment_status" ENUM,
	"items" LONGTEXT,
	"other_status" LONGTEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "purchases" (
	"id" VARCHAR,
	"buyer_id" VARCHAR,
	"items" LONGTEXT,
	"status" ENUM,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
