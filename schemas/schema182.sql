DROP DATABASE IF EXISTS "schema182";
CREATE DATABASE "schema182";
USE "schema182";
CREATE TABLE "event" (
	"event_id" SERIAL,
	"event_type_id" INTEGER,
	"event_name" VARCHAR,
	"account" INTEGER,
	"venue" INTEGER,
	"need_audio" BOOLEAN,
	"indoor_outdoor" VARCHAR,
	"extended" LONGTEXT,
	"event_start" DATETIME,
	"event_end" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "address" (
	"address_id" SERIAL,
	"address_line_1" VARCHAR,
	"address_line_2" VARCHAR,
	"address_line_3" VARCHAR,
	"admin_area_1" VARCHAR,
	"admin_area_2" VARCHAR,
	"admin_area_3" VARCHAR,
	"admin_area_4" VARCHAR,
	"postal_code" VARCHAR,
	"country_code" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "event_address" (
	"event_address_id" SERIAL,
	"event_id" INTEGER,
	"address_id" INTEGER,
	 PRIMARY KEY ("event_address_id"),
	 CONSTRAINT "fk_event" FOREIGN KEY ("event_id") REFERENCES "event" ("event_id"),
	 CONSTRAINT "fk_address" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "account" (
	"account_id" SERIAL,
	"account_type_id" INTEGER,
	"reference_id" VARCHAR,
	"business_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"extended" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("account_id")
);

CREATE TABLE "account_address" (
	"account_address_id" SERIAL,
	"account_id" INTEGER,
	"address_id" INTEGER,
	"description" VARCHAR,
	 PRIMARY KEY ("account_address_id"),
	 CONSTRAINT "fk_account" FOREIGN KEY ("account_id") REFERENCES "account" ("account_id"),
	 CONSTRAINT "fk_address" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "associate" (
	"associate_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"extended" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("associate_id")
);

CREATE TABLE "associate_account" (
	"associate_account_id" SERIAL,
	"associate_id" INTEGER,
	"account_id" INTEGER,
	 PRIMARY KEY ("associate_account_id"),
	 CONSTRAINT "fk_account" FOREIGN KEY ("account_id") REFERENCES "account" ("account_id"),
	 CONSTRAINT "fk_associate" FOREIGN KEY ("associate_id") REFERENCES "associate" ("associate_id")
);

CREATE TABLE "vendor_type" (
	"vendor_type_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("vendor_type_id")
);

CREATE TABLE "event_type" (
	"event_type_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("event_type_id")
);

CREATE TABLE "account_type" (
	"account_type_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("account_type_id")
);
