DROP DATABASE IF EXISTS "schema625";
CREATE DATABASE "schema625";
USE "schema625";
CREATE TABLE "ca_parcel_pollution_tbl" (
	"gid" SERIAL,
	"pollution" INTEGER,
	"area_m2" NUMERIC,
	"polluted_area_m2" NUMERIC,
	"address_khashaa" CHARACTER VARYING,
	"address_streetname" CHARACTER VARYING,
	"address_neighbourhood" CHARACTER VARYING,
	"valid_from" DATE,
	"valid_till" DATE,
	"geometry" GEOMETRY
);

CREATE TABLE "ca_parcel_conservation_tbl" (
	"gid" SERIAL,
	"conservation" INTEGER,
	"area_m2" NUMERIC,
	"polluted_area_m2" NUMERIC,
	"address_khashaa" CHARACTER VARYING,
	"address_streetname" CHARACTER VARYING,
	"address_neighbourhood" CHARACTER VARYING,
	"valid_from" DATE,
	"valid_till" DATE,
	"geometry" GEOMETRY
);

CREATE TABLE "va_info_building" (
	"id" SERIAL,
	"register_no" VARCHAR,
	"building_id" VARCHAR,
	"landuse_building" INT,
	"floor" INT,
	"area_m2" DECIMAL,
	"status_year" INTEGER,
	"construction_year" INTEGER,
	"stove_type" INT,
	"material_type" INT,
	"heat_type" INT,
	"building_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "va_info_lease" (
	"id" SERIAL,
	"register_no" VARCHAR,
	"landuse" INT,
	"area_m2" DECIMAL,
	"lease_date" DATE,
	"duration_month" INT,
	"monthly_rent" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "va_info_purchase" (
	"id" SERIAL,
	"register_no" VARCHAR,
	"landuse" INT,
	"area_m2" DECIMAL,
	"purchase_date" DATE,
	"price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "va_info_parcel" (
	"register_no" VARCHAR,
	"parcel_id" VARCHAR,
	"area_m2" NUMERIC,
	"app_type" INT,
	"source_type" INT,
	"purchase_or_lease_type" INT,
	"info_date" DATE,
	"decision_date" DATE,
	"approved_duration" INTEGER,
	"parcel_type" INTEGER,
	 PRIMARY KEY ("register_no")
);

CREATE TABLE "ct_archived_tax_and_price" (
	"id" SERIAL,
	"record" VARCHAR,
	"person" VARCHAR,
	"share" DECIMAL,
	"area" INT,
	"value_calculated" INT,
	"price_paid" INT,
	"land_tax" INT,
	"grace_period" INT,
	"payment_frequency" INT,
	"base_value_per_m2" INT,
	"base_tax_rate" DECIMAL,
	"subsidized_area" INT,
	"subsidized_tax_rate" DECIMAL,
	"valid_from" DATE,
	"valid_till" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ct_tax_and_price" (
	"record" VARCHAR,
	"person" VARCHAR,
	"share" DECIMAL,
	"area" INT,
	"value_calculated" INT,
	"price_paid" INT,
	"land_tax" INT,
	"grace_period" INT,
	"payment_frequency" INT,
	"base_value_per_m2" INT,
	"base_tax_rate" DECIMAL,
	"subsidized_area" INT,
	"subsidized_tax_rate" DECIMAL,
	 PRIMARY KEY ("record","person")
);

CREATE TABLE "ct_fine_for_tax_payment" (
	"id" SERIAL,
	"date_paid" DATE,
	"amount_paid" INT,
	"payment_type" INT,
	"year_paid_for" INT,
	"record" VARCHAR,
	"person" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ct_tax_and_price_fk" FOREIGN KEY ("record","person") REFERENCES "ct_tax_and_price" ("record","person")
);

CREATE TABLE "ct_tax_and_price_payment" (
	"id" SERIAL,
	"date_paid" DATE,
	"amount_paid" INT,
	"payment_type" INT,
	"year_paid_for" INT,
	"paid_total" INT,
	"delay_to_dl1" INT,
	"delay_to_dl2" INT,
	"delay_to_dl3" INT,
	"delay_to_dl4" INT,
	"left_to_pay_for_q1" INT,
	"left_to_pay_for_q2" INT,
	"left_to_pay_for_q3" INT,
	"left_to_pay_for_q4" INT,
	"fine_for_q1" INT,
	"fine_for_q2" INT,
	"fine_for_q3" INT,
	"fine_for_q4" INT,
	"record" VARCHAR,
	"person" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ct_record_fk" FOREIGN KEY ("record","person") REFERENCES "ct_tax_and_price" ("record","person")
);

CREATE TABLE "ct_archived_fee" (
	"id" SERIAL,
	"contract" VARCHAR,
	"person" VARCHAR,
	"share" DECIMAL,
	"area" INT,
	"fee_calculated" INT,
	"fee_contract" INT,
	"grace_period" INT,
	"payment_frequency" INT,
	"base_fee_per_m2" INT,
	"subsidized_area" INT,
	"subsidized_fee_rate" DECIMAL,
	"valid_from" DATE,
	"valid_till" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ct_fee" (
	"contract" VARCHAR,
	"person" VARCHAR,
	"share" DECIMAL,
	"area" INT,
	"fee_calculated" INT,
	"fee_contract" INT,
	"grace_period" INT,
	"payment_frequency" INT,
	"base_fee_per_m2" INT,
	"subsidized_area" INT,
	"subsidized_fee_rate" DECIMAL,
	 PRIMARY KEY ("contract","person")
);

CREATE TABLE "ct_fine_for_fee_payment" (
	"id" SERIAL,
	"date_paid" DATE,
	"amount_paid" INT,
	"payment_type" INT,
	"year_paid_for" INT,
	"contract" VARCHAR,
	"person" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ct_fee_fk" FOREIGN KEY ("contract","person") REFERENCES "ct_fee" ("contract","person")
);

CREATE TABLE "ct_fee_payment" (
	"id" SERIAL,
	"date_paid" DATE,
	"amount_paid" INT,
	"payment_type" INT,
	"year_paid_for" INT,
	"paid_total" INT,
	"delay_to_dl1" INT,
	"delay_to_dl2" INT,
	"delay_to_dl3" INT,
	"delay_to_dl4" INT,
	"left_to_pay_for_q1" INT,
	"left_to_pay_for_q2" INT,
	"left_to_pay_for_q3" INT,
	"left_to_pay_for_q4" INT,
	"fine_for_q1" INT,
	"fine_for_q2" INT,
	"fine_for_q3" INT,
	"fine_for_q4" INT,
	"contract" VARCHAR,
	"person" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ct_fee_fk" FOREIGN KEY ("contract","person") REFERENCES "ct_fee" ("contract","person")
);

CREATE TABLE "ct_record_document" (
	"record" VARCHAR,
	"role" INT,
	"document" INT,
	 PRIMARY KEY ("record","document")
);

CREATE TABLE "ct_contract_conditions" (
	"contract" VARCHAR,
	"condition" INT,
	 PRIMARY KEY ("contract","condition")
);

CREATE TABLE "ct_contract_document" (
	"contract" VARCHAR,
	"role" INT,
	"document" INT,
	 PRIMARY KEY ("contract","document")
);

CREATE TABLE "ct_person_document" (
	"person" VARCHAR,
	"document" INT,
	 PRIMARY KEY ("person","document")
);

CREATE TABLE "ct_application_person_role" (
	"application" VARCHAR,
	"person" VARCHAR,
	"role" INT,
	"main_applicant" BOOLEAN,
	"share" NUMERIC,
	 PRIMARY KEY ("application","person","role")
);

CREATE TABLE "ct_record_application_role" (
	"record" VARCHAR,
	"application" VARCHAR,
	"role" INT,
	 PRIMARY KEY ("record","application")
);

CREATE TABLE "ct_contract_application_role" (
	"contract" VARCHAR,
	"application" VARCHAR,
	"role" INT,
	 PRIMARY KEY ("contract","application")
);

CREATE TABLE "ct_ownership_record" (
	"record_no" VARCHAR,
	"record_date" DATE,
	"record_begin" DATE,
	"certificate_no" VARCHAR,
	"status" INT,
	"right_type" INT,
	"cancellation_date" DATE,
	"cancellation_reason" INT,
	 PRIMARY KEY ("record_no")
);

CREATE TABLE "ct_contract" (
	"contract_no" VARCHAR,
	"contract_date" DATE,
	"contract_begin" DATE,
	"contract_end" DATE,
	"certificate_no" INTEGER,
	"status" INT,
	"cancellation_date" DATE,
	"cancellation_reason" INT,
	 PRIMARY KEY ("contract_no")
);

CREATE TABLE "ct_application_document" (
	"application" VARCHAR,
	"person" VARCHAR,
	"document" INT,
	"role" INT,
	 PRIMARY KEY ("application","document")
);

CREATE TABLE "ct_application_status" (
	"application" VARCHAR,
	"status" INT,
	"status_date" DATE,
	"officer_in_charge" VARCHAR,
	"next_officer_in_charge" VARCHAR,
	 PRIMARY KEY ("application","status")
);

CREATE TABLE "ct_decision_document" (
	"decision" VARCHAR,
	"document" INT,
	 PRIMARY KEY ("decision","document")
);

CREATE TABLE "ct_decision_application" (
	"application" VARCHAR,
	"decision" VARCHAR,
	"decision_result" INT,
	 PRIMARY KEY ("application")
);

CREATE TABLE "ct_decision" (
	"decision_no" VARCHAR,
	"decision_date" DATE,
	"imported_by" VARCHAR,
	"decision_level" INT,
	 PRIMARY KEY ("decision_no")
);

CREATE TABLE "ct_document" (
	"id" SERIAL,
	"name" VARCHAR,
	"content" BYTEA,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ca_tmp_building" (
	"building_id" VARCHAR,
	"building_no" VARCHAR,
	"geo_id" VARCHAR,
	"area_m2" DECIMAL,
	"address_khashaa" VARCHAR,
	"address_streetname" VARCHAR,
	"address_neighbourhood" VARCHAR,
	"valid_from" DATE,
	"valid_till" DATE,
	"geometry" GEOMETRY,
	"maintenance_case" INT,
	 PRIMARY KEY ("building_id")
);

CREATE TABLE "ca_tmp_parcel" (
	"parcel_id" VARCHAR,
	"old_parcel_id" VARCHAR,
	"geo_id" VARCHAR,
	"landuse" INT,
	"area_m2" DECIMAL,
	"documented_area_m2" DECIMAL,
	"address_khashaa" VARCHAR,
	"address_neighbourhood" CHARACTER VARYING,
	"address_streetname" VARCHAR,
	"valid_from" DATE,
	"valid_till" DATE,
	"geometry" GEOMETRY,
	"maintenance_case" INT,
	"initial_insert" BOOLEAN,
	 PRIMARY KEY ("parcel_id")
);

CREATE TABLE "ca_building_maintenance_case" (
	"building" VARCHAR,
	"maintenance" INT,
	 PRIMARY KEY ("building","maintenance")
);

CREATE TABLE "ca_parcel_maintenance_case" (
	"parcel" VARCHAR,
	"maintenance" INT,
	 PRIMARY KEY ("parcel","maintenance")
);

CREATE TABLE "ct_app15_ext" (
	"app_no" VARCHAR,
	"transfer_type" INT,
	 PRIMARY KEY ("app_no")
);

CREATE TABLE "ct_app1_ext" (
	"app_no" VARCHAR,
	"excess_area" INT,
	"price_to_be_paid" INT,
	"applicant_has_paid" BOOLEAN,
	 PRIMARY KEY ("app_no")
);

CREATE TABLE "ct_app8_ext" (
	"app_no" VARCHAR,
	"start_mortgage_period" DATE,
	"end_mortgage_period" DATE,
	"mortgage_type" INT,
	 PRIMARY KEY ("app_no")
);

CREATE TABLE "ct_application" (
	"app_no" VARCHAR,
	"app_timestamp" TIMESTAMP,
	"app_type" INT,
	"requested_landuse" INT,
	"approved_landuse" INT,
	"requested_duration" INT,
	"approved_duration" INT,
	"remarks" TEXT,
	"parcel" VARCHAR,
	 PRIMARY KEY ("app_no")
);

CREATE TABLE "ca_maintenance_case" (
	"id" SERIAL,
	"creation_date" DATE,
	"survey_date" DATE,
	"completion_date" DATE,
	"created_by" VARCHAR,
	"surveyed_by_land_office" VARCHAR,
	"surveyed_by_surveyor" INT,
	"completed_by" VARCHAR,
	"landuse" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ca_building_tbl" (
	"building_id" VARCHAR,
	"building_no" VARCHAR,
	"geo_id" VARCHAR,
	"area_m2" DECIMAL,
	"address_khashaa" VARCHAR,
	"address_streetname" VARCHAR,
	"address_neighbourhood" VARCHAR,
	"valid_from" DATE,
	"valid_till" DATE,
	"geometry" GEOMETRY,
	 PRIMARY KEY ("building_id")
);

CREATE TABLE "ca_parcel_tbl" (
	"parcel_id" VARCHAR,
	"old_parcel_id" VARCHAR,
	"geo_id" VARCHAR,
	"landuse" INT,
	"area_m2" DECIMAL,
	"documented_area_m2" DECIMAL,
	"address_khashaa" VARCHAR,
	"address_streetname" VARCHAR,
	"address_neighbourhood" VARCHAR,
	"valid_from" DATE,
	"valid_till" DATE,
	"geometry" GEOMETRY,
	 PRIMARY KEY ("parcel_id")
);
