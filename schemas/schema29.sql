DROP DATABASE IF EXISTS "schema29";
CREATE DATABASE "schema29";
USE "schema29";
CREATE TABLE "vendor_info" (
	"id" BIGINT,
	"name" VARCHAR,
	"applicant" VARCHAR,
	"owner" VARCHAR,
	"address" VARCHAR,
	"tel" VARCHAR,
	"fax" VARCHAR,
	"remark" VARCHAR,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contact_info" (
	"id" INT,
	"company_id" BIGINT,
	"company_name" VARCHAR,
	"contact_person" VARCHAR,
	"title" VARCHAR,
	"contact_number" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_contact_info_to_vendor_info" FOREIGN KEY ("company_id") REFERENCES "vendor_info" ("id")
);
