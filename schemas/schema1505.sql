DROP DATABASE IF EXISTS "schema1505";
CREATE DATABASE "schema1505";
USE "schema1505";
CREATE TABLE "food" (
	"item_name" VARCHAR,
	"food_category" VARCHAR,
	 PRIMARY KEY ("item_name")
);

CREATE TABLE "supplies" (
	"item_name" VARCHAR,
	"supply_category" VARCHAR,
	 PRIMARY KEY ("item_name")
);

CREATE TABLE "item" (
	"item_name" VARCHAR,
	"storage_type" VARCHAR,
	"exp_date" DATE,
	 PRIMARY KEY ("item_name")
);

CREATE TABLE "foodbank" (
	"site_sid" CHAR,
	"item_name" VARCHAR,
	"units_num" INT
);

CREATE TABLE "foodpantry" (
	"site_sid" CHAR,
	 PRIMARY KEY ("site_sid")
);

CREATE TABLE "soupkitchen" (
	"site_sid" CHAR,
	"seat_count" INT,
	"description" VARCHAR,
	"hours_of_op" VARCHAR,
	"conditions_of_use" VARCHAR,
	 PRIMARY KEY ("site_sid")
);

CREATE TABLE "shelter" (
	"site_sid" CHAR,
	"male_bunk_num" INT,
	"female_bunk_num" INT,
	"mixed_bunk_num" INT,
	 PRIMARY KEY ("site_sid")
);

CREATE TABLE "clientservices" (
	"service_type" VARCHAR,
	"site_sid" CHAR,
	"description" VARCHAR,
	"hours_of_op" VARCHAR,
	"conditions_of_use" VARCHAR
);

CREATE TABLE "request" (
	"item_name" VARCHAR,
	"site_sid_request_to" CHAR,
	"site_sid_request_from" CHAR,
	"item_qty" INT,
	"status" VARCHAR
);

CREATE TABLE "usagelog" (
	"client_sid" CHAR,
	"date_time_stamp" DATE,
	"notes" VARCHAR,
	"site_sid" CHAR
);

CREATE TABLE "client" (
	"client_sid" CHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"id_num" VARCHAR,
	"id_type" VARCHAR,
	"phone_num" VARCHAR,
	"gender" CHAR,
	 PRIMARY KEY ("client_sid")
);

CREATE TABLE "site" (
	"site_sid" CHAR,
	"short_name" VARCHAR,
	"st_number" VARCHAR,
	"street" VARCHAR,
	"city" VARCHAR,
	"state" CHAR,
	"zip_code" CHAR,
	"marked_for_deletion" TINYINT,
	"primary_phone_num" VARCHAR,
	 PRIMARY KEY ("site_sid")
);

CREATE TABLE "user" (
	"username" VARCHAR,
	"site_sid" CHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("username")
);
