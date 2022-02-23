DROP DATABASE IF EXISTS "schema788";
CREATE DATABASE "schema788";
USE "schema788";
CREATE TABLE "attendee_tickets" (
	"attendee_ticket_id" INTEGER,
	"ticket_code" VARCHAR,
	"attendee_id" INTEGER,
	"ticket_price_id" INTEGER,
	"discount_code_id" INTEGER,
	"net_price" NUMERIC,
	 PRIMARY KEY ("attendee_ticket_id")
);

CREATE TABLE "discount_codes" (
	"discount_code_id" INTEGER,
	"discount_code" VARCHAR,
	"discount_name" VARCHAR,
	"discount_type" VARCHAR,
	"discount_amount" NUMERIC,
	 PRIMARY KEY ("discount_code_id")
);

CREATE TABLE "ticket_prices" (
	"ticket_price_id" INTEGER,
	"ticket_type_code" VARCHAR,
	"pricing_category_code" VARCHAR,
	"base_price" NUMERIC,
	 PRIMARY KEY ("ticket_price_id")
);

CREATE TABLE "pricing_categories" (
	"pricing_category_code" VARCHAR,
	"pricing_category_name" VARCHAR,
	"pricing_start_date" DATE,
	"pricing_end_date" DATE,
	 PRIMARY KEY ("pricing_category_code")
);

CREATE TABLE "ticket_types" (
	"ticket_type_code" VARCHAR,
	"ticket_type_name" VARCHAR,
	"description" VARCHAR,
	"includes_workshop" BOOLEAN,
	 PRIMARY KEY ("ticket_type_code")
);

CREATE TABLE "attendees" (
	"attendee_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"title" VARCHAR,
	"company" VARCHAR,
	 PRIMARY KEY ("attendee_id")
);
