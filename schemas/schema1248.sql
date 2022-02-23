DROP DATABASE IF EXISTS "schema1248";
CREATE DATABASE "schema1248";
USE "schema1248";
CREATE TABLE "items" (
	"itemname" CHARACTER VARYING,
	"itemprice" NUMERIC,
	"item_promotion_discount" NUMERIC,
	"item_quantity" INTEGER,
	"promotion_start_date" DATE,
	"promotion_end_date" DATE,
	"itemid" INTEGER,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "user" (
	"firstname" CHARACTER VARYING,
	"lastname" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"phonenumber" CHARACTER VARYING,
	"customersince" DATE,
	"password" CHARACTER VARYING,
	"accountnumber" INTEGER,
	"id" INTEGER,
	"role" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "itemoffer" (
	"id" INTEGER,
	"item_id" INTEGER,
	"customer_id" INTEGER,
	"offer_price" DOUBLE PRECISION,
	"offer_date" DATE,
	"quantity" INTEGER,
	"is_accepted" BOOLEAN,
	"plan_weeks_count" INTEGER,
	"is_paid" BOOLEAN,
	"paid_weeks_count" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "itemoffer_fk" FOREIGN KEY ("item_id") REFERENCES "items" ("itemid"),
	 CONSTRAINT "itemoffer_fk_1" FOREIGN KEY ("customer_id") REFERENCES "user" ("id")
);

CREATE TABLE "payment" (
	"id" INTEGER,
	"itemoffer_id" INTEGER,
	"amount" DOUBLE PRECISION,
	"paid_date" DATE,
	"user_id" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "payment_fk" FOREIGN KEY ("itemoffer_id") REFERENCES "itemoffer" ("id")
);
