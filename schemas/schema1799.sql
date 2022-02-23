DROP DATABASE IF EXISTS "schema1799";
CREATE DATABASE "schema1799";
USE "schema1799";
CREATE TABLE "alias" (
	"alias_id" INT,
	"name" VARCHAR,
	"persona" VARCHAR,
	"agent_id" INT
);

CREATE TABLE "mission_agent" (
	"mission_id" INT,
	"agent_id" INT
);

CREATE TABLE "agency_agent" (
	"agency_id" INT,
	"agent_id" INT,
	"identifier" VARCHAR,
	"security_clearance_id" INT,
	"activation_date" DATE,
	"is_active" BIT
);

CREATE TABLE "mission" (
	"mission_id" INT,
	"code_name" VARCHAR,
	"notes" TEXT,
	"start_date" DATE,
	"projected_end_date" DATE,
	"actual_end_date" DATE,
	"operational_cost" DECIMAL,
	"agency_id" INT
);

CREATE TABLE "security_clearance" (
	"security_clearance_id" INT,
	"name" VARCHAR
);

CREATE TABLE "agent" (
	"agent_id" INT,
	"first_name" VARCHAR,
	"middle_name" VARCHAR,
	"last_name" VARCHAR,
	"dob" DATE,
	"height_in_inches" INT
);

CREATE TABLE "location" (
	"location_id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"region" VARCHAR,
	"country_code" VARCHAR,
	"postal_code" VARCHAR,
	"agency_id" INT
);

CREATE TABLE "agency" (
	"agency_id" INT,
	"short_name" VARCHAR,
	"long_name" VARCHAR
);
