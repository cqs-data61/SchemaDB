DROP DATABASE IF EXISTS "schema2393";
CREATE DATABASE "schema2393";
USE "schema2393";
CREATE TABLE "user_accounts" (
	"user_id" VARCHAR,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "sync_times" (
	"data_type" VARCHAR,
	"last_sync" TIMESTAMP,
	 PRIMARY KEY ("data_type")
);

CREATE TABLE "data_submission" (
	"submission_id" VARCHAR,
	"request_id" VARCHAR,
	"name" VARCHAR,
	"additional_information" VARCHAR,
	"street" VARCHAR,
	"house_number" VARCHAR,
	"city" VARCHAR,
	"zip_code" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"created" TIMESTAMP,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("submission_id")
);

CREATE TABLE "guest" (
	"guest_id" VARCHAR,
	"submission_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"date_of_birth" DATE,
	"sex" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"mobile_phone" VARCHAR,
	"identity_checked" BOOLEAN,
	"street" VARCHAR,
	"house_number" VARCHAR,
	"city" VARCHAR,
	"zip_code" VARCHAR,
	"description_of_participation" VARCHAR,
	"attend_from" DATETIME,
	"attend_to" DATETIME,
	"additional_information" VARCHAR,
	 PRIMARY KEY ("guest_id"),
	 CONSTRAINT "fkeycon_guest_to_data_submission" FOREIGN KEY ("submission_id") REFERENCES "data_submission" ("submission_id")
);

CREATE TABLE "case_data_request" (
	"request_id" VARCHAR,
	"ref_id" VARCHAR,
	"name" VARCHAR,
	"hd_user_id" VARCHAR,
	"request_start" TIMESTAMP,
	"request_end" TIMESTAMP,
	"status" VARCHAR,
	"comment" VARCHAR,
	"created" TIMESTAMP,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("request_id")
);

CREATE TABLE "location" (
	"id" VARCHAR,
	"provider_id" VARCHAR,
	"location_id" VARCHAR,
	"name" VARCHAR,
	"contact_official_name" VARCHAR,
	"contact_representative" VARCHAR,
	"contact_address_street" VARCHAR,
	"contact_address_city" VARCHAR,
	"contact_address_zip" VARCHAR,
	"contact_owner_email" VARCHAR,
	"contact_email" VARCHAR,
	"contact_phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_data_request" (
	"request_id" VARCHAR,
	"ref_id" VARCHAR,
	"name" VARCHAR,
	"hd_user_id" VARCHAR,
	"location_id" VARCHAR,
	"request_start" TIMESTAMP,
	"request_end" TIMESTAMP,
	"request_details" VARCHAR,
	"status" VARCHAR,
	"comment" VARCHAR,
	"created" TIMESTAMP,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("request_id"),
	 CONSTRAINT "event_request_location_fk" FOREIGN KEY ("location_id") REFERENCES "location" ("id")
);
