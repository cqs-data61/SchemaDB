DROP DATABASE IF EXISTS "schema1460";
CREATE DATABASE "schema1460";
USE "schema1460";
CREATE TABLE "loan_transactions" (
	"transaction_id" INT,
	"transaction_type" ENUM,
	"loan_id" VARCHAR,
	"old_lender_id" VARCHAR,
	"new_lender_id" VARCHAR,
	"disclaimer_code" TINYINT
);

CREATE TABLE "loan_details" (
	"loan_id" INT,
	"loan_amount" DECIMAL,
	"interest_rate" DECIMAL,
	"loan_status" ENUM
);

CREATE TABLE "lender_entities" (
	"id" INT,
	"lender_id" VARCHAR,
	"entity_id" VARCHAR,
	"w9_document_code" TINYINT
);

CREATE TABLE "lender_details" (
	"lender_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" VARCHAR
);

CREATE TABLE "entities_details" (
	"entity_id" INT,
	"entity_type" ENUM
);
