DROP DATABASE IF EXISTS "schema2515";
CREATE DATABASE "schema2515";
USE "schema2515";
CREATE TABLE "geodaten_artikelnr_1001" (
	"id" INT,
	"bundesland_name" VARCHAR,
	"bundesland_nutscode" VARCHAR,
	"regierungsbezirk_name" VARCHAR,
	"regierungsbezirk_nutscode" VARCHAR,
	"kreis_name" VARCHAR,
	"kreis_typ" VARCHAR,
	"kreis_nutscode" VARCHAR,
	"gemeinde_name" VARCHAR,
	"gemeinde_typ" VARCHAR,
	"gemeinde_ags" VARCHAR,
	"gemeinde_rs" VARCHAR,
	"gemeinde_lat" NUMERIC,
	"gemeinde_lon" NUMERIC,
	"ort_id" INT,
	"ort_name" VARCHAR,
	"ort_lat" NUMERIC,
	"ort_lon" NUMERIC,
	"postleitzahl" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bucket_log_bucket" (
	"id" INT,
	"bucket_log_id" INT,
	"name" VARCHAR,
	"campaign" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bucket_log" (
	"id" INT,
	"event_name" VARCHAR,
	"external_id" INT,
	"date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address_change" (
	"id" INT,
	"address_id" INT,
	"address_type" VARCHAR,
	"external_id" INT,
	"external_id_type" VARCHAR,
	"export_date" DATETIME,
	"created_at" DATETIME,
	"modified_at" DATETIME,
	"donation_receipt" TINYINT,
	"current_identifier" VARCHAR,
	"previous_identifier" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address" (
	"id" INT,
	"salutation" VARCHAR,
	"company" VARCHAR,
	"title" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"street" VARCHAR,
	"postcode" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscription" (
	"id" INT,
	"email" VARCHAR,
	"export" DATETIME,
	"backup" DATETIME,
	"status" SMALLINT,
	"confirmationcode" VARCHAR,
	"tracking" VARCHAR,
	"source" VARCHAR,
	"createdat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "incentive" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "membership_incentive" (
	"membership_id" INT,
	"incentive_id" INT,
	 PRIMARY KEY ("membership_id","incentive_id")
);

CREATE TABLE "request" (
	"id" INT,
	"status" SMALLINT,
	"donation_id" INT,
	"timestamp" DATETIME,
	"anrede" VARCHAR,
	"firma" VARCHAR,
	"titel" VARCHAR,
	"name" VARCHAR,
	"vorname" VARCHAR,
	"nachname" VARCHAR,
	"strasse" VARCHAR,
	"plz" VARCHAR,
	"ort" VARCHAR,
	"country" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"dob" DATE,
	"wikimedium_shipping" VARCHAR,
	"membership_type" VARCHAR,
	"payment_type" VARCHAR,
	"membership_fee" INT,
	"membership_fee_interval" SMALLINT,
	"account_number" VARCHAR,
	"bank_name" VARCHAR,
	"bank_code" VARCHAR,
	"iban" VARCHAR,
	"bic" VARCHAR,
	"account_holder" VARCHAR,
	"comment" LONGTEXT,
	"export" DATETIME,
	"backup" DATETIME,
	"wikilogin" TINYINT,
	"tracking" VARCHAR,
	"data" LONGTEXT,
	"donation_receipt" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "donation_payment_sofort" (
	"id" INT,
	"confirmed_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "donation_payment" (
	"id" INT,
	"payment_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "donation_notification_log" (
	"donation_id" INT,
	 PRIMARY KEY ("donation_id")
);

CREATE TABLE "spenden" (
	"id" INT,
	"payment_id" INT,
	"status" CHAR,
	"name" VARCHAR,
	"ort" VARCHAR,
	"email" VARCHAR,
	"info" TINYINT,
	"bescheinigung" TINYINT,
	"eintrag" VARCHAR,
	"betrag" VARCHAR,
	"periode" SMALLINT,
	"zahlweise" CHAR,
	"kommentar" LONGTEXT,
	"ueb_code" VARCHAR,
	"data" LONGTEXT,
	"source" VARCHAR,
	"remote_addr" VARCHAR,
	"hash" VARCHAR,
	"is_public" TINYINT,
	"dt_new" DATETIME,
	"dt_del" DATETIME,
	"dt_exp" DATETIME,
	"dt_gruen" DATETIME,
	"dt_backup" DATETIME,
	 PRIMARY KEY ("id")
);
