DROP DATABASE IF EXISTS "schema146";
CREATE DATABASE "schema146";
USE "schema146";
CREATE TABLE "property_master" (
	"id" BIGINT,
	"insurance_type" VARCHAR,
	"property_type" VARCHAR,
	"building_type" VARCHAR,
	"building_age" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "business_master" (
	"id" BIGINT,
	"business_category" VARCHAR,
	"business_type" VARCHAR,
	"total_employees" BIGINT,
	"business_age" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "business" (
	"id" BIGINT,
	"consumer_id" BIGINT,
	"business_category" VARCHAR,
	"business_type" VARCHAR,
	"business_turnover" BIGINT,
	"capital_invested" BIGINT,
	"total_employees" BIGINT,
	"business_value" BIGINT,
	"business_age" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "property" (
	"id" BIGINT,
	"business_id" BIGINT,
	"consumer_id" BIGINT,
	"insurance_type" VARCHAR,
	"building_sqft" VARCHAR,
	"building_type" VARCHAR,
	"building_storeys" VARCHAR,
	"building_age" BIGINT,
	"property_value" BIGINT,
	"cost_of_the_asset" BIGINT,
	"salvage_value" BIGINT,
	"useful_life_of_the_asset" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "consumer" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"dob" VARCHAR,
	"business_name" VARCHAR,
	"pan_details" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"website" VARCHAR,
	"business_overview" VARCHAR,
	"validity_of_consumer" VARCHAR,
	"agent_name" VARCHAR,
	"agent_id" BIGINT,
	 PRIMARY KEY ("id")
);
