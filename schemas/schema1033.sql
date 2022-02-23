DROP DATABASE IF EXISTS "schema1033";
CREATE DATABASE "schema1033";
USE "schema1033";
CREATE TABLE "taxonomy_term" (
	"objectid" INTEGER,
	"term" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"taxonomy" CHARACTER VARYING,
	"language" CHARACTER VARYING,
	"intid" SMALLINT,
	"id" CHARACTER VARYING,
	"parent_id" CHARACTER VARYING
);

CREATE TABLE "service_attribute" (
	"objectid" INTEGER,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"taxonomy_term_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "service_at_location" (
	"objectid" INTEGER,
	"description" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "service_area" (
	"objectid" INTEGER,
	"service_area" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "service" (
	"objectid" INTEGER,
	"name" CHARACTER VARYING,
	"alternate_name" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"url" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"status" CHARACTER VARYING,
	"interpretation_services" CHARACTER VARYING,
	"application_process" CHARACTER VARYING,
	"wait_time" CHARACTER VARYING,
	"fees" CHARACTER VARYING,
	"accreditations" CHARACTER VARYING,
	"licenses" CHARACTER VARYING,
	"taxonomy_ids" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"organization_id" CHARACTER VARYING,
	"program_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "schedule" (
	"objectid" INTEGER,
	"valid_from" TIMESTAMP,
	"valid_to" TIMESTAMP,
	"dtstart" TIMESTAMP,
	"timezone" SMALLINT,
	"until" TIMESTAMP,
	"count" SMALLINT,
	"wkst" CHARACTER VARYING,
	"freq" CHARACTER VARYING,
	"interval" SMALLINT,
	"byday" CHARACTER VARYING,
	"byweekno" CHARACTER VARYING,
	"bymonthday" CHARACTER VARYING,
	"byyearday" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"opens_at" CHARACTER VARYING,
	"closes_at" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"service_at_location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "required_document" (
	"objectid" INTEGER,
	"document" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "program" (
	"objectid" INTEGER,
	"name" CHARACTER VARYING,
	"alternate_name" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"organization_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "postal_address" (
	"objectid" INTEGER,
	"attention" CHARACTER VARYING,
	"address_1" CHARACTER VARYING,
	"address_2" CHARACTER VARYING,
	"address_3" CHARACTER VARYING,
	"address_4" CHARACTER VARYING,
	"city" CHARACTER VARYING,
	"region" CHARACTER VARYING,
	"state_province" CHARACTER VARYING,
	"postal_code" CHARACTER VARYING,
	"country" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "physical_address" (
	"objectid" INTEGER,
	"attention" CHARACTER VARYING,
	"address_1" CHARACTER VARYING,
	"address_2" CHARACTER VARYING,
	"address_3" CHARACTER VARYING,
	"address_4" CHARACTER VARYING,
	"city" CHARACTER VARYING,
	"region" CHARACTER VARYING,
	"state_province" CHARACTER VARYING,
	"postal_code" CHARACTER VARYING,
	"country" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "phone" (
	"objectid" INTEGER,
	"number" CHARACTER VARYING,
	"extension" SMALLINT,
	"type" CHARACTER VARYING,
	"language" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"department" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"organization_id" CHARACTER VARYING,
	"contact_id" CHARACTER VARYING,
	"service_at_location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "payment_accepted" (
	"objectid" INTEGER,
	"payment" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "other_attribute" (
	"objectid" INTEGER,
	"id" CHARACTER VARYING,
	"link_id" CHARACTER VARYING,
	"link_type" CHARACTER VARYING,
	"taxonomy_term_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "organization" (
	"objectid" INTEGER,
	"name" CHARACTER VARYING,
	"alternate_name" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"url" CHARACTER VARYING,
	"tax_status" CHARACTER VARYING,
	"tax_id" CHARACTER VARYING,
	"year_incorporated" TIMESTAMP,
	"legal_status" CHARACTER VARYING,
	"intid" SMALLINT,
	"id" CHARACTER VARYING
);

CREATE TABLE "metadata" (
	"objectid" INTEGER,
	"id" CHARACTER VARYING,
	"resource_id" CHARACTER VARYING,
	"last_action_date" TIMESTAMP,
	"last_action_type" CHARACTER VARYING,
	"field_name" CHARACTER VARYING,
	"previous_value" CHARACTER VARYING,
	"replacement_value" CHARACTER VARYING,
	"updated_by" CHARACTER VARYING
);

CREATE TABLE "meta_table_descriptions" (
	"objectid" INTEGER,
	"id" CHARACTER VARYING,
	"name" CHARACTER VARYING,
	"language" CHARACTER VARYING,
	"character_set" CHARACTER VARYING
);

CREATE TABLE "location" (
	"objectid" INTEGER,
	"name" CHARACTER VARYING,
	"alternate_name" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"transportation" CHARACTER VARYING,
	"latitude" NUMERIC,
	"longitude" NUMERIC,
	"id" CHARACTER VARYING,
	"organization_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "language" (
	"objectid" INTEGER,
	"language" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "funding" (
	"objectid" INTEGER,
	"source" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"organization_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "eligibility" (
	"objectid" INTEGER,
	"eligibility" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "contact" (
	"objectid" INTEGER,
	"name" CHARACTER VARYING,
	"title" CHARACTER VARYING,
	"department" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"organization_id" CHARACTER VARYING,
	"service_id" CHARACTER VARYING,
	"service_at_location_id" CHARACTER VARYING,
	"intid" SMALLINT
);

CREATE TABLE "accessibility_for_disabilities" (
	"objectid" INTEGER,
	"accessibility" CHARACTER VARYING,
	"details" CHARACTER VARYING,
	"id" CHARACTER VARYING,
	"location_id" CHARACTER VARYING,
	"intid" SMALLINT
);
